--------------------------------------------------------
--  DDL for Type OB_IAX_INTERFASE_L022
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INTERFASE_L022" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_INTERFASE_L022
   PROPÓSITO:  Interfase L022

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/04/2013   ASN                1. Creación del objeto.
******************************************************************************/
(
   codigo         VARCHAR2(3),
   descripcion    VARCHAR2(30),
   codigoespecifico VARCHAR2(3),
   descripcionespecifica VARCHAR2(30),
   referencia     VARCHAR2(20),
   unidades       NUMBER,
   imprevisto     NUMBER,
   estado         VARCHAR2(1),
   CONSTRUCTOR FUNCTION ob_iax_interfase_l022
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INTERFASE_L022" AS
/******************************************************************************
   NOMBRE:       OB_IAX_INTERFASE_L022
   PROPÓSITO:    Datos interfase L022

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/04/2013   ASN                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_interfase_l022
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.codigo := NULL;
      SELF.descripcion := NULL;
      SELF.codigoespecifico := NULL;
      SELF.descripcionespecifica := NULL;
      SELF.referencia := NULL;
      SELF.unidades := NULL;
      SELF.imprevisto := NULL;
      SELF.estado := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_L022" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_L022" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_L022" TO "PROGRAMADORESCSI";
