--------------------------------------------------------
--  DDL for Type OB_IAX_BF_GRUPSUBGRUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_GRUPSUBGRUP" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BF_GRUPSUBGRUP
   PROPÓSITO:  Contiene la información de un grupo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creación del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --    Código de Empresa
   tempres        VARCHAR2(200),   --    Empresa
   cgrup          NUMBER,   --    Código de Grupo de Bonus/Franquícias
   csubgrup       NUMBER,   --    Código de Subgrupo de Bonus/Franquícias
   cversion       NUMBER,   --    Código de Versión
   ctipgrupsubgrup NUMBER,   --    1 = Lista Valores; 2 = Libre(Sólo un nivel libre en BF_DETNIVEL)
   tgrup          VARCHAR2(200),   --    Descripción del Grupo de Bonus/Franquícias'
   tgrupsubgrup   VARCHAR2(200),   --Descripción del Subgrupo de Bonus/Franquícias'
   ttipgrupsubgrup VARCHAR2(200),   --Descripción del subrugpo
   obversion      ob_iax_bf_versiongrup,
   lniveles       t_iax_bf_detnivel,   --Lista de niveles
   ldescripciones t_iax_bf_desgrupsubgrup,   --    Lista de idiomas
   CONSTRUCTOR FUNCTION ob_iax_bf_grupsubgrup
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BF_GRUPSUBGRUP" AS
   CONSTRUCTOR FUNCTION ob_iax_bf_grupsubgrup
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_GRUPSUBGRUP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_GRUPSUBGRUP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_GRUPSUBGRUP" TO "PROGRAMADORESCSI";
