/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script agrega las columnas TITCDT y NITTIT a la tabla CTGAR_DET.          
********************************************************************************************************************** */
  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('CTGAR_DET','TITCDT');
ALTER TABLE CTGAR_DET ADD (TITCDT VARCHAR2 (200));

  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('CTGAR_DET','NITTIT');
ALTER TABLE CTGAR_DET ADD (NITTIT VARCHAR2 (50));

