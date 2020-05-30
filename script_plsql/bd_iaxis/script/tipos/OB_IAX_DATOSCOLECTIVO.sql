--------------------------------------------------------
--  DDL for Type OB_IAX_DATOSCOLECTIVO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DATOSCOLECTIVO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DATOSCOLECTIVO
   PROPÓSITO:  Contiene una serie de campos informativos a nivel general del colectivo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        31/07/2012   FAL                1. Creación del objeto.
******************************************************************************/
(
   vasegurado     FLOAT,
   iprianus       FLOAT,
   ncertfanu      NUMBER,   -- (Csituac = 2)
   ncertpropaut   NUMBER,   -- (Csituac = 4, creteni = 2)
   ncertaut       NUMBER,   -- (Csituac = 4, creteni = 0)
   ncertpropautsupl NUMBER,   -- (Csituac = 5, creteni = 2)
   ncertautsupl   NUMBER,   -- (Csituac = 5, creteni = 0)
   listacertifs   t_iax_certificados,   -- (lista de certificados)         ob_iax_detpoliza
   CONSTRUCTOR FUNCTION ob_iax_datoscolectivo
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DATOSCOLECTIVO" AS
   CONSTRUCTOR FUNCTION ob_iax_datoscolectivo
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.vasegurado := 0;
      SELF.iprianus := 0;
      SELF.ncertfanu := 0;
      SELF.ncertpropaut := 0;
      SELF.ncertaut := 0;
      SELF.ncertpropautsupl := 0;
      SELF.ncertautsupl := 0;
      SELF.listacertifs := t_iax_certificados();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSCOLECTIVO" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSCOLECTIVO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSCOLECTIVO" TO "R_AXIS";
