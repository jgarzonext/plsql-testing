--------------------------------------------------------
--  DDL for Type OB_IAX_DETPRIMAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DETPRIMAS" AS OBJECT
/******************************************************************************
   NOMBRE:     ob_iax_detprimas
   PROPOSITO:  Contiene la informacion del detalle de primas (DETPRIMAS detalle de GARANSEG)

   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/03/2012   APD             1. Creacion del objeto. (Bug 21121)

******************************************************************************/
(
   ccampo         VARCHAR2(8),   -- Codigo del campo (tabla GARANFORMULA)
   tcampo         VARCHAR2(100),   -- descripcion del codigo del campo (tabla CODCAMPO)
   cconcep        VARCHAR2(8),   -- Subconcepto (tabla CODCAMPO)
   tconcep        VARCHAR2(100),   -- descripcion del codigo del concep (tabla CODCAMPO)
   norden         NUMBER,   -- Orden de ejecución
   iconcep        NUMBER,   -- Importe del concepto
   iconcep2       NUMBER,   -- Importe de la aplicación del concepto
   ndecvis        NUMBER,   -- Número de decimales en la visualización
   CONSTRUCTOR FUNCTION ob_iax_detprimas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DETPRIMAS" AS
   CONSTRUCTOR FUNCTION ob_iax_detprimas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccampo := NULL;
      SELF.tcampo := NULL;
      SELF.cconcep := NULL;
      SELF.tconcep := NULL;
      SELF.norden := NULL;
      SELF.iconcep := NULL;
      SELF.iconcep2 := NULL;
      SELF.ndecvis := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DETPRIMAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETPRIMAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETPRIMAS" TO "PROGRAMADORESCSI";
