--------------------------------------------------------
--  DDL for View VI_ALTAS_MES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_ALTAS_MES" ("MESANY", "CODPRODUCTE", "NOM_PRODUCTE", "CODI_RAM", "NOM_RAM", "POLISSA", "EFECTE", "ANULACIO", "NUMIDE", "SNIP", "NEIXAMENT", "SEXE", "AGENT", "CBANCAR", "GESTOR_OFERTA", "GESTOR_VENDA", "USUARI", "ASSEGURATS", "COL·LECTIU", "FONS", "ASSEGURAT", "APORTACIO", "PERIODICITAT") AS 
  SELECT   TO_CHAR (m.femisio, 'MMYYYY') mesany, s.sproduc codproducte,
            t.trotulo nom_producte, s.cramo codi_ram, r.tramo nom_ram,
            s.npoliza || '-' || s.ncertif polissa,
            TO_CHAR (s.fefecto, 'dd/mm/yyyy') efecte,
            TO_CHAR (s.fanulac, 'dd/mm/yyyy') anulacio, pe.nnumide numide,
            pe.snip snip, TO_CHAR (pe.fnacimi, 'dd/mm/yyyy') neixament,
            DECODE (pe.csexper, 1, 'Home', 2, 'Dona', '-') sexe,
            s.cagente AGENT, s.cbancar cbancar, p1.trespue gestor_oferta,
            p2.trespue gestor_venda, m.cusumov usuari, x.riesgos,
            (SELECT    p.tapelli1
                    || ' '
                    || p.tapelli2
                    || ' '
                    || p.tnombre
               FROM per_detper p, tomadores o, vi_certificados_0 v
              WHERE v.npoliza = s.npoliza
                AND o.sseguro = v.sseguro
                AND p.sperson = o.sperson
                AND ROWNUM = 1
--> Certif 0 solo tienen un tomador y los mismos datos para los diferencies CAGENTE por
--> lo que nos ahorramos tener que hacer MAX de TOMADORES.NORDTOM y PER_DETPER.CAGENTE
--> que nos evite los posibles duplicados.
            ) col_lectiu,
            (SELECT f.tfonabv
--> Aunque la tabla va por riesgos siempre es la misma cesta por póliza
             FROM   fondos f, segdisin2 z
              WHERE z.nmovimi IN (
                       SELECT MAX (x.nmovimi)
                         FROM segdisin2 x
                        WHERE x.sseguro = z.sseguro
                          AND x.nriesgo = z.nriesgo)
                AND f.ccodfon = z.ccesta
                AND ROWNUM = 1
                AND z.nriesgo = 1
                AND z.sseguro = s.sseguro
                AND s.sproduc IN (80, 81)) fondo,
            (SELECT 'ASSEGURAT'
               FROM garanseg p
              WHERE s.sseguro = p.sseguro
                AND p.ffinefe IS NULL
                AND p.cgarant = 60
                AND p.nriesgo = 1
                AND s.sproduc IN (80, 81)) assegurat,
            (SELECT p.icapital
               FROM garanseg p
              WHERE s.sseguro = p.sseguro
                AND p.ffinefe IS NULL
                AND p.cgarant = 48
                AND p.nriesgo = 1
                                 --   AND s.sproduc IN (80, 81)
            ) aportacio,
            d.tatribu periodicidad
       FROM seguros s,
            detvalores d,
            movseguro m,
            titulopro t,
            ramos r,
            pregunpolseg p1,
            pregunpolseg p2,
            per_personas pe,
            tomadores tt,
            (SELECT   sseguro, COUNT (1) riesgos
                 FROM riesgos
                WHERE fanulac IS NULL
             GROUP BY sseguro) x
      WHERE x.sseguro = s.sseguro
        AND d.cvalor = 17
        AND d.catribu = s.cforpag
        AND d.cidioma = 1
        AND m.sseguro = s.sseguro
        AND t.cramo = s.cramo
        AND t.cmodali = s.cmodali
        AND t.ctipseg = s.ctipseg
        AND t.ccolect = s.ccolect
        AND t.cidioma = 1
        AND s.cramo = r.cramo
        AND r.cidioma = 1
        AND s.sproduc != 550
        AND m.cmotmov = 100
        AND tt.sseguro = s.sseguro
        AND tt.nordtom = 1
        AND p1.sseguro(+) = m.sseguro
        AND p1.nmovimi(+) = m.nmovimi
        AND p1.cpregun(+) = 691
        AND p2.sseguro(+) = m.sseguro
        AND p2.nmovimi(+) = m.nmovimi
        AND p2.cpregun(+) = 692
        AND pe.sperson = tt.sperson
        AND NOT EXISTS (SELECT v0.sseguro
                          FROM vi_certificados_0 v0
                         WHERE v0.sseguro = s.sseguro)
        AND s.cempres = 1
   ORDER BY s.cramo, s.sproduc, s.cagente, s.npoliza, s.ncertif 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_ALTAS_MES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_ALTAS_MES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_ALTAS_MES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_ALTAS_MES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_ALTAS_MES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_ALTAS_MES" TO "PROGRAMADORESCSI";
