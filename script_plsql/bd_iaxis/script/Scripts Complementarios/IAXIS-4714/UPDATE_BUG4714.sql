
   DELETE  FROM sin_gar_causa WHERE SPRODUC=80038 AND CGARANT=7783 AND CACTIVI= 0 AND CCAUSIN=9203;
   DELETE  FROM sin_gar_causa WHERE SPRODUC=80038 AND CGARANT=7784 AND CACTIVI= 0 AND CCAUSIN=9203;
   
   UPDATE AXIS_LITERALES SET TLITERA='Fecha Transaccion' WHERE SLITERA=9000910;
   UPDATE AXIS_LITERALES SET TLITERA='Importe Moneda' WHERE SLITERA=89906337;

 
  INSERT INTO sin_gar_causa (SPRODUC,CACTIVI,CGARANT,CCAUSIN,CMOTSIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,NUMSINI) 
  VALUES(80038,0,7783,9203,0,'AXIS_CONF', TO_DATE('30-MAY-19'),  NULL,NULL,NULL);
  INSERT INTO sin_gar_causa (SPRODUC,CACTIVI,CGARANT,CCAUSIN,CMOTSIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,NUMSINI) 
  VALUES(80038,0,7784,9203,0,'AXIS_CONF', TO_DATE('30-MAY-19'),  NULL,NULL,NULL);
  

COMMIT;