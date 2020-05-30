/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script actualiza la tabla prod_plant_cab.       
********************************************************************************************************************** */

UPDATE prod_plant_cab
SET ccodplan = 'CONF800104'
WHERE sproduc = 80007
and ccodplan = 'CONF800101';

UPDATE prod_plant_cab
SET ccodplan = 'CONF800104'
WHERE sproduc = 80008
and ccodplan = 'CONF800101';
   COMMIT;
/