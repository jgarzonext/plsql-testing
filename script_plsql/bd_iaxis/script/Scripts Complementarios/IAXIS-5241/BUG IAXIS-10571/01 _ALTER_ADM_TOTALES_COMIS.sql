/*********************************************************************************************************************** 
   Formatted on 24/03/2020   
   Version   Descripcion 
   01.       IAXIS-10571 adm_totales_comis 
             IAXIS-10571 -  TABLA adm_totales_comis  
***********************************************************************************************************************/
--  
create or replace synonym AXIS00.adm_totales_comis
  for AXIS.adm_totales_comis; 
--

/* granting access to user for select , insert and all operations*/

GRANT SELECT, INSERT, UPDATE, DELETE ON  adm_totales_comis TO r_axis;
GRANT SELECT, INSERT, UPDATE, DELETE ON  adm_totales_comis TO AXIS00;
/