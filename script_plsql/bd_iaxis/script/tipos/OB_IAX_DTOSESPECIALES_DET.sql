--------------------------------------------------------
--  DDL for Type OB_IAX_DTOSESPECIALES_DET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DTOSESPECIALES_DET" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DTOSESPECIALES_DET
   PROPÓSITO:  Contiene la información del detalle de los descuentos especiales
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/05/2013   AMC                1. Creación del objeto.
******************************************************************************/
(
   sproduc        NUMBER,
   tproduc        VARCHAR2(15),
   cdpto          NUMBER,
   tdpto          VARCHAR2(30),
   cpais          NUMBER,
   tpais          VARCHAR2(100),
   cciudad        NUMBER,
   tciudad        VARCHAR2(50),
   cagrupacion    VARCHAR2(20),
   csucursal      NUMBER,
   tsucursal      VARCHAR2(200),
   cintermediario NUMBER,
   tintermediario VARCHAR2(200),
   pdto           NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_dtosespeciales_det
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DTOSESPECIALES_DET" AS
   CONSTRUCTOR FUNCTION ob_iax_dtosespeciales_det
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sproduc := NULL;
      SELF.tproduc := NULL;
      SELF.cpais := NULL;
      SELF.tpais := NULL;
      SELF.cdpto := NULL;
      SELF.tdpto := NULL;
      SELF.cciudad := NULL;
      SELF.tciudad := NULL;
      SELF.cagrupacion := NULL;
      SELF.csucursal := NULL;
      SELF.tsucursal := NULL;
      SELF.cintermediario := NULL;
      SELF.tintermediario := NULL;
      SELF.pdto := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DTOSESPECIALES_DET" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DTOSESPECIALES_DET" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DTOSESPECIALES_DET" TO "PROGRAMADORESCSI";
