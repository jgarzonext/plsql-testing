--------------------------------------------------------
--  DDL for Type OB_IAX_DETFACTURA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DETFACTURA" AS OBJECT
/******************************************************************************
   NOMBRE:     ob_iax_detfactura
   PROPOSITO:  Contiene la informacion del detalle de factura (DETFACTURA detalle de FACTURAS)

   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        23/05/2012   APD             1. Creacion del objeto. (Bug 21786)
   2.0        26/02/2013   LCF             2. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
******************************************************************************/
(
   norden         NUMBER,   -- Orden de los conceptos de la factura
   cconcepto      NUMBER(3),   --Codigo del concepto (v.f. 1100)
   tconcepto      VARCHAR2(250),   --Descripción del concepto
   iimporte       NUMBER,   --25803   -- Importe del concepto
   iirpf          NUMBER,   --25803  -- IRPF del concepto
   iimpneto       NUMBER,   --25803  -- Importe neto del concepto
   iimpcta        NUMBER,   --25803  -- Importe del ingreso a cuenta
   CONSTRUCTOR FUNCTION ob_iax_detfactura
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DETFACTURA" AS
   CONSTRUCTOR FUNCTION ob_iax_detfactura
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.norden := NULL;
      SELF.cconcepto := NULL;
      SELF.tconcepto := NULL;
      SELF.iimporte := 0;
      SELF.iirpf := 0;
      SELF.iimpneto := 0;
      SELF.iimpcta := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DETFACTURA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETFACTURA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETFACTURA" TO "PROGRAMADORESCSI";
