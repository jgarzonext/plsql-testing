--------------------------------------------------------
--  DDL for Type OB_IAX_BF_DESGRUPSUBGRUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_DESGRUPSUBGRUP" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BF_DESGRUPSUBGRUP
   PROP�SITO:  Contiene la informaci�n de descripci�n un grupo

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creaci�n del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --C�digo de Empresa
   tempres        VARCHAR2(200),   --Empresa
   cgrup          NUMBER,   --   C�digo de Grupo de Bonus/Franqu�cias
   csubgrup       NUMBER,   --   C�digo de Subgrupo de Bonus/Franqu�cias
   cversion       NUMBER,   --  C�digo de Versi�n
   cidioma        NUMBER,   --  C�digo de Idioma';
   tidioma        VARCHAR2(200),   -- Idioma
   tgrup          VARCHAR2(200),   -- Descripci�n del Grupo de Bonus/Franqu�cias'
   tgrupsubgrup   VARCHAR2(200),   -- Descripci�n Grupo/Subgrupo de Bonus/Franqu�cias
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
