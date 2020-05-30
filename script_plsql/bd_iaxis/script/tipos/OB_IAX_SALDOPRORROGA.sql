--------------------------------------------------------
--  DDL for Type OB_IAX_SALDOPRORROGA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SALDOPRORROGA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SALDOPRORROGA
   PROPÓSITO:  Contiene la información para saldar o prorrogar una póliza.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/11/2011   JMC              1. Creación del objeto. (Bug:19303)
******************************************************************************/
(
   datosecon      ob_iax_datoseconomicos,   --Datos economicos de la póliza
   imprescate     NUMBER,   --Valor del rescate
   isaldoprest    NUMBER,   --Saldo pendiente del préstamo
   iprimafinan_pen NUMBER,   --Numero de solicitud
   iprima_np      NUMBER,   --Número movimiento
   icapfall_np    NUMBER,   --Contador del número de suplementos
   fvencim_np     DATE,   --Número de póliza.
   cmode          VARCHAR2(10),   --Indicador modo: SALDAR o PRORROGAR
   CONSTRUCTOR FUNCTION ob_iax_saldoprorroga
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SALDOPRORROGA" AS
   CONSTRUCTOR FUNCTION ob_iax_saldoprorroga
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.imprescate := NULL;
      SELF.isaldoprest := NULL;
      SELF.iprimafinan_pen := NULL;
      SELF.iprima_np := NULL;
      SELF.icapfall_np := NULL;
      SELF.fvencim_np := NULL;
      SELF.cmode := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SALDOPRORROGA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SALDOPRORROGA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SALDOPRORROGA" TO "PROGRAMADORESCSI";
