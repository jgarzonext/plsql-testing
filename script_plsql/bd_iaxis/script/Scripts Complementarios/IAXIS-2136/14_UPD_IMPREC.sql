/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en la tabla IMPREC para el concepto 14.          
********************************************************************************************************************** */

UPDATE IMPREC
SET NVALCON = 12000
WHERE CCONCEP = 14
AND NVALCON = 7000;

COMMIT;
/