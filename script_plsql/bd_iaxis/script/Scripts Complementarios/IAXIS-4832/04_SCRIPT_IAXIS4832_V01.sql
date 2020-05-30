/* Formatted on 05/09/2019 17:30*/
/* **************************** 05/09/2019 17:30 **********************************************************************
Versión           Descripción
01.               - Se crea la secuencia para tipos de documentos "Sin definir"
IAXIS-4832        05/09/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
CREATE SEQUENCE scodsd
MINVALUE 0
MAXVALUE 9999999999
START WITH 1
INCREMENT BY 1
NOCACHE;
--
GRANT SELECT ON scodsd TO r_axis;
/
