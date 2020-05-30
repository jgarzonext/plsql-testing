--------------------------------------------------------
--  DDL for Type OB_IAX_PROCESOSLIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROCESOSLIN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PROCESOSLIN
   PROPÓSITO:    PROCESOSLIN

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/02/10   JRB                1. Creación del objeto.
******************************************************************************/
(
   sproces        NUMBER,   --
   nprolin        NUMBER(6),   --
   npronum        NUMBER,   --
   tprolin        VARCHAR2(120),   --
   fprolin        DATE,   --
   cestado        NUMBER(1),   --
   ctiplin        NUMBER,   --Tipo de línea. null y 1.- Error, 2.- Aviso. Valor fijo:713
   ttiplin        VARCHAR2(20),
   tfprolin       VARCHAR2(20),
   tpoliza        VARCHAR2(20),
   CONSTRUCTOR FUNCTION ob_iax_procesoslin
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROCESOSLIN" AS
/******************************************************************************
   NOMBRE:       OB_IAX_PROCESOSLIN
   PROPÓSITO:    PROCESOSLIN

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/02/10   JRB                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_procesoslin
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sproces := 0;
      SELF.nprolin := 0;
      SELF.npronum := 0;
      SELF.tprolin := NULL;
      SELF.fprolin := NULL;
      SELF.cestado := 0;
      SELF.ctiplin := 0;
      SELF.ttiplin := NULL;
      SELF.tfprolin := NULL;
      SELF.tpoliza := NULL;
      RETURN;
   END ob_iax_procesoslin;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROCESOSLIN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROCESOSLIN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROCESOSLIN" TO "PROGRAMADORESCSI";
