/* Formatted on 2019/09/05 17:22 (Formatter Plus v4.8.8) */
UPDATE sgt_subtabs_det
   SET nval1 = 100 + nval1
 WHERE csubtabla = '8000047' AND nval1 < 100
 and ccla1 not in (80007,80008,80009, 80010);

UPDATE sgt_subtabs_det
   SET nval1 = 200
 WHERE csubtabla = '8000047' AND nval1 > 2009.67829230193 and ccla1 not in (80007,80008,80009, 80010);

COMMIT ;