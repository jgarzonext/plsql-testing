/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-3603 Permisos tabla SIN_TRAMITA_ESTSINIESTRO
   IAXIS-3603 -  Permisos tabla SIN_TRAMITA_ESTSINIESTRO 02/07/2019 AABC
***********************************************************************************************************************/
--  
create or replace synonym AXIS00.SIN_TRAMITA_ESTSINIESTRO
  for AXIS.SIN_TRAMITA_ESTSINIESTRO; 
--

/* granting access to user for select , insert and all operations*/

GRANT SELECT, INSERT, UPDATE, DELETE ON  SIN_TRAMITA_ESTSINIESTRO TO r_axis;
/