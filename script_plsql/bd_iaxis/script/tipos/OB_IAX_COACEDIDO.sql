--------------------------------------------------------
--  DDL for Type OB_IAX_COACEDIDO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_COACEDIDO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_coacedido
   PROPÓSITO:  Contiene la información del tipo detalle de coaseguro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/08/2012   DCG                1. Creación del objeto.
******************************************************************************/
(
   ccompan        NUMBER,
   tcompan        VARCHAR2(50),
   pcomcoa        NUMBER,
   pcomgas        NUMBER,
   pcomcon        NUMBER,
   pcescoa        NUMBER,
   pcesion        NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_coacedido
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_COACEDIDO" AS
   CONSTRUCTOR FUNCTION ob_iax_coacedido
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_COACEDIDO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COACEDIDO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COACEDIDO" TO "PROGRAMADORESCSI";
