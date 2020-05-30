/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script actualiza la tabla prod_plant_cab.       
********************************************************************************************************************** */

UPDATE prod_plant_cab
SET ccodplan = 'CONF800105'
WHERE sproduc = 80005
and ccodplan = 'CONF800101';

UPDATE prod_plant_cab
SET ccodplan = 'CONF800105'
WHERE sproduc = 80006
and ccodplan = 'CONF800101';

UPDATE prod_plant_cab
SET ccodplan = 'CONF800105'
WHERE sproduc = 80002
and ccodplan = 'CONF800101';

UPDATE prod_plant_cab
SET ccodplan = 'CONF800105'
WHERE sproduc = 80003
and ccodplan = 'CONF800101';
   
COMMIT;
/