--------------------------------------------------------
--  DDL for View VI_POLIZAS_VENCEN
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_POLIZAS_VENCEN" ("CODI", "PRODUCTE", "POLISSA", "CERTIFICAT", "POLISSA ANTIGA", "DATA EFEC", "DATA ANUL", "DATA VENC", "SITACIO POL", "TIPOS REVAL", "% REVAL", "DATA NAIX", "SEXE", "DATA MOV", "MOVIM", "MOV CTA ASEG", "IMPORT", "CAP GARANTIT", "CAP FALLECIM", "COMPTE_ABONAMENT", "ANYS_GARANTITS", "TIPUS_PRESTACIO", "SSEGURO", "YYYYMM") AS 
  SELECT   s.sproduc, v.ttitulo, s.npoliza, s.ncertif, c.polissa_ini,
            s.fefecto, s.fanulac, s.fvencim, d3.tatribu, d2.tatribu,
            s.prevali, p.fnacimi, p.csexper, t.fvalmov, t.cmovimi, d.tatribu,
            t.imovimi, tt.ccapgar, tt.ccapfal,
            (SELECT p3.trespue
               FROM pregunpolseg p3
              WHERE p3.cpregun = 9001
                AND p3.sseguro = s.sseguro
                AND p3.nmovimi IN (
                              SELECT MAX (x.nmovimi)
                                FROM pregunpolseg x
                               WHERE x.cpregun = 9001
                                     AND x.sseguro = s.sseguro))
                                                             compte_abonament,
            (SELECT r2.trespue
               FROM pregunpolseg p2, respuestas r2
              WHERE r2.cidioma = 1
                AND r2.crespue = p2.crespue
                AND r2.cpregun = p2.cpregun
                AND p2.cpregun = 558
                AND p2.sseguro = s.sseguro
                AND p2.nmovimi IN (
                               SELECT MAX (x.nmovimi)
                                 FROM pregunpolseg x
                                WHERE x.cpregun = 558
                                      AND x.sseguro = s.sseguro))
                                                               anys_garantits,
            (SELECT r1.trespue
               FROM pregunpolseg p1, respuestas r1
              WHERE r1.cidioma = 1
                AND r1.crespue = p1.crespue
                AND r1.cpregun = p1.cpregun
                AND p1.cpregun = 557
                AND p1.sseguro = s.sseguro
                AND p1.nmovimi IN (
                               SELECT MAX (x.nmovimi)
                                 FROM pregunpolseg x
                                WHERE x.cpregun = 557
                                      AND x.sseguro = s.sseguro))
                                                              tipus_prestacio,
            s.sseguro, TO_CHAR (s.fefecto, 'YYYYMM') DATA
       FROM v_productos v,
            seguros s,
            cnvpolizas c,
            per_personas p,
            riesgos r,
            ctaseguro t,
            ctaseguro_libreta tt,
            detvalores d,
            detvalores d2,
            detvalores d3
      WHERE v.sproduc = s.sproduc
        AND s.sseguro = c.sseguro(+)
        AND s.sseguro = r.sseguro
        AND r.sperson = p.sperson
        AND t.sseguro = s.sseguro
        AND t.nnumlin = (SELECT MAX (nn.nnumlin)
                           FROM ctaseguro nn
                          WHERE nn.sseguro = t.sseguro AND nn.cmovimi = 0)
        AND t.sseguro = tt.sseguro
        AND t.nnumlin = tt.nnumlin
        AND s.csituac <> 2
        AND d3.cidioma = 1
        AND d3.cvalor = 61                                  --situación poliza
        AND d3.catribu = s.csituac
        AND d.cidioma = 1
        AND d.cvalor = 83                                      --cuenta seguro
        AND d.catribu = t.cmovimi
        AND d2.cidioma = 1
        AND d2.cvalor = 279                                  --tipos revaloriz
        AND d2.catribu = s.crevali
        AND s.fvencim BETWEEN f_sysdate AND ADD_MONTHS (f_sysdate, 3)
   ORDER BY s.npoliza, t.nnumlin 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_POLIZAS_VENCEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VENCEN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_POLIZAS_VENCEN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_POLIZAS_VENCEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VENCEN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VENCEN" TO "PROGRAMADORESCSI";
