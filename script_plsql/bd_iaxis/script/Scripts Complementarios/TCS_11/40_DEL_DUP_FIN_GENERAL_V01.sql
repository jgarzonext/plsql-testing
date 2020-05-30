/*
  TCS_11;IAXIS-2119 - JLTS - 10/03/2019 Se eliminan los datos duplicados de la tabla FIN_GENERAL, para que quede solo un dato por SPERSON
*/
-- Se selecionan el registro com mayor SFINANCI
DELETE
  FROM fin_general f1
 WHERE ROWID IN (SELECT MAX(ROWID) FROM fin_general f2 GROUP BY f2.sperson HAVING COUNT(*) > 1)
/
