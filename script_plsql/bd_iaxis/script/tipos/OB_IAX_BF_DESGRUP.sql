--------------------------------------------------------
--  DDL for Type OB_IAX_BF_DESGRUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_DESGRUP" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BF_DESGRUP
   PROP�SITO:  Contiene la informaci�n de descripci�n de un grupo

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creaci�n del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --   S�    C�digo de Empresa
   tempres        VARCHAR2(100),   --     Descripci�n de Empresa
   cgrup          NUMBER,   --      C�digo de Grupo de Bonus/Franqu�cias
   cversion       NUMBER,   --      C�digo de Versi�n
   cidioma        NUMBER,   --     C�digo de Idioma
   tidioma        VARCHAR2(200),   --     Descripci�n de Idioma
   tgrup          VARCHAR2(200),   --     Descripci�n del Grupo de Bonus/Franqu�cias
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
