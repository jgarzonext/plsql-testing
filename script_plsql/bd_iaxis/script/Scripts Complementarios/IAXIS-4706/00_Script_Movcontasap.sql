/* *******************************************************************************************************************
Versión  Descripción
        
01.    Este script agrega la columna CTIPREC_1 a la tabla MOVCONTASAP. 
      PARA MODIFICAR EL TIPO DE DATO DE LA COLUMNA  CTIPREC   
********************************************************************************************************************** */
ALTER TABLE MOVCONTASAP ADD (CTIPREC_1 VARCHAR2 (4));
COMMIT;
/
BEGIN

  UPDATE MOVCONTASAP SET CTIPREC_1 = CTIPREC; 
   COMMIT;
 
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
BEGIN

  UPDATE MOVCONTASAP SET CTIPREC = NULL; 
 COMMIT;
 
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
ALTER TABLE MOVCONTASAP MODIFY CTIPREC VARCHAR2(4);
COMMIT;
/
BEGIN

  UPDATE MOVCONTASAP SET CTIPREC = CTIPREC_1;  
  COMMIT;
 
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
ALTER TABLE MOVCONTASAP DROP COLUMN CTIPREC_1;
COMMIT;
/



