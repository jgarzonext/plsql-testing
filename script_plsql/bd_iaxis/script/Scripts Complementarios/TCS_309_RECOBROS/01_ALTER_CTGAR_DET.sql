/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script agrega la columna NSINIES a la tabla CTGAR_DET.          
********************************************************************************************************************** */
  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('CTGAR_DET','NSINIES');
ALTER TABLE CTGAR_DET ADD (NSINIES NUMBER(8,0));

  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('CTGAR_DET','PORCENTAJE');
ALTER TABLE CTGAR_DET ADD (PORCENTAJE NUMBER(3,0));

  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('CTGAR_DET','FOBLIG');
ALTER TABLE CTGAR_DET ADD (FOBLIG DATE);

  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('CTGAR_DET','CCUENTA');
ALTER TABLE CTGAR_DET ADD (CCUENTA NUMBER(1,0));

  EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('CTGAR_DET','NCUENTA');
ALTER TABLE CTGAR_DET ADD (NCUENTA VARCHAR2(50));