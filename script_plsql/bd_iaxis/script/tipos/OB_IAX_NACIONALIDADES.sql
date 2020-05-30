--------------------------------------------------------
--  DDL for Type OB_IAX_NACIONALIDADES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_NACIONALIDADES" AS OBJECT(


  CPAIS   NUMBER(3), --pais
  TPAIS VARCHAR2(200), --descripción pais
  CDEFECTO NUMBER(1), --pais por defecto?

  CONSTRUCTOR FUNCTION OB_IAX_NACIONALIDADES RETURN SELF AS RESULT,


   STATIC FUNCTION instanciar( a number) RETURN OB_IAX_NACIONALIDADES,

   STATIC FUNCTION instanciar(
      psperson IN NUMBER,
      pcagente IN NUMBER,
      pcpais IN NUMBER
  ) RETURN OB_IAX_NACIONALIDADES,


MEMBER PROCEDURE p_get
(
    psperson IN NUMBER,
    pcagente IN NUMBER,
    pcpais IN NUMBER
)

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_NACIONALIDADES" AS

CONSTRUCTOR FUNCTION OB_IAX_NACIONALIDADES RETURN SELF AS RESULT IS
  BEGIN

      RETURN;
  END;

STATIC FUNCTION instanciar( a number
) RETURN OB_IAX_NACIONALIDADES
IS
vcont OB_IAX_NACIONALIDADES;
BEGIN
   vcont := OB_IAX_NACIONALIDADES(
      NULL, NULL, NULL);

  RETURN(vcont);

END instanciar;

STATIC FUNCTION instanciar(
    psperson IN NUMBER,
    pcagente IN NUMBER,
    pcpais IN NUMBER
) RETURN OB_IAX_NACIONALIDADES
IS
vcont OB_IAX_NACIONALIDADES;
BEGIN
   vcont := OB_IAX_NACIONALIDADES(
      NULL, NULL, NULL);

   vcont.p_get(psperson ,  pcagente  , pcpais  );
   RETURN(vcont);

END instanciar;

MEMBER PROCEDURE p_get
(
    psperson IN NUMBER,
    pcagente IN NUMBER,
    pcpais IN NUMBER
) IS
BEGIN

   SELECT
        CDEFECTO
   INTO
        self.CDEFECTO
   FROM NACIONALIDADES
   WHERE sperson = psperson
     AND CAGENTE = pcagente
     AND cpais = pcpais;


EXCEPTION
 WHEN OTHERS THEN
        NULL;
END p_get;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_NACIONALIDADES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_NACIONALIDADES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_NACIONALIDADES" TO "PROGRAMADORESCSI";
