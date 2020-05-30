/* Formatted on 09/07/2019 11:09*/
/* **************************** 09/07/2019 11:09 **********************************************************************
Versión           Descripción
01.               -Script de creación de sinónimos para las tablas creadas
IAXIS-3651         09/07/2019 Daniel Rodríguez
***********************************************************************************************************************/
create or replace synonym AXIS00.adm_observa_outsourcing
  for AXIS.adm_observa_outsourcing;
--
grant select, insert, update, delete on adm_observa_outsourcing to R_AXIS;
--
create or replace synonym AXIS00.ADM_DET_COMISIONES
  for AXIS.ADM_DET_COMISIONES;
  
grant select, insert, update, delete on ADM_DET_COMISIONES to R_AXIS;
--
create or replace synonym AXIS00.ADM_OUT_PORCENTAJES
  for AXIS.ADM_OUT_PORCENTAJES;
  
grant select, insert, update, delete on ADM_OUT_PORCENTAJES to R_AXIS;
--
create or replace synonym AXIS00.ADM_INFORMACION_PAGOS
  for AXIS.ADM_INFORMACION_PAGOS;
--
grant select, insert, update, delete on ADM_INFORMACION_PAGOS to R_AXIS;
--
create or replace synonym AXIS00.ADM_OUT_TARIFAS
  for AXIS.ADM_OUT_TARIFAS;
--
grant select, insert, update, delete on ADM_OUT_TARIFAS to R_AXIS;
--
create or replace synonym AXIS00.ADM_DET_NOCOMISIONA
  for AXIS.ADM_DET_NOCOMISIONA;
--
grant select, insert, update, delete on ADM_DET_NOCOMISIONA to R_AXIS;
--
/	