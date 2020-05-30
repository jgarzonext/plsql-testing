/* Formatted on 09/07/2019 11:09*/
/* **************************** 09/07/2019 11:09 **********************************************************************
Versión           Descripción
01.               -Script de creación de la tabla adm_observa_outsourcing que relaciona el outsourcing con la tabla de
                   observaciones.
IAXIS-3651         09/07/2019 Daniel Rodríguez
***********************************************************************************************************************/

DROP TABLE adm_observa_outsourcing ;

  CREATE TABLE adm_observa_outsourcing 
   (idobs NUMBER NOT NULL ENABLE, 
    nit   VARCHAR2(30 BYTE));
  
   COMMENT ON COLUMN adm_observa_outsourcing.idobs IS 'Id de la observacion en la tabla agd_observaciones';
   COMMENT ON COLUMN adm_observa_outsourcing.nit IS 'NIT del outsourcing que hizo la gestión';
   /
  
