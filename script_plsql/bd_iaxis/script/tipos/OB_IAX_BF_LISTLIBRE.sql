--------------------------------------------------------
--  DDL for Type OB_IAX_BF_LISTLIBRE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_LISTLIBRE" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BF_LISTLIBRE
   PROP√ìSITO:  Contiene la informaci√≥n de niveles un subgrupo

   REVISIONES:
   Ver        Fecha        Autor             Descripci√≥n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creaci√≥n del objeto.
******************************************************************************/
(
   cempres        NUMBER(6),
   id_listlibre   NUMBER(4),   -- CÛdigo de lista
   cvalor         NUMBER(8),   --     CÛdigo de VALORES
   tvalor         VARCHAR2(2000),
   catribu        NUMBER(3),   --CÛdigo de ATRIBUTO de DETVALORES a mostrar
   tatribu        VARCHAR2(2000),
   idlistalibre2  NUMBER(4),
   id_listlibre_min NUMBER(4),
   id_listlibre_max NUMBER(4),
   CONSTRUCTOR FUNCTION ob_iax_bf_listlibre
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BF_LISTLIBRE" AS
   CONSTRUCTOR FUNCTION ob_iax_bf_listlibre
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_LISTLIBRE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_LISTLIBRE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_LISTLIBRE" TO "PROGRAMADORESCSI";
