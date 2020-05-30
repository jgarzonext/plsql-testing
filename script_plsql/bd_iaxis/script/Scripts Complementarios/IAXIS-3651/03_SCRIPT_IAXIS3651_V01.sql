/* Formatted on 09/07/2019 11:09*/
/* **************************** 09/07/2019 11:09 **********************************************************************
Versión           Descripción
01.               -Script de creación de la tabla ADM_OUT_PORCENTAJES que contiene los porcentajes del outsourcing.
                  -Inserta porcentajes de prueba para el outsourcing Serviefectivo.
IAXIS-3651         09/07/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
DROP TABLE ADM_OUT_PORCENTAJES;
--
  CREATE TABLE ADM_OUT_PORCENTAJES
   (nit        VARCHAR2(30 BYTE), 
	  iva        NUMBER(6,5), 
  	retefuente NUMBER(6,5), 
    reteiva    NUMBER(6,5),
	reteica      NUMBER(6,5));
  -- Porcentajes de Outsourcing de ejemplo. Outsourcing Serviefectivo
  INSERT INTO ADM_OUT_PORCENTAJES VALUES ('8000627829',0.19000,0.02090,0.02850,0.00644);
  --
  COMMIT;
  / 
  
