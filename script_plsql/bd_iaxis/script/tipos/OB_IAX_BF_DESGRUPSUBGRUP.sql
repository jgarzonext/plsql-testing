--------------------------------------------------------
--  DDL for Type OB_IAX_BF_DESGRUPSUBGRUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_DESGRUPSUBGRUP" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BF_DESGRUPSUBGRUP
   PROPÓSITO:  Contiene la información de descripción un grupo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creación del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --Código de Empresa
   tempres        VARCHAR2(200),   --Empresa
   cgrup          NUMBER,   --   Código de Grupo de Bonus/Franquícias
   csubgrup       NUMBER,   --   Código de Subgrupo de Bonus/Franquícias
   cversion       NUMBER,   --  Código de Versión
   cidioma        NUMBER,   --  Código de Idioma';
   tidioma        VARCHAR2(200),   -- Idioma
   tgrup          VARCHAR2(200),   -- Descripción del Grupo de Bonus/Franquícias'
   tgrupsubgrup   VARCHAR2(200),   -- Descripción Grupo/Subgrupo de Bonus/Franquícias
   CONSTRUCTOR FUNCTION ob_iax_bf_desgrupsubgrup
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BF_DESGRUPSUBGRUP" AS
   CONSTRUCTOR FUNCTION ob_iax_bf_desgrupsubgrup
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DESGRUPSUBGRUP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DESGRUPSUBGRUP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DESGRUPSUBGRUP" TO "PROGRAMADORESCSI";
