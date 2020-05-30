--------------------------------------------------------
--  DDL for Type OB_IAX_SITRECDEV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SITRECDEV" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SITRECDEV
   PROPÓSITO:  Objeto que se utilizará para cargar los cambios del estado revisado
   de un recibo de un proceso de devolución

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/05/2009   XPL                1. Creación del objeto.
   2.0        04/10/2013   DEV               2. 0028462: LCOL_T001-Cambio dimensi?n iAxis
******************************************************************************/
(
   nrecibo        NUMBER,   --Número de recibo -- Bug 28462 - 04/10/2013 - DEV - la precisión debe ser NUMBER
   sdevolu        NUMBER,   --Nº Prodeceso devolución de recibos
   cdevsit        NUMBER(1),   -- Código estado recibo devuelto
   CONSTRUCTOR FUNCTION ob_iax_sitrecdev
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SITRECDEV" AS
   CONSTRUCTOR FUNCTION ob_iax_sitrecdev
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nrecibo := NULL;
      SELF.sdevolu := NULL;
      SELF.cdevsit := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SITRECDEV" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SITRECDEV" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SITRECDEV" TO "PROGRAMADORESCSI";
