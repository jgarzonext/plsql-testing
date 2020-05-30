--------------------------------------------------------
--  DDL for Type OB_IAX_REPRESENTANTE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REPRESENTANTE" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_REPRESENTANTE
   PROPÓSITO:    Contiene la información de un representante

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
   tcompania      VARCHAR2(200),
   tpuntoventa    VARCHAR2(200),
   spercoord      NUMBER,
   cusumod        VARCHAR2(20),
   fmodifi        DATE,
   CONSTRUCTOR FUNCTION ob_iax_representante
      RETURN SELF AS RESULT
)
NOT FINAL;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_REPRESENTANTE" AS
   CONSTRUCTOR FUNCTION ob_iax_representante
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := NULL;
      SELF.ctipo := NULL;
      SELF.ttipo := NULL;
      SELF.csubtipo := NULL;
      SELF.tsubtipo := NULL;
      SELF.tcompania := NULL;
      SELF.tpuntoventa := NULL;
      SELF.spercoord := NULL;
      SELF.cusumod := NULL;
      SELF.fmodifi := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REPRESENTANTE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REPRESENTANTE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REPRESENTANTE" TO "PROGRAMADORESCSI";
