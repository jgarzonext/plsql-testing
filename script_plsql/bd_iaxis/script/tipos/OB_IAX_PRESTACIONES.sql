--------------------------------------------------------
--  DDL for Type OB_IAX_PRESTACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRESTACIONES" AS OBJECT(
--****************************************************************************
--   NOMBRE:       OB_IAX_PRESTACIONES
--   PROP�SITO:  Contiene informaci�n de prestaciones
--
--   REVISIONES:
--   Ver        Fecha        Autor             Descripci�n
--   ---------  ----------  ---------------  ------------------------------------
--   1.0        05/11/2009   JGM                1. Creaci�n del objeto.
--   2.0        18/10/2010   SRA                2. Bug 16259: Se a�ade el campo IMPORTE
--  3.0        01/07/2013   RCL           3. 0024697: LCOL_T031-Tama�o del campo SSEGURO
--******************************************************************************
   sseguro        NUMBER,   --    Identificador de p�liza
   nsinies        VARCHAR2(14),   --    N�mero de siniestro
   nnivel         NUMBER(2),   --    Nivel de prestaci�n
   sperson        NUMBER(10),   --    Beneficiario de la prestaci�n
   ctipren        NUMBER(1),   --    Contingencia de la prestaci�n. Valor fijo
   tctipren       VARCHAR2(60),   --    Descripci�n ligada a CTIPREN
   ctipcap        NUMBER(1),   --    Tipo de prestaci�n (renda, capital),. Valor fijo
   tctipcap       VARCHAR2(60),   --    Descripci�n ligada a
   fpropag        DATE,   --    Fecha de pr�ximo pago
   ctiprev        NUMBER(1),   --    Tipo de revalorizaci�n. Valof fijo
   tctiprev       VARCHAR2(60),   --    Descripci�n ligada a CTIPREV. Valor fijo
   fprorev        DATE,   --    Fecha pr�xima revalorizaci�n
   prevalo        NUMBER(6, 3),   --    Porcentaje de revalorizaci�n
   irevalo        NUMBER,   --NUMBER(25, 10),   --    Importe de revalorizaci�n
   nrevanu        NUMBER(2),   --    N�mero de a�os que se revaloriza
   stras          NUMBER(8),   --    Identificador de traspaso (si la prestaci�n ha sido traspasada o se traspasa)
   importe        NUMBER,   --NUMBER(13, 2),   -- Importe de la prestaci�n
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
