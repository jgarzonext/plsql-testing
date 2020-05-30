--------------------------------------------------------
--  DDL for Type OB_IAX_BF_PROGARANGRUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_PROGARANGRUP" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_BF_PROGARANGRUP
   PROPÓSITO:  Contiene la información de descripciones de niveles un subgrupo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creación del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --   Código de Empresa
   tempres        VARCHAR2(200),   -- Empresa
   sproduc        NUMBER,   --   Código del Producto
   tproducto      VARCHAR2(200),   --Prodcuto
   cactivi        NUMBER,   --   Código de Actividad
   tactividad     VARCHAR2(200),   -- Actividad
   cgarant        NUMBER,   --   Código de garantía
   tgarant        VARCHAR2(200),   -- Garantía
   cgarpadre      NUMBER,
   cvisible       NUMBER,
   cnivgar        NUMBER,
   cvisniv        NUMBER,
   ffecini        DATE,   --  Fecha inicio registro
   codgrup        NUMBER,   --   Código de Grupo de Bonus/Franquícias
   tgrupo         VARCHAR2(200),   -- Grupo
   CONSTRUCTOR FUNCTION ob_iax_bf_progarangrup
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BF_PROGARANGRUP" AS
   CONSTRUCTOR FUNCTION ob_iax_bf_progarangrup
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_PROGARANGRUP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_PROGARANGRUP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_PROGARANGRUP" TO "PROGRAMADORESCSI";
