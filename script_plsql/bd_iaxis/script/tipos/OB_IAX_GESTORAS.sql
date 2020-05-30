--------------------------------------------------------
--  DDL for Type OB_IAX_GESTORAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GESTORAS" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_GESTORAS
   PROPÓSITO:  Contiene la información de las gestoras de las pensiones

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   JTS                1. Creación del objeto.
******************************************************************************/
(
   ccodges        NUMBER(4),
   coddgs         VARCHAR2(10),
   persona        ob_iax_personas,
   ccoddep        NUMBER(4),
   tnomdep        VARCHAR2(250),
   falta          DATE,
   fbaja          DATE,
   cbanco         NUMBER(4),
   coficin        NUMBER(4),
   cdc            NUMBER(2),
   ncuenta        VARCHAR2(50),
   titular        ob_iax_personas,
   fonpensiones   t_iax_fonpensiones,
   timeclose      VARCHAR2(10),
   CONSTRUCTOR FUNCTION ob_iax_gestoras
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GESTORAS" AS
   CONSTRUCTOR FUNCTION ob_iax_gestoras
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodges := NULL;
      SELF.coddgs := NULL;
      SELF.ccoddep := NULL;
      SELF.tnomdep := NULL;
      SELF.falta := NULL;
      SELF.fbaja := NULL;
      SELF.cbanco := NULL;
      SELF.coficin := NULL;
      SELF.cdc := NULL;
      SELF.ncuenta := '';
      SELF.fonpensiones := NULL;
      SELF.persona := NEW ob_iax_personas();
      SELF.titular := NEW ob_iax_personas();
      SELF.timeclose := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GESTORAS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GESTORAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GESTORAS" TO "R_AXIS";
