--------------------------------------------------------
--  DDL for Type OB_IAX_PRESTACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRESTACIONES" AS OBJECT(
--****************************************************************************
--   NOMBRE:       OB_IAX_PRESTACIONES
--   PROPÓSITO:  Contiene información de prestaciones
--
--   REVISIONES:
--   Ver        Fecha        Autor             Descripción
--   ---------  ----------  ---------------  ------------------------------------
--   1.0        05/11/2009   JGM                1. Creación del objeto.
--   2.0        18/10/2010   SRA                2. Bug 16259: Se añade el campo IMPORTE
--  3.0        01/07/2013   RCL           3. 0024697: LCOL_T031-Tamaño del campo SSEGURO
--******************************************************************************
   sseguro        NUMBER,   --    Identificador de póliza
   nsinies        VARCHAR2(14),   --    Número de siniestro
   nnivel         NUMBER(2),   --    Nivel de prestación
   sperson        NUMBER(10),   --    Beneficiario de la prestación
   ctipren        NUMBER(1),   --    Contingencia de la prestación. Valor fijo
   tctipren       VARCHAR2(60),   --    Descripción ligada a CTIPREN
   ctipcap        NUMBER(1),   --    Tipo de prestación (renda, capital),. Valor fijo
   tctipcap       VARCHAR2(60),   --    Descripción ligada a
   fpropag        DATE,   --    Fecha de próximo pago
   ctiprev        NUMBER(1),   --    Tipo de revalorización. Valof fijo
   tctiprev       VARCHAR2(60),   --    Descripción ligada a CTIPREV. Valor fijo
   fprorev        DATE,   --    Fecha próxima revalorización
   prevalo        NUMBER(6, 3),   --    Porcentaje de revalorización
   irevalo        NUMBER,   --NUMBER(25, 10),   --    Importe de revalorización
   nrevanu        NUMBER(2),   --    Número de años que se revaloriza
   stras          NUMBER(8),   --    Identificador de traspaso (si la prestación ha sido traspasada o se traspasa)
   importe        NUMBER,   --NUMBER(13, 2),   -- Importe de la prestación
   CONSTRUCTOR FUNCTION ob_iax_prestaciones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRESTACIONES" AS
   CONSTRUCTOR FUNCTION ob_iax_prestaciones
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nsinies := NULL;
      SELF.nnivel := NULL;
      SELF.sperson := NULL;
      SELF.ctipren := NULL;
      SELF.tctipren := NULL;
      SELF.ctipcap := NULL;
      SELF.tctipcap := NULL;
      SELF.fpropag := NULL;
      SELF.ctiprev := NULL;
      SELF.tctiprev := NULL;
      SELF.fprorev := NULL;
      SELF.prevalo := NULL;
      SELF.irevalo := NULL;
      SELF.nrevanu := NULL;
      SELF.stras := NULL;
      SELF.importe := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTACIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTACIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTACIONES" TO "PROGRAMADORESCSI";
