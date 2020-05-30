--------------------------------------------------------
--  DDL for Type OB_IAX_PAGORENTA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PAGORENTA" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_PAGORENTA
   PROPÓSITO:      Interficie de comunicacion con iAxis - Pagos Renta

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/03/2010   JTS               1. Creación del objeto.
   2.0        21-10-2011   JGR               2. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
   3.0        01/07/2013   RCL             3. 0024697: LCOL_T031-Tamaño del campo SSEGURO
   4.0        08/10/2013   DEV, HRE          4. 0028462: LCOL_T001-Cambio dimension NPOLIZA, NCERTIF
******************************************************************************/
(
   srecren        NUMBER(6),
   sseguro        NUMBER,
   sperson        NUMBER(10),
   tnombre        VARCHAR2(200),
   ffecefe        DATE,
   ffecpag        DATE,
   ffecanu        DATE,
   cmotanu        NUMBER(4),
   tmotanu        VARCHAR2(200),
   ctipban        NUMBER(3),
   ttipban        VARCHAR2(200),
   nctacor        VARCHAR2(50),
   isinret        NUMBER(15, 6),
   pretenc        NUMBER(5, 2),
   iretenc        NUMBER(15, 6),
   iconret        NUMBER(15, 6),
   ibase          NUMBER(15, 6),
   pintgar        NUMBER(5, 2),
   pparben        NUMBER(5, 2),
   nremesa        NUMBER(10),   --Cambiar a la taula!
   fremesa        DATE,
   cestrec        NUMBER(2),
   testrec        VARCHAR2(100),
   pertom         NUMBER(10),
   npoliza        NUMBER,   -- Bug 28462 - 08/10/2013 - HRE - Cambio de dimension SSEGURO
   ncertif        NUMBER,   -- Bug 28462 - 04/10/2013 - DEV - la precisión debe ser NUMBER
   tnomtom        VARCHAR2(200),
   fmovini        DATE,
   CONSTRUCTOR FUNCTION ob_iax_pagorenta
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PAGORENTA" AS
   CONSTRUCTOR FUNCTION ob_iax_pagorenta
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.srecren := NULL;
      SELF.sseguro := NULL;
      SELF.sperson := NULL;
      SELF.tnombre := NULL;
      SELF.ffecefe := NULL;
      SELF.ffecpag := NULL;
      SELF.ffecanu := NULL;
      SELF.cmotanu := NULL;
      SELF.tmotanu := NULL;
      SELF.ctipban := NULL;
      SELF.ttipban := NULL;
      SELF.nctacor := NULL;
      SELF.isinret := NULL;
      SELF.pretenc := NULL;
      SELF.iretenc := NULL;
      SELF.iconret := NULL;
      SELF.ibase := NULL;
      SELF.pintgar := NULL;
      SELF.pparben := NULL;
      SELF.nremesa := NULL;
      SELF.fremesa := NULL;
      SELF.cestrec := NULL;
      SELF.testrec := NULL;
      SELF.pertom := NULL;
      SELF.npoliza := NULL;
      SELF.ncertif := NULL;
      SELF.tnomtom := NULL;
      SELF.fmovini := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PAGORENTA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PAGORENTA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PAGORENTA" TO "PROGRAMADORESCSI";
