--------------------------------------------------------
--  DDL for Type OB_IAX_EMPLEADO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_EMPLEADO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_EMPLEADO
   PROPÓSITO:    Contiene la información de un empleado

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        23/10/2012  MDS              1. Creación del objeto. 0022266: LCOL_P001 - PER - Mantenimiento de promotores, gestores, empleados, coordinador


******************************************************************************/
(
   sperson        NUMBER,
   ctipo          NUMBER,
   ttipo          VARCHAR2(100),   -- descripción de ctipo
   csubtipo       NUMBER,
   tsubtipo       VARCHAR2(100),   -- descripción de csubtipo
   cargo          NUMBER,
   tcargo         VARCHAR2(100),   -- descripción de ccargo
   ccanal         NUMBER,
   tcanal         VARCHAR2(100),   -- descripción de ccanal
   cusumod        VARCHAR2(20),
   fmodifi        DATE,
   CONSTRUCTOR FUNCTION ob_iax_empleado
      RETURN SELF AS RESULT
)
NOT FINAL;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_EMPLEADO" AS
   CONSTRUCTOR FUNCTION ob_iax_empleado
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := NULL;
      SELF.ctipo := NULL;
      SELF.ttipo := NULL;
      SELF.csubtipo := NULL;
      SELF.tsubtipo := NULL;
      SELF.cargo := NULL;
      SELF.tcargo := NULL;
      SELF.ccanal := NULL;
      SELF.tcanal := NULL;
      SELF.cusumod := NULL;
      SELF.fmodifi := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_EMPLEADO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_EMPLEADO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_EMPLEADO" TO "PROGRAMADORESCSI";
