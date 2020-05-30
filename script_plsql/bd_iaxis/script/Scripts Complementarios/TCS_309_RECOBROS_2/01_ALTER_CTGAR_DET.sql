/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script agrega la columna TEXPAGARE a la tabla CTGAR_DET.          
********************************************************************************************************************** */
  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('CTGAR_DET','TEXPAGARE');
ALTER TABLE CTGAR_DET ADD (TEXPAGARE VARCHAR2(500));

  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('CTGAR_DET','TEXIDEN');
ALTER TABLE CTGAR_DET ADD (TEXIDEN VARCHAR2(100));

