--------------------------------------------------------
--  DDL for Type OB_IAX_INT_DATOS_POLIZA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INT_DATOS_POLIZA" UNDER ob_int_datos_poliza
/******************************************************************************
   NOMBRE:       OB_IAX_INT_DATOS_POLIZA
   PROPÓSITO:    Contiene la información del detalle de la póliza para la llamada a la interfase

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/10/2010   DRA              1. 0019498: AGM998 - Sobreprecio - Exclusión de variedades ( Modificar el proceso)
   2.0        01/03/2012   DRA              2. 0021467: AGM- Quitar en la descripción de riesgos el plan y al final se muestran caracteres raros
******************************************************************************/
(
   CONSTRUCTOR FUNCTION ob_iax_int_datos_poliza
      RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INT_DATOS_POLIZA" AS
   CONSTRUCTOR FUNCTION ob_iax_int_datos_poliza
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cempres := NULL;
      SELF.sseguro := NULL;
      SELF.ssegpol := NULL;
      SELF.fefecto := NULL;
      SELF.npoliza := NULL;
      SELF.ncertif := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INT_DATOS_POLIZA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INT_DATOS_POLIZA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INT_DATOS_POLIZA" TO "PROGRAMADORESCSI";
