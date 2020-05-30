--------------------------------------------------------
--  DDL for Type OB_IAX_INDICADORES_CIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INDICADORES_CIAS" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_INDICADORES_CIAS
   PROPOSITO:    Indicadores compaías

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/02/2014   AGG              1. Creación del objeto.
******************************************************************************/
(
   ccompani       NUMBER,
   ctipind        NUMBER,
   tindicador     VARCHAR2(60),
   nvalor         NUMBER,
   caplica        NUMBER,
   taplica        VARCHAR2(60),
   finivig        DATE,
   ffinvig        DATE,
   cenviosap      NUMBER(1),
   carea          NUMBER,
   ctipreg        NUMBER,
   cimpret        NUMBER,
   cindsap        VARCHAR2(4),
   CONSTRUCTOR FUNCTION ob_iax_indicadores_cias
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INDICADORES_CIAS" AS
   CONSTRUCTOR FUNCTION ob_iax_indicadores_cias
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccompani := NULL;
      SELF.ctipind := NULL;
      SELF.tindicador := NULL;
      SELF.nvalor := NULL;
      SELF.caplica := NULL;
      SELF.taplica := NULL;
      SELF.finivig := NULL;
      SELF.ffinvig := NULL;
      SELF.cenviosap := NULL;
      SELF.carea := NULL;
      SELF.ctipreg := NULL;
      SELF.cimpret := NULL;
      SELF.cindsap := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INDICADORES_CIAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INDICADORES_CIAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INDICADORES_CIAS" TO "PROGRAMADORESCSI";
