--------------------------------------------------------
--  DDL for View VI_PRODDOMIS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_PRODDOMIS" ("FEFECTE", "CODI", "PRODUCTE", "TOTAL_PRIMES") AS 
  SELECT   /*+rule*/
            TO_CHAR (d.fefecto, 'yyyymm') fefecto, p.sproduc, p.ttitulo,
            SUM (itotalr) prima_total
       FROM v_productos p,
            seguros s,
            vdetrecibos v,
            recibos r,
            domiciliaciones d
      WHERE p.sproduc = s.sproduc
        AND d.nrecibo = r.nrecibo
        AND v.nrecibo = r.nrecibo
        AND s.sseguro = r.sseguro
   GROUP BY TO_CHAR (d.fefecto, 'yyyymm'), p.sproduc, p.ttitulo 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_PRODDOMIS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_PRODDOMIS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_PRODDOMIS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_PRODDOMIS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_PRODDOMIS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_PRODDOMIS" TO "PROGRAMADORESCSI";
