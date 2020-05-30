--------------------------------------------------------
--  DDL for View VI_PRIMA_MUERTE_080_081
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_PRIMA_MUERTE_080_081" ("POLISSA", "REBUT", "DATA EFEC", "DATA COMPTABLE", "IMPORT TOTAL") AS 
  SELECT   s.npoliza, r.nrecibo, r.fefecto,
            TO_CHAR (m.fefeadm, 'yyyymm') mes_contab,
            SUM (DECODE (r.ctiprec, 9, -iconcep, iconcep)) importe_total
       FROM seguros s, recibos r, movrecibo m, detrecibos d
      WHERE s.sseguro = r.sseguro
        AND m.nrecibo = r.nrecibo
        AND d.nrecibo = r.nrecibo
        AND s.sproduc IN (80, 81)
        AND m.cestrec = 1
        AND m.cestant = 0
        AND d.cgarant = 60
        AND d.cconcep IN (0, 4)
   GROUP BY s.npoliza, r.nrecibo, r.fefecto, TO_CHAR (m.fefeadm, 'yyyymm') 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_PRIMA_MUERTE_080_081" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_PRIMA_MUERTE_080_081" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_PRIMA_MUERTE_080_081" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_PRIMA_MUERTE_080_081" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_PRIMA_MUERTE_080_081" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_PRIMA_MUERTE_080_081" TO "PROGRAMADORESCSI";
