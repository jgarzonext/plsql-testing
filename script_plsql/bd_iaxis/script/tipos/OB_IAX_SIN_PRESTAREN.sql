--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_PRESTAREN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_PRESTAREN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_PRESTAREN
   PROP�SITO:  Contiene informaci�n de los pagos de renta por prestaci�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/08/2010   JRH             1. Creaci�n del objeto.
   2.0        21-10-2011   JGR             2. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
   3.0        01/07/2013   RCL             3. 0024697: LCOL_T031-Tama�o del campo SSEGURO
   4.0        08/01/2014   LPP             4. 0028409: ENSA998-ENSA - Implementaci�n de historico de prestaciones
******************************************************************************/
(
-- Bug 0015669 - JRH - 30/09/2010 - Alta prestaciones
   nsinies        VARCHAR2(14),   --   Siniestro
   ntramit        NUMBER(3),   --Tr�mite
   sperson        NUMBER(10),   --  C�digo persona
   ctipdes        NUMBER(2),   --Tipo destinatario
   sseguro        NUMBER,   --Seguro
   f1paren        DATE,   --Primer pago renta
   fuparen        DATE,   --  �ltimo pago renta
   cforpag        NUMBER(2),   --   Forma de pago de la renta
   ibruren        NUMBER,   --NUMBER(13, 2),   --   Importe renta
   ffinren        DATE,   --Fecha que acab� la renta
   cestado        NUMBER(1),   --   Estado
   cmotivo        NUMBER(1),   --   Motivo del estado
   fppren         DATE,   --  Fecha pr�ximo pago renta
   crevali        NUMBER,   --   Tipo revalorizaci�n
   prevali        NUMBER,   --% Reval
   irevali        NUMBER,   --Importe Reval
   cblopag        NUMBER(2),   --   Estado en que se generan los pagos
   ctipdur        NUMBER(2),   --   Tipo duraci�n de la renta
   npartot        NUMBER,   --NUMBER(14, 3),   --   Participaciones iniciales
   npartpend      NUMBER,   --NUMBER(14, 3),   --   Participaciones pendientes
   ctipban        NUMBER(3),   --Tipo cuenta
   cbancar        VARCHAR2(50),   --   Cuenta
   ttipdes        VARCHAR2(50),   --   Tipo destinatario
   tsperson       VARCHAR2(50),   --   Nombre de la persona
   tforpag        VARCHAR2(50),   --  Descripci�n forma  de pago de la prestaci�n
   testado        VARCHAR2(50),   --  Descripci�n del estado de la prestaci�n
   tmotivo        VARCHAR2(50),   --  Descripci�n del motivo del estado
   tblopag        VARCHAR2(50),   --  Descripci�n del estado creaci�n de los pagos
   trevali        VARCHAR2(50),   --   Descripci�n del tipo de revalorizaci�n
   ttipdur        VARCHAR2(50),   --  Descripci�n del tipo de duraci�n de la prestaci�n
   nmesextra      ob_iax_nmesextra,   --Meses extras
   npresta        NUMBER(6),
   -- Fi Bug 0015669 - JRH - 30/09/2010
   CONSTRUCTOR FUNCTION ob_iax_sin_prestaren
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_PRESTAREN" AS
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_PRESTAREN
   PROP�SITO:  Contiene informaci�n de los pagos de renta por prestaci�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   -- -- -- -- -  -- -- -- -- --   -- -- -- -- -- -- -- -  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
   1.0        02/08/2010   JHR                1. Creaci�n del objeto.
   4.0        08/01/2014   LPP                4. 0028409: ENSA998-ENSA - Implementaci�n de historico de prestaciones
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_sin_prestaren
      RETURN SELF AS RESULT IS
   BEGIN
      -- Bug 0015669 - JRH - 30/09/2010 - Alta prestaciones
      SELF.nsinies := NULL;   --  Siniestro
      SELF.ntramit := NULL;   -- Tr�mite
      SELF.sperson := NULL;   --   C�digo persona
      SELF.ctipdes := NULL;   -- Tipo destinatario
      SELF.sseguro := NULL;   -- Seguro
      SELF.f1paren := NULL;   -- Primer pago renta
      SELF.fuparen := NULL;   --   �ltimo pago renta
      SELF.cforpag := NULL;   --   Forma de pago de la renta
      SELF.ibruren := NULL;   --   Importe renta
      SELF.ffinren := NULL;   --  Fecha que acab� la renta
      SELF.cestado := NULL;   --   Estado
      SELF.cmotivo := NULL;   --   Motivo del estado
      SELF.fppren := NULL;   --   Fecha pr�ximo pago renta
      SELF.crevali := NULL;   --   Tipo revalorizaci�n
      SELF.prevali := NULL;   -- % Reval
      SELF.irevali := NULL;   -- Importe Reval
      SELF.cblopag := NULL;   --   Estado en que se generan los pagos
      SELF.ctipdur := NULL;   --   Tipo duraci�n de la renta
      SELF.npartot := NULL;   --   Participaciones iniciales
      SELF.npartpend := NULL;   --   Participaciones pendientes
      SELF.ctipban := NULL;   --  Tipo cuenta
      SELF.cbancar := NULL;   --   Cuenta
      SELF.ttipdes := NULL;   --      Tipo destinatario
      SELF.tsperson := NULL;   --   Nombre de la persona
      SELF.tforpag := NULL;   --   Descripci�n forma  de pago de la prestaci�n
      SELF.testado := NULL;   --   Descripci�n del estado de la prestaci�n
      SELF.tmotivo := NULL;   --   Descripci�n del motivo del estado
      SELF.tblopag := NULL;   --   Descripci�n del estado creaci�n de los pagos
      SELF.trevali := NULL;   --      Descripci�n del tipo de revalorizaci�n
      SELF.ttipdur := NULL;   --   Descripci�n del tipo de duraci�n de la prestaci�n
      SELF.nmesextra := NULL;   -- Meses extras
      SELF.npresta := NULL;
-- Fi Bug 0015669 - JRH - 30/09/2010
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_PRESTAREN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_PRESTAREN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_PRESTAREN" TO "PROGRAMADORESCSI";
