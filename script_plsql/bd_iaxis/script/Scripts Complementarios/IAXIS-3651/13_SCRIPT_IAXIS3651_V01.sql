/* Formatted on 15/07/2019 15:15*/
/* **************************** 15/07/2019 15:15 **********************************************************************
Versión           Descripción
                  -Inserta porcentajes de prueba para el outsourcing Serviefectivo.
IAXIS-3651         15/07/2019 Daniel Rodríguez
***********************************************************************************************************************/
 --
 DELETE FROM ADM_OUT_PORCENTAJES 
  WHERE NIT = '8000627829';
 --
 INSERT INTO ADM_OUT_PORCENTAJES VALUES ('8000627829',0.19,0.11,0.02850,0.0069);
 --
 COMMIT;
 --
/
