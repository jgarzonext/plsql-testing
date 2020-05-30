--------------------------------------------------------
--  DDL for Type OB_IAX_CUADROCOMISION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CUADROCOMISION" AS object
(
  ccomisi NUMBER,
  tcomisi VARCHAR2(500), --descripció de l'idioma per defecte
  ctipo   NUMBER(2),
  ttipo   VARCHAR2(500),
  finivig DATE,
  ffinvig DATE,
  cestado NUMBER(2),
  testado VARCHAR2(500),
  descripciones T_IAX_DESCCUADROCOMISION,
  constructor
  FUNCTION ob_iax_cuadrocomision
    RETURN self AS result );
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CUADROCOMISION" AS constructor
FUNCTION ob_iax_cuadrocomision

  RETURN self AS result
IS
BEGIN
  RETURN;
END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CUADROCOMISION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUADROCOMISION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUADROCOMISION" TO "PROGRAMADORESCSI";
