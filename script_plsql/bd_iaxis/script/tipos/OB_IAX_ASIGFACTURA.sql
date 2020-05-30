--------------------------------------------------------
--  DDL for Type OB_IAX_ASIGFACTURA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_ASIGFACTURA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_IMPRESION
   PROPÓSITO:  Contiene información de los documentos impresos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        28/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(
   ccaperta       VARCHAR2(100),   -- Codigo carpeta
   sfactura       NUMBER,   -- Numero inicial factura
   ninicio        NUMBER,   -- Numero inicial folio
   nfinal         NUMBER,   -- Numero final folio
   lista_error    t_iax_info,   -- Folios con error
   CONSTRUCTOR FUNCTION ob_iax_asigfactura
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_ASIGFACTURA" AS
   CONSTRUCTOR FUNCTION ob_iax_asigfactura
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccaperta := '';
      SELF.sfactura := '';
      SELF.ninicio := '';
      SELF.nfinal := '';
      SELF.lista_error := t_iax_info();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_ASIGFACTURA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ASIGFACTURA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ASIGFACTURA" TO "PROGRAMADORESCSI";
