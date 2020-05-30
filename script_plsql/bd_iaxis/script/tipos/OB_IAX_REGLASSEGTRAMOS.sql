--------------------------------------------------------
--  DDL for Type OB_IAX_REGLASSEGTRAMOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REGLASSEGTRAMOS" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_REGLASSEGTRAMOS
   PROPOSITO:      Interficie de comunicacion con iAxis

   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        07/10/2010   JTS                1. Creacion del objeto.
   2.0        01/07/2013   RCL              2. 0024697: LCOL_T031-Tamaño del campo SSEGURO
******************************************************************************/
(
   sseguro        NUMBER,
   nriesgo        NUMBER(6),
   cgarant        NUMBER(4),
   nmovimi        NUMBER(4),
   edadini        NUMBER(3),
   edadfin        NUMBER(3),
   t1copagemp     NUMBER(5, 2),
   t1copagtra     NUMBER(5, 2),
   t2copagemp     NUMBER(5, 2),
   t2copagtra     NUMBER(5, 2),
   t3copagemp     NUMBER(5, 2),
   t3copagtra     NUMBER(5, 2),
   t4copagemp     NUMBER(5, 2),
   t4copagtra     NUMBER(5, 2),
   CONSTRUCTOR FUNCTION ob_iax_reglassegtramos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_REGLASSEGTRAMOS" AS
   CONSTRUCTOR FUNCTION ob_iax_reglassegtramos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.cgarant := NULL;
      SELF.nmovimi := NULL;
      SELF.edadini := NULL;
      SELF.edadfin := NULL;
      SELF.t1copagemp := NULL;
      SELF.t1copagtra := NULL;
      SELF.t2copagemp := NULL;
      SELF.t2copagtra := NULL;
      SELF.t3copagemp := NULL;
      SELF.t3copagtra := NULL;
      SELF.t4copagemp := NULL;
      SELF.t4copagtra := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REGLASSEGTRAMOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REGLASSEGTRAMOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REGLASSEGTRAMOS" TO "PROGRAMADORESCSI";
