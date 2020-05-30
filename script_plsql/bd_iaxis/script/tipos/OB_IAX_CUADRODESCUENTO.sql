--------------------------------------------------------
--  DDL for Type OB_IAX_CUADRODESCUENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CUADRODESCUENTO" AS OBJECT(
   cdesc          NUMBER(2),
   tdesc          VARCHAR2(500),   --descripció de l'idioma per defecte
   ctipo          NUMBER(2),
   ttipo          VARCHAR2(500),
   finivig        DATE,
   ffinvig        DATE,
   cestado        NUMBER(2),
   testado        VARCHAR2(500),
   descripciones  t_iax_desccuadrodescuento,
   CONSTRUCTOR FUNCTION ob_iax_cuadrodescuento
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CUADRODESCUENTO" AS
   CONSTRUCTOR FUNCTION ob_iax_cuadrodescuento
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CUADRODESCUENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUADRODESCUENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUADRODESCUENTO" TO "PROGRAMADORESCSI";
