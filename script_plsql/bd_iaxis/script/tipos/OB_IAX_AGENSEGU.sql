--------------------------------------------------------
--  DDL for Type OB_IAX_AGENSEGU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AGENSEGU" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_AGENSEGU
   PROPÓSITO:      Interficie de comunicacion con iAxis - Agenda de Seguros

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/03/2009   JSP                1. Creación del objeto.
   2.0        09/09/2009   DCT                2. Bug 11090. Apuntes en la agenda.(Añadir npoliza).
   3.0        01/07/2013   RCL                3. 0024697: LCOL_T031-Tamaño del campo SSEGURO
   4.0        08/10/2013   DEV, HRE           4. 0028462: LCOL_T001-Cambio dimension NPOLIZA, NCERTIF
******************************************************************************/
(
   sseguro        NUMBER,
   nlinea         NUMBER(6),
   npoliza        NUMBER,   -- Bug 28462 - 07/10/2013 - HRE - Cambio de dimension SSEGURO
   ncertif        NUMBER,   -- Bug 28462 - 04/10/2013 - DEV - la precisión debe ser NUMBER
   falta          DATE,
   ctipreg        NUMBER(3),
   ttipreg        VARCHAR2(100),
   cestado        NUMBER(1),
   testado        VARCHAR2(100),
   cusualt        VARCHAR2(20),
   ttitulo        VARCHAR2(100),
   ffinali        DATE,
   ttextos        VARCHAR2(4000),
   cmanual        NUMBER(1),
   tmanual        VARCHAR2(100),
   cusumod        VARCHAR2(20),
   fmodifi        DATE,
   CONSTRUCTOR FUNCTION ob_iax_agensegu
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AGENSEGU" AS
   CONSTRUCTOR FUNCTION ob_iax_agensegu
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nlinea := NULL;
      SELF.npoliza := NULL;
      --Bug11090 - 09/09/2009 - DCT - CRE Apuntes en la agenda
      SELF.ncertif := NULL;
      --FI Bug11090 - 09/09/2009 - DCT - CRE Apuntes en la agenda
      SELF.falta := NULL;
      SELF.ctipreg := NULL;
      SELF.ttipreg := NULL;
      SELF.cestado := NULL;
      SELF.testado := NULL;
      SELF.cusualt := NULL;
      SELF.ttitulo := NULL;
      SELF.ffinali := NULL;
      SELF.ttextos := NULL;
      SELF.cmanual := NULL;
      SELF.tmanual := NULL;
      SELF.cusumod := NULL;
      SELF.fmodifi := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AGENSEGU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGENSEGU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGENSEGU" TO "PROGRAMADORESCSI";
