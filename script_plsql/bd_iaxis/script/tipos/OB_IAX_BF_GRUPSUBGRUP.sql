--------------------------------------------------------
--  DDL for Type OB_IAX_BF_GRUPSUBGRUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_GRUPSUBGRUP" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BF_GRUPSUBGRUP
   PROP�SITO:  Contiene la informaci�n de un grupo

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creaci�n del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --    C�digo de Empresa
   tempres        VARCHAR2(200),   --    Empresa
   cgrup          NUMBER,   --    C�digo de Grupo de Bonus/Franqu�cias
   csubgrup       NUMBER,   --    C�digo de Subgrupo de Bonus/Franqu�cias
   cversion       NUMBER,   --    C�digo de Versi�n
   ctipgrupsubgrup NUMBER,   --    1 = Lista Valores; 2 = Libre(S�lo un nivel libre en BF_DETNIVEL)
   tgrup          VARCHAR2(200),   --    Descripci�n del Grupo de Bonus/Franqu�cias'
   tgrupsubgrup   VARCHAR2(200),   --Descripci�n del Subgrupo de Bonus/Franqu�cias'
   ttipgrupsubgrup VARCHAR2(200),   --Descripci�n del subrugpo
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
