/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script agrega la columna CLAVEINTER a la tabla MIG_AGENTES.          
********************************************************************************************************************** */
  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('MIG_AGENTES','CLAVEINTER');
ALTER TABLE MIG_AGENTES ADD (CLAVEINTER VARCHAR2 (10));