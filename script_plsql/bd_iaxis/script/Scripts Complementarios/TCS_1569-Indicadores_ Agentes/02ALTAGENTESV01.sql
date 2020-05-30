/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script agrega las columnas CDESCRIIVA, DESCRICRETENC, DESCRIFUENTE y CDESCRIICA a la tabla AGENTES.          
********************************************************************************************************************** */
  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('AGENTES','CDESCRIIVA');
ALTER TABLE AGENTES ADD (CDESCRIIVA VARCHAR2 (200));

  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('AGENTES','DESCRICRETENC');
ALTER TABLE AGENTES ADD (DESCRICRETENC VARCHAR2 (200));

  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('AGENTES','DESCRIFUENTE');
ALTER TABLE AGENTES ADD (DESCRIFUENTE VARCHAR2 (100));

  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('AGENTES','CDESCRIICA');
ALTER TABLE AGENTES ADD (CDESCRIICA VARCHAR2 (100));



