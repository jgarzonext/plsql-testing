--------------------------------------------------------
--  DDL for Type OB_IAX_BF_DESNIVEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_DESNIVEL" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_BF_DESNIVEL
   PROPÓSITO:  Contiene la información de descripciones de niveles un subgrupo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creación del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --   Código de Empresa
   tempres        VARCHAR2(200),   -- Empresa
   cgrup          NUMBER,   --   Código de Grupo de Bonus/Franquícias
   csubgrup       NUMBER,   --   Código de Subgrupo de Bonus/Franquícias
   tgrup          VARCHAR2(200),   --
   tgrupsubgrup   VARCHAR2(200),   --Descripción Grupo/Subgrupo de Bonus/Franquícias
   cversion       NUMBER(15),   --  SI Código de Versión
   cnivel         NUMBER,   --   SI Código de Nivel Bonus/Franquícias
   cidioma        NUMBER,   --   SI Código del Idioma
   tidioma        VARCHAR2(100),   --  SI Idioma
   tnivel         VARCHAR2(200),   -- Descripción Nivel en Grupo/Subgrupo Bonus/Franquícias
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
