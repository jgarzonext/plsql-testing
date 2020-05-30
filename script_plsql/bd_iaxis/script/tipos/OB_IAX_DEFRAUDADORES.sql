--------------------------------------------------------
--  DDL for Type OB_IAX_DEFRAUDADORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DEFRAUDADORES" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_DEFRAUDADORES
   PROPOSITO:     Detalle fraude

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        07/05/2012   MDS              1. Creación del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   -- PK
   ndefrau        NUMBER(6),   -- PK
   sperson        NUMBER(10),
   tperson        VARCHAR2(400),   -- descripción de la persona
   ctiprol        NUMBER(13),
   ttiprol        VARCHAR2(100),   -- descripción del rol del defraudador
   finiefe        DATE,
   ffinefe        DATE,
   cusualt        VARCHAR2(20),
   falta          DATE,
   CONSTRUCTOR FUNCTION ob_iax_defraudadores
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DEFRAUDADORES" AS
   CONSTRUCTOR FUNCTION ob_iax_defraudadores
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.ndefrau := NULL;
      SELF.sperson := NULL;
      SELF.tperson := NULL;   -- descripción de la persona
      SELF.ctiprol := NULL;
      SELF.ttiprol := NULL;   -- descripción del rol del defraudador
      SELF.finiefe := NULL;
      SELF.ffinefe := NULL;
      SELF.cusualt := NULL;
      SELF.falta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DEFRAUDADORES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DEFRAUDADORES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DEFRAUDADORES" TO "PROGRAMADORESCSI";
