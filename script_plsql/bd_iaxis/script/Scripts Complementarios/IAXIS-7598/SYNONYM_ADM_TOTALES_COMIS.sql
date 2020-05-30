/*********************************************************************************************************************** 
   FORMATTED ON 07/04/2020   
   VERSION   DESCRIPCION 
   01.       IAXIS-7598 ADM_TOTALES_COMIS 
***********************************************************************************************************************/
--  
CREATE OR REPLACE SYNONYM AXIS00.INT_SERVICIO_DETAIL FOR AXIS.INT_SERVICIO_DETAIL; 
--
/* GRANTING ACCESS TO USER FOR SELECT , INSERT AND ALL OPERATIONS*/
GRANT SELECT, INSERT, UPDATE, DELETE ON  INT_SERVICIO_DETAIL TO R_AXIS;
GRANT SELECT, INSERT, UPDATE, DELETE ON  INT_SERVICIO_DETAIL TO AXIS00;
/
