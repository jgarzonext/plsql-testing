--------------------------------------------------------
--  DDL for Type OB_IAX_REGLASSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REGLASSEG" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_REGLASSEG
   PROPÓSITO:  Contiene información de los productos unit linked

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        23/09/2010   RSC              1. Creación del objeto.
   2.0        01/07/2013   RCL            2. 0024697: LCOL_T031-Tamaño del campo SSEGURO
******************************************************************************/
(
   sseguro        NUMBER,
   nriesgo        NUMBER(6),
   cgarant        NUMBER(4),
   nmovimi        NUMBER(4),
   capmaxemp      NUMBER,   --NUMBER(15, 2),
   capminemp      NUMBER,   --NUMBER(15, 2),
   capmaxtra      NUMBER,   --NUMBER(15, 2),
   capmintra      NUMBER,   --NUMBER(15, 2),
   reglassegtramos t_iax_reglassegtramos,
   CONSTRUCTOR FUNCTION ob_iax_reglasseg
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_REGLASSEG" AS
   /******************************************************************************
      NOMBRE:       OB_IAX_REGLASSEG
      PROPÓSITO:  Contiene información de los productos unit linked

      REVISIONES:
      Ver        Fecha        Autor             Descripción
      ---------  ----------  ---------------  ------------------------------------
      1.0        23/09/2010   RSC              1. Creación del objeto.
   ******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_reglasseg
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.cgarant := NULL;
      SELF.nmovimi := NULL;
      SELF.capmaxemp := NULL;
      SELF.capminemp := NULL;
      SELF.capmaxtra := NULL;
      SELF.capmintra := NULL;
      SELF.reglassegtramos := t_iax_reglassegtramos();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REGLASSEG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REGLASSEG" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REGLASSEG" TO "R_AXIS";
