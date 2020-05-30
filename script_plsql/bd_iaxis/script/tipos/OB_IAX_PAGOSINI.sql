--------------------------------------------------------
--  DDL for Type OB_IAX_PAGOSINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PAGOSINI" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PAGOSINI
   PROPÓSITO:  Contiene la información de los pagos vinculados a un siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        27/12/2007   JAS                1. Creación del objeto.
   2.0        19/11/2011   APD                2. 0019587: LCOL_P001 - PER - Validaciones dependiendo del tipo de documento
******************************************************************************/
(
   sidepag        NUMBER(8),   -- Id. del pago.
   ctipdes        NUMBER(2),   -- Tipo de destinatario del pago (VF. 10).
   ttipdes        VARCHAR2(100),   -- Descripción del tipo de destinatario del pago.
   sperson        NUMBER(10),   -- Id. del destinatario del pago.
   ctippag        NUMBER(1),   -- Código del tipo del pago (VF. 2).
   ttippag        VARCHAR2(100),   -- Descripción del tipo de pago.
   cestpag        NUMBER(1),   -- Código del estado del pago (VF. 3).
   testpag        VARCHAR2(100),   -- Descripción del estado del pago.
   fefepag        DATE,   -- Fecha de efecto del pago.
   fordpag        DATE,   -- Fecha de ordenación del pago.
   ipago          NUMBER,   --NUMBER(13, 2),   -- Importe del pago.
   ctipide        NUMBER(1),   -- Tipo de identificación persona ( V.F. 672.  NIf, pasaporte, etc.
   ttipide        VARCHAR2(100),   -- Descripción del tipo de identificación persona
   nnumide        VARCHAR2(50),   -- Numero de Censo/Pasaporte de la persona
   tnombre        VARCHAR2(200),   -- Nombre y apellidos
   CONSTRUCTOR FUNCTION ob_iax_pagosini
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PAGOSINI" AS
   CONSTRUCTOR FUNCTION ob_iax_pagosini
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sidepag := NULL;
      SELF.ctipdes := NULL;
      SELF.ttipdes := NULL;
      SELF.sperson := NULL;
      SELF.ctippag := NULL;
      SELF.ttippag := NULL;
      SELF.cestpag := NULL;
      SELF.testpag := NULL;
      SELF.fefepag := NULL;
      SELF.fordpag := NULL;
      SELF.ipago := NULL;
      SELF.ctipide := NULL;
      SELF.ttipide := NULL;
      SELF.nnumide := NULL;
      SELF.tnombre := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PAGOSINI" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PAGOSINI" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PAGOSINI" TO "PROGRAMADORESCSI";
