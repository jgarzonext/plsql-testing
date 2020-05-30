/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script agrega la columna CLAVEINTER a la tabla AGENTES.          
********************************************************************************************************************** */
  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('AGENTES','CLAVEINTER');
ALTER TABLE AGENTES ADD (CLAVEINTER VARCHAR2 (10));