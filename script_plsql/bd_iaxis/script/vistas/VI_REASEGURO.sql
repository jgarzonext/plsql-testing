--------------------------------------------------------
--  DDL for View VI_REASEGURO
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_REASEGURO" ("FCIERRE", "COMPANYIA", "AGR_PRODUCTO", "TIPUS", "IMPORT_CEDIT", "POLISSA") AS 
  SELECT   TO_CHAR (r.fcierre, 'YYYYMM') fcierre, c.tcompani,
            v.ttitulo agr_producto,
            DECODE (r.ctramo,
                    2, 'Primer excedent',
                    1, 'Quota part',
                    5, 'Facultatiu',
                    r.ctramo
                   ),
            SUM (r.icesion * DECODE (codtipo, 2, -1, 1)) cedit, s.npoliza
       FROM v_productos v, companias c, reaseguro r, seguros s
      WHERE c.ccompani = r.ccompani
        AND v.sproduc = s.sproduc
        AND s.sseguro = r.sseguro
   GROUP BY TO_CHAR (r.fcierre, 'YYYYMM'),
            --  r.ccompani,
            r.ctramo,
            v.ttitulo,
            c.tcompani,
            s.npoliza 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_REASEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REASEGURO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_REASEGURO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_REASEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REASEGURO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_REASEGURO" TO "PROGRAMADORESCSI";
