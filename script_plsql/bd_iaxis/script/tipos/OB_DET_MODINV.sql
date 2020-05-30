--------------------------------------------------------
--  DDL for Type OB_DET_MODINV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_DET_MODINV" AS OBJECT(
   /******************************************************************************
      NOMBRE:       OB_DET_MODINV
      PROP�SITO:  Contiene informaci�n de los productos unit linked
                   modelos inversi�n

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        --/--/----   ---                1. Creaci�n del objeto.
   ******************************************************************************/
   ccesta         NUMBER(3),   -- codigo de cesta
   tfonabv        VARCHAR2(50),   -- descripci�n de la cesta
   PERCENT        NUMBER(9, 6),   -- distribuci�n de cada cesta
   CONSTRUCTOR FUNCTION ob_det_modinv
      RETURN SELF AS RESULT
)
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_DET_MODINV" AS
   CONSTRUCTOR FUNCTION ob_det_modinv
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccesta := NULL;
      SELF.tfonabv := NULL;
      SELF.PERCENT := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_DET_MODINV" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_DET_MODINV" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_DET_MODINV" TO "PROGRAMADORESCSI";
