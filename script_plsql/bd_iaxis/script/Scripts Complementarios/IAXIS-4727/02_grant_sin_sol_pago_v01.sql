/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-4186 TABLA PAGO CON SOLIDARIDAD SINIESTROS
   IAXIS-4186 -  TABLA PAGO CON SOLIDARIDAD SINIESTROS 02/07/2019 AABC
***********************************************************************************************************************/
--  
create or replace synonym AXIS00.SIN_SOLIDARIDAD_PAGO
  for AXIS.SIN_SOLIDARIDAD_PAGO; 
--

/* granting access to user for select , insert and all operations*/

GRANT SELECT, INSERT, UPDATE, DELETE ON  SIN_SOLIDARIDAD_PAGO TO r_axis;
/