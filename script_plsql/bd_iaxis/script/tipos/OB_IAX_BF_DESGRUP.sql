--------------------------------------------------------
--  DDL for Type OB_IAX_BF_DESGRUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_DESGRUP" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BF_DESGRUP
   PROPÓSITO:  Contiene la información de descripción de un grupo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creación del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --   Sí    Código de Empresa
   tempres        VARCHAR2(100),   --     Descripción de Empresa
   cgrup          NUMBER,   --      Código de Grupo de Bonus/Franquícias
   cversion       NUMBER,   --      Código de Versión
   cidioma        NUMBER,   --     Código de Idioma
   tidioma        VARCHAR2(200),   --     Descripción de Idioma
   tgrup          VARCHAR2(200),   --     Descripción del Grupo de Bonus/Franquícias
   CONSTRUCTOR FUNCTION ob_iax_bf_desgrup
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BF_DESGRUP" AS
   CONSTRUCTOR FUNCTION ob_iax_bf_desgrup
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DESGRUP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DESGRUP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DESGRUP" TO "PROGRAMADORESCSI";
