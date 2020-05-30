--------------------------------------------------------
--  DDL for Type OB_IAX_PROMOTORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROMOTORES" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_PROMOTORES
   PROPÓSITO:  Contiene la información de los promotores

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   JTS             1. Creación del objeto.
   2.0        04/01/2010   AMC             2. Se sustituye los campos de persona por el objeto ob_iax_personas.
   3.0        21-10-2011   JGR             3. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
   4.0        08/10/2013   HRE             4. Bug 0028462: HRE - Cambio dimension campo NPOLIZA
******************************************************************************/
(
   ccodpla        NUMBER(6),
   tnompla        VARCHAR2(250),
   persona        ob_iax_personas,
   npoliza        NUMBER,   -- Bug 28462 - 08/10/2013 - HRE - Cambio de dimension NPOLIZA
   cbancar        VARCHAR2(50),
   nvalparsp      NUMBER(15, 6),
   ctipban        NUMBER(3),
   CONSTRUCTOR FUNCTION ob_iax_promotores
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROMOTORES" AS
   CONSTRUCTOR FUNCTION ob_iax_promotores
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodpla := NULL;
      SELF.tnompla := NULL;
      SELF.npoliza := NULL;
      SELF.cbancar := NULL;
      SELF.nvalparsp := NULL;
      SELF.ctipban := NULL;
      SELF.persona := NEW ob_iax_personas();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROMOTORES" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROMOTORES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROMOTORES" TO "R_AXIS";
