--------------------------------------------------------
--  DDL for Type OB_IAX_BF_DESNIVEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_DESNIVEL" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_BF_DESNIVEL
   PROP�SITO:  Contiene la informaci�n de descripciones de niveles un subgrupo

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creaci�n del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --   C�digo de Empresa
   tempres        VARCHAR2(200),   -- Empresa
   cgrup          NUMBER,   --   C�digo de Grupo de Bonus/Franqu�cias
   csubgrup       NUMBER,   --   C�digo de Subgrupo de Bonus/Franqu�cias
   tgrup          VARCHAR2(200),   --
   tgrupsubgrup   VARCHAR2(200),   --Descripci�n Grupo/Subgrupo de Bonus/Franqu�cias
   cversion       NUMBER(15),   --  SI C�digo de Versi�n
   cnivel         NUMBER,   --   SI C�digo de Nivel Bonus/Franqu�cias
   cidioma        NUMBER,   --   SI C�digo del Idioma
   tidioma        VARCHAR2(100),   --  SI Idioma
   tnivel         VARCHAR2(200),   -- Descripci�n Nivel en Grupo/Subgrupo Bonus/Franqu�cias
   CONSTRUCTOR FUNCTION ob_iax_bf_desnivel
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BF_DESNIVEL" AS
   CONSTRUCTOR FUNCTION ob_iax_bf_desnivel
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DESNIVEL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DESNIVEL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DESNIVEL" TO "PROGRAMADORESCSI";
