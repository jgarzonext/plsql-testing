--------------------------------------------------------
--  DDL for View VI_EMITIDOS_ANULADOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_EMITIDOS_ANULADOS" ("CODI", "AGR_PRODUCTE", "REBUT", "POLISSA", "POLISSA_HOST", "AGENT", "SUBAGENT", "PRENEDOR", "DATA_EFECTE", "DATA_VENCIM", "DATA_TANCAMENT", "ESTAT", "PRIMA_NETA", "PRIMA_BRUTA", "COMISSIO", "MES_TANCAMENT") AS 
  SELECT   s.sproduc codigo, p.ttitulo agr_producto, r.nrecibo,
            s.npoliza || '-' || s.ncertif, c.polissa_ini, s.cagente,
            (SELECT p.trespue
               FROM pregunpolseg p
              WHERE p.cpregun = 692
                AND p.sseguro = s.sseguro
                AND p.nmovimi IN (
                             SELECT MAX (p2.nmovimi)
                               FROM pregunpolseg p2
                              WHERE p2.cpregun = 692
                                    AND p2.sseguro = s.sseguro)),
               d.tnombre
            || DECODE (d.tapelli1, NULL, NULL, ' ')
            || d.tapelli1
            || DECODE (d.tapelli2, NULL, NULL, ' ')
            || d.tapelli2 nombre,
            TO_CHAR (r.fefecto, 'YYYY/MM/DD'),
            TO_CHAR (r.fvencim, 'YYYY/MM/DD'),
            TO_CHAR (m.fefeadm, 'YYYY/MM/DD'),
            DECODE (m.cestrec, 2, 'ANUL-LAT', 'EMES'),
            SUM (  v.iprinet
                 * DECODE (m.cestrec, 0, -1, 1)
                 * DECODE (r.ctiprec, 9, -1, 1)
                ),
            SUM (  v.itotalr
                 * DECODE (m.cestrec, 0, -1, 1)
                 * DECODE (r.ctiprec, 9, -1, 1)
                ),
            SUM (  v.icombru
                 * DECODE (m.cestrec, 0, -1, 1)
                 * DECODE (r.ctiprec, 9, -1, 1)
                ),
            TO_CHAR (m.fefeadm, 'YYYY/MM')
       FROM cnvpolizas c,
            per_detper d,
            tomadores t,
            movrecibo m,
            agentes a,
            v_productos p,
            vdetrecibos v,
            recibos r,
            seguros s
      WHERE c.sseguro(+) = s.sseguro
        AND v.itotalr != 0
        AND d.sperson = t.sperson
        AND d.cagente IN (SELECT MAX (x.cagente)
                            FROM per_detper x
                           WHERE x.sperson = d.sperson)
        AND t.sseguro = s.sseguro
        AND m.nrecibo = r.nrecibo
        AND (   (m.cestrec = 0 AND m.cestant = 1)
             OR (m.cestrec = 1 AND m.cestant = 0)
            )
        AND a.cagente = s.cagente
        AND p.sproduc = s.sproduc
        AND v.nrecibo = r.nrecibo
        AND s.sseguro = r.sseguro
        AND s.cagente BETWEEN 40 AND 50
        AND NOT EXISTS (SELECT 1
                          FROM vi_certificados_0 v0
                         WHERE v0.sseguro = s.sseguro)
   GROUP BY s.sproduc,
            p.ttitulo,
            r.nrecibo,
            s.npoliza || '-' || s.ncertif,
            c.polissa_ini,
            s.cagente,
               d.tnombre
            || DECODE (d.tapelli1, NULL, NULL, ' ')
            || d.tapelli1
            || DECODE (d.tapelli2, NULL, NULL, ' ')
            || d.tapelli2,
            TO_CHAR (r.fefecto, 'YYYY/MM/DD'),
            TO_CHAR (r.fvencim, 'YYYY/MM/DD'),
            TO_CHAR (m.fefeadm, 'YYYY/MM/DD'),
            DECODE (m.cestrec, 2, 'ANUL-LAT', 'EMES'),
            TO_CHAR (m.fefeadm, 'YYYY/MM'),
            s.sseguro 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_EMITIDOS_ANULADOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_EMITIDOS_ANULADOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_EMITIDOS_ANULADOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_EMITIDOS_ANULADOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_EMITIDOS_ANULADOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_EMITIDOS_ANULADOS" TO "PROGRAMADORESCSI";
