--------------------------------------------------------
--  DDL for Type OB_IAX_BF_LISTLIBRE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_LISTLIBRE" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BF_LISTLIBRE
   PROPÓSITO:  Contiene la información de niveles un subgrupo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creación del objeto.
******************************************************************************/
(
   cempres        NUMBER(6),
   id_listlibre   NUMBER(4),   -- C�digo de lista
   cvalor         NUMBER(8),   --     C�digo de VALORES
   tvalor         VARCHAR2(2000),
   catribu        NUMBER(3),   --C�digo de ATRIBUTO de DETVALORES a mostrar
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
