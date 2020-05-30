--------------------------------------------------------
--  DDL for View VI_CTA_ASEG_PPJ
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_CTA_ASEG_PPJ" ("CODI", "PRODUCTE", "POLISSA", "POLISSA ANTIGA", "DATA EFEC", "DATA ANUL", "DATA VENC", "SITACIO POL", "TIPOS REVAL", "% REVAL", "DATA NAIX", "SEXE", "LINIA", "DATA MOV", "MOVIM", "MOV CTA ASEG", "IMPORT", "CAP GARANTIT", "CAP FALLECIM", "SSEGURO", "YYYYMM", "P1021", "P1022", "P1023", "P1024", "OFICINA", "PARTICIPACIONS") AS 
  SELECT   s.sproduc, v.ttitulo, s.npoliza, c.polissa_ini, s.fefecto,
            s.fanulac, s.fvencim, d3.tatribu, d2.tatribu, s.prevali,
            p.fnacimi, p.csexper, t.nnumlin, t.fvalmov, t.cmovimi, d.tatribu,
            TO_CHAR (t.imovimi, '9999999990.99') imovimi,
            TO_CHAR (tt.ccapgar, '9999999990.99') ccapgar,
            TO_CHAR (tt.ccapfal, '9999999990.99') ccapfal, s.sseguro,
            TO_CHAR (s.fefecto, 'YYYYMM') DATA,
            DECODE ((SELECT MAX (crespue)
                       FROM pregunseg
                      WHERE pregunseg.sseguro = s.sseguro
                        AND pregunseg.cpregun = 1021
                        AND pregunseg.nmovimi =
                               (SELECT MAX (pregunseg2.nmovimi)
                                  FROM pregunseg pregunseg2
                                 WHERE pregunseg2.sseguro = pregunseg.sseguro
                                   AND pregunseg2.cpregun = pregunseg.cpregun)),
                    0, 'N',
                    1, 'S'
                   ) p1021,
            DECODE ((SELECT MAX (crespue)
                       FROM pregunseg
                      WHERE pregunseg.sseguro = s.sseguro
                        AND pregunseg.cpregun = 1022
                        AND pregunseg.nmovimi =
                               (SELECT MAX (pregunseg2.nmovimi)
                                  FROM pregunseg pregunseg2
                                 WHERE pregunseg2.sseguro = pregunseg.sseguro
                                   AND pregunseg2.cpregun = pregunseg.cpregun)),
                    0, 'N',
                    1, 'S'
                   ) p1022,
            DECODE ((SELECT MAX (crespue)
                       FROM pregunseg
                      WHERE pregunseg.sseguro = s.sseguro
                        AND pregunseg.cpregun = 1023
                        AND pregunseg.nmovimi =
                               (SELECT MAX (pregunseg2.nmovimi)
                                  FROM pregunseg pregunseg2
                                 WHERE pregunseg2.sseguro = pregunseg.sseguro
                                   AND pregunseg2.cpregun = pregunseg.cpregun)),
                    0, 'N',
                    1, 'S'
                   ) p1023,
            DECODE ((SELECT MAX (crespue)
                       FROM pregunseg
                      WHERE pregunseg.sseguro = s.sseguro
                        AND pregunseg.cpregun = 1024
                        AND pregunseg.nmovimi =
                               (SELECT MAX (pregunseg2.nmovimi)
                                  FROM pregunseg pregunseg2
                                 WHERE pregunseg2.sseguro = pregunseg.sseguro
                                   AND pregunseg2.cpregun = pregunseg.cpregun)),
                    0, 'N',
                    1, 'S'
                   ) p1024,
            s.cagente, 
            --TO_CHAR (t.nunidad, '9999999990.999999') nunidad
            t.nunidad
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
        AND t.sseguro = tt.sseguro
        AND t.nnumlin = tt.nnumlin
        AND d3.cidioma = 1
        AND d3.cvalor = 61                                  --situación poliza
        AND d3.catribu = s.csituac
        AND d.cidioma = 1
        AND d.cvalor = 83                                      --cuenta seguro
        AND d.catribu = t.cmovimi
        AND d2.cidioma = 1
        AND d2.cvalor = 279                                  --tipos revaloriz
        AND d2.catribu = s.crevali
   ORDER BY s.npoliza, t.nnumlin 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_CTA_ASEG_PPJ" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CTA_ASEG_PPJ" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_CTA_ASEG_PPJ" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_CTA_ASEG_PPJ" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CTA_ASEG_PPJ" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_CTA_ASEG_PPJ" TO "PROGRAMADORESCSI";
