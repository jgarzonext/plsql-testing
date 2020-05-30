--------------------------------------------------------
--  DDL for Type OB_IAX_BF_VERSIONGRUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_VERSIONGRUP" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_coacedido
   PROPÓSITO:  Contiene la información del tipo detalle de coaseguro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creación del objeto.
******************************************************************************/
(
   cempres        NUMBER,
   tempres        VARCHAR2(100),
   cgrup          NUMBER,
   cversion       NUMBER,
   tgrup          VARCHAR2(50),
   fdesde         DATE,
   fhasta         DATE,
   CONSTRUCTOR FUNCTION ob_iax_bf_versiongrup
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BF_VERSIONGRUP" AS
   CONSTRUCTOR FUNCTION ob_iax_bf_versiongrup
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_VERSIONGRUP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_VERSIONGRUP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_VERSIONGRUP" TO "PROGRAMADORESCSI";
