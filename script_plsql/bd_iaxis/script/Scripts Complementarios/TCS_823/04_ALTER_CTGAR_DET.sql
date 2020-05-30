/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script agrega la columna SPERFIDE a la tabla CTGAR_DET.          
********************************************************************************************************************** */
  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('CTGAR_DET','SPERFIDE');
ALTER TABLE CTGAR_DET ADD (SPERFIDE VARCHAR2 (50));