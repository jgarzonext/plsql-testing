/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script borra en la tabla prod_plant_cab el certificado de pago para productos con CA.          
********************************************************************************************************************** */

DELETE FROM prod_plant_cab
WHERE ccodplan = 'CONF000001'
AND SPRODUC IN (80004, 80005, 80006, 80007, 80008, 80010, 80011);

COMMIT;
/