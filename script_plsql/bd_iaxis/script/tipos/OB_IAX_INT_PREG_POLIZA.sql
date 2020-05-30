--------------------------------------------------------
--  DDL for Type OB_IAX_INT_PREG_POLIZA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INT_PREG_POLIZA" UNDER ob_int_preg_poliza
/******************************************************************************
   NOMBRE:       OB_IAX_INT_PREG_POLIZA
   PROPÓSITO:    Contiene la información del detalle de la póliza para la llamada a la interfase

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/10/2010   DRA              1. 0019498: AGM998 - Sobreprecio - Exclusión de variedades ( Modificar el proceso)
   2.0        01/03/2012   DRA              2. 0021467: AGM- Quitar en la descripción de riesgos el plan y al final se muestran caracteres raros
******************************************************************************/
(
   CONSTRUCTOR FUNCTION ob_iax_int_preg_poliza
      RETURN SELF AS RESULT
)
NOT FINAL;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INT_PREG_POLIZA" AS
   CONSTRUCTOR FUNCTION ob_iax_int_preg_poliza
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cpregun := NULL;
      SELF.crespue := NULL;
      SELF.trespue := NULL;
      SELF.ctipprg := NULL;
      SELF.cnivel := 'P';
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INT_PREG_POLIZA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INT_PREG_POLIZA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INT_PREG_POLIZA" TO "PROGRAMADORESCSI";
