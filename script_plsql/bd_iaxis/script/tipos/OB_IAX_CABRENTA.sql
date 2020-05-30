--------------------------------------------------------
--  DDL for Type OB_IAX_CABRENTA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CABRENTA" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_CABRENTA
   PROPÓSITO:      Interficie de comunicacion con iAxis - Cabecera Renta

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/03/2010   JTS             1. Creación del objeto.
   2.0        21-10-2011   JGR             2. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
******************************************************************************/
(
   npoliza        NUMBER,
   ncertif        NUMBER,
   fefecto        DATE,
   ttipban        VARCHAR2(50),
   cbancar        VARCHAR2(50),
   tomador        VARCHAR2(100),
   primeraseg     VARCHAR2(100),
   nedadprimeraseg NUMBER(3),
   segundoaseg    VARCHAR2(100),
   nedadsedungoaseg NUMBER(3),
   ibruren        NUMBER(15, 6),
   fprimerpago    DATE,
   fproxgen       DATE,
   fvencim        DATE,
   tformapago     VARCHAR2(100),
   ffinrenta      DATE,
   tmotivo        VARCHAR2(100),
   CONSTRUCTOR FUNCTION ob_iax_cabrenta
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CABRENTA" AS
   CONSTRUCTOR FUNCTION ob_iax_cabrenta
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.npoliza := NULL;
      SELF.ncertif := NULL;
      SELF.fefecto := NULL;
      SELF.ttipban := NULL;
      SELF.cbancar := NULL;
      SELF.tomador := NULL;
      SELF.primeraseg := NULL;
      SELF.nedadprimeraseg := NULL;
      SELF.segundoaseg := NULL;
      SELF.nedadsedungoaseg := NULL;
      SELF.ibruren := NULL;
      SELF.fprimerpago := NULL;
      SELF.fproxgen := NULL;
      SELF.fvencim := NULL;
      SELF.tformapago := NULL;
      SELF.ffinrenta := NULL;
      SELF.tmotivo := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CABRENTA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CABRENTA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CABRENTA" TO "PROGRAMADORESCSI";
