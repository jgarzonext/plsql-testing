/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script agrega la columna CORIGENFON a la tabla DATSARLATF.          
********************************************************************************************************************** */
  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('DATSARLATF','CORIGENFON');
ALTER TABLE DATSARLATF ADD (CORIGENFON VARCHAR2 (4000));