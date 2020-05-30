/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script actualiza la tabla prod_plant_cab.       
********************************************************************************************************************** */

update prod_plant_cab
set tcopias = 'pac_impresion_conf.f_coacedido'
where ccodplan = 'CONF000003';

update prod_plant_cab
set tcopias = 'pac_impresion_conf.f_val_consorcio'
where ccodplan = 'CONF000002';

COMMIT;
/