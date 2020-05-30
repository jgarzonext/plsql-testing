--------------------------------------------------------
--  DDL for Type OB_IAX_CONTACTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CONTACTOS" AS OBJECT(
   cmodcon        NUMBER,   -- id del contacto
   ctipcon        NUMBER(2),   --tipo contacto
   ttipcon        VARCHAR2(100),   -- descrición tipo contacto
   tcomcon        VARCHAR2(100),
   tvalcon        VARCHAR2(100),
   cobliga        NUMBER,
   tobliga        VARCHAR2(100),
   cdomici        NUMBER,
   cprefix        NUMBER(10),
   tdomici        VARCHAR2(3200),
   CONSTRUCTOR FUNCTION ob_iax_contactos
      RETURN SELF AS RESULT,
   STATIC FUNCTION instanciar(pcmodcon IN NUMBER, psperson IN NUMBER)
      RETURN ob_iax_contactos,
   STATIC FUNCTION instanciar(a NUMBER)
      RETURN ob_iax_contactos,
   MEMBER PROCEDURE p_get(pcmodcon IN NUMBER, psperson IN NUMBER)
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CONTACTOS" AS
   CONSTRUCTOR FUNCTION ob_iax_contactos
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
   STATIC FUNCTION instanciar(a NUMBER)
      RETURN ob_iax_contactos IS
      vcont          ob_iax_contactos;
   BEGIN
      vcont := ob_iax_contactos(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
      RETURN(vcont);
   END instanciar;
   STATIC FUNCTION instanciar(pcmodcon IN NUMBER, psperson IN NUMBER)
      RETURN ob_iax_contactos IS
      vcont          ob_iax_contactos;
   BEGIN
      vcont := ob_iax_contactos(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
      vcont.p_get(pcmodcon, psperson);
      RETURN(vcont);
   END instanciar;
   MEMBER PROCEDURE p_get(pcmodcon IN NUMBER, psperson IN NUMBER) IS
   BEGIN
      SELECT cmodcon, ctipcon, tcomcon, tvalcon, cobliga,
             cdomici, cprefix
        INTO SELF.cmodcon, SELF.ctipcon, SELF.tcomcon, SELF.tvalcon, SELF.cobliga,
             SELF.cdomici, SELF.cprefix
        FROM per_contactos
       WHERE sperson = psperson
         AND cmodcon = pcmodcon;
   EXCEPTION
      WHEN OTHERS THEN
         NULL;
   END p_get;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTACTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTACTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTACTOS" TO "PROGRAMADORESCSI";
