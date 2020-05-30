--------------------------------------------------------
--  DDL for Type OB_IAX_DETRECIBO_DET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DETRECIBO_DET" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DETRECIBO_DET
   PROP�SITO:  Contiene los detalles por concepto del recibo

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/06/2008   JMR                1. Creaci�n del objeto.
   2.0        11/04/2011   APD                2. 0018225: AGM704 - Realizar la modificaci�n de precisi�n el cagente
   3.0        26/02/2013   LCF                3. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
   4.0        09/08/2013   CEC                4. 0027691/149541: Incorporaci�n de desglose de Recibos en la moneda del producto
******************************************************************************/
(
   nriesgo        NUMBER(6),   --N�mero de Riesgo correspondiente
   triesgo        VARCHAR2(1000),   --descripci�n del riesgo
   cgarant        NUMBER(4),   --C�digo de garant�a
   tgarant        VARCHAR2(120),   --Descripci�n de garant�a
   iconcep        NUMBER,   --Importe de la garant�a  ---25803
   iconcep_monpol NUMBER,   --0027691/149541
   cageven        NUMBER,   --C�digo de agente de venta -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
   nmovima        NUMBER,   --N�mero de movimiento de alta
   CONSTRUCTOR FUNCTION ob_iax_detrecibo_det
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DETRECIBO_DET" AS
   CONSTRUCTOR FUNCTION ob_iax_detrecibo_det
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nriesgo := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DETRECIBO_DET" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETRECIBO_DET" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETRECIBO_DET" TO "PROGRAMADORESCSI";
