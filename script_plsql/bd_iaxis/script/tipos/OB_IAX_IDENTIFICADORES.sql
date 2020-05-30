--------------------------------------------------------
--  DDL for Type OB_IAX_IDENTIFICADORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_IDENTIFICADORES" AS OBJECT(
   ctipide        NUMBER(3),
   ttipide        VARCHAR2(100),
   nnumide        VARCHAR2(50 BYTE),
   swidepri       NUMBER(1),
   femisio        DATE,
   fcaduca        DATE,
   cpaisexp       NUMBER(5),
   tpaisexp       VARCHAR2(200),
   cdepartexp     NUMBER(10),
   tdepartexp     VARCHAR2(200),
   cciudadexp     NUMBER(5),
   tciudadexp     VARCHAR2(200),
   fechadexp      DATE,
   CONSTRUCTOR FUNCTION ob_iax_identificadores
      RETURN SELF AS RESULT,
   STATIC FUNCTION instanciar(pcagente IN NUMBER, psperson IN NUMBER, tipo IN NUMBER)
      RETURN ob_iax_identificadores,
   STATIC FUNCTION instanciar(a NUMBER)
      RETURN ob_iax_identificadores,
   MEMBER PROCEDURE p_get(pcagente IN NUMBER, psperson IN NUMBER, tipo IN NUMBER)
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_IDENTIFICADORES" AS
   CONSTRUCTOR FUNCTION ob_iax_identificadores
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
   STATIC FUNCTION instanciar(a NUMBER)
      RETURN ob_iax_identificadores IS
      vcont          ob_iax_identificadores;
   BEGIN
      vcont := ob_iax_identificadores(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                      NULL, NULL, NULL, NULL);
      RETURN(vcont);
   END instanciar;
   STATIC FUNCTION instanciar(pcagente IN NUMBER, psperson IN NUMBER, tipo IN NUMBER)
      RETURN ob_iax_identificadores IS
      vcont          ob_iax_identificadores;
   BEGIN
      vcont := ob_iax_identificadores(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                      NULL, NULL, NULL, NULL);
      vcont.p_get(pcagente, psperson, tipo);
      RETURN(vcont);
   END instanciar;
   MEMBER PROCEDURE p_get(pcagente IN NUMBER, psperson IN NUMBER, tipo IN NUMBER) IS
   BEGIN
      SELECT ctipide, nnumide, swidepri, femisio, fcaduca,
             cpaisexp, cdepartexp, cciudadexp, fechadexp
        INTO SELF.ctipide, SELF.nnumide, SELF.swidepri, SELF.femisio, SELF.fcaduca,
             SELF.cpaisexp, SELF.cdepartexp, SELF.cciudadexp, SELF.fechadexp
        FROM identificadores
       WHERE sperson = psperson
         AND cagente = pcagente
         AND ctipide = tipo;
   EXCEPTION
      WHEN OTHERS THEN
         NULL;
   END p_get;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_IDENTIFICADORES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_IDENTIFICADORES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_IDENTIFICADORES" TO "PROGRAMADORESCSI";
