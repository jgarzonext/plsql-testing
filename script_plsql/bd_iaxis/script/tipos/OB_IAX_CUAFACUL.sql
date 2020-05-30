--------------------------------------------------------
--  DDL for Type OB_IAX_CUAFACUL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CUAFACUL" AS OBJECT(
/******************************************************************************
   NOMBRE:    ob_iax_cuafacul
   PROP�SITO:      Objeto para tener la informacion de cabecera del cuadro facultativo

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/06/2009   ETM                1. Creaci�n del objeto.
                                                --BUG 10487 - 18/06/2009 - ETM - IAX : REA: Desarrollo PL del mantenimiento de Facultativo
   2.0        21/08/2012   AVT                2. 22374: LCOL_A004-Mantenimiento de facultativo - Fase 2
   3.0        26/02/2013   LCF                3. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
   4.0        11/04/2013   KBR                4. 0026699: LCOL_A004-Qtracker: 0007117: Error al completar cuadros facultativos
   5.0        08/10/2013   DEV, HRE           5. 0028462: LCOL_T001-Cambio dimension NPOLIZA, NCERTIF
******************************************************************************/
   npoliza        NUMBER,   -- N�mero de p�liza, -- Bug 28462 - 08/10/2013 - HRE - Cambio de dimension NPOLIZA
   ncertif        NUMBER,   -- N�mero de certificado para p�lizas colectivas (26699 KBR 11042013 Aumentamos el campo de NUMBER(4) a NUMBER(6)) -- Bug 28462 - 04/10/2013 - DEV - la precisi�n debe ser NUMBER
   nmovimi        NUMBER(4),   -- N�mero de movimiento
   tmovimi        VARCHAR2(50),   --Descripci�n tipo de movimiento
   nriesgo        NUMBER(6),   -- N�mnero de riesgo
   triesgo        VARCHAR2(200),   --Descripci�n del riesgo
   cgarant        NUMBER(4),   -- C�digo de garant�a
   tgarant        VARCHAR2(120),   --Descripci�n de la garant�a
   sfacult        NUMBER(6),   -- Secuencia de cuadro facultativo
   cestado        NUMBER(2),   -- Estado de cuadro
   testado        VARCHAR2(20),   -- Descripci�n el estado del cuadro (cvalor:118)
   scontra        NUMBER(6),   -- C�digo contrato reaseguro
   tcontra        VARCHAR2(50),   --Descripci�n del contrato
   nversio        NUMBER(2),   -- N�mero versi�n contrato reas
   finicuf        DATE,   -- Fecha inicio validez
   ffincuf        DATE,   -- Fecha fin validez
   scumulo        NUMBER(6),   -- Identificador de un c�mulo
   plocal         NUMBER(5, 2),   -- Parte que retenemos del facultativo
   pfacced        NUMBER(15, 6),   -- Porcentaje cedido de facultativo
   ifacced        NUMBER,   --25803   -- Importe cedido facultativo
   ctipfac        NUMBER(1),   -- 22374 AVT 21/08/2012 - C�digo tipo facultativo (0-Normal, 1-Fac.XL)
   ptasaxl        NUMBER(7, 5),   -- 22374 AVT 21/08/2012 - Tasa Facultativo XL (26699 KBR 11042013 Aumentamos el campo de NUMBER(7, 2) a NUMBER(7, 5))
   CONSTRUCTOR FUNCTION ob_iax_cuafacul
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CUAFACUL" AS
   CONSTRUCTOR FUNCTION ob_iax_cuafacul
      RETURN SELF AS RESULT IS
/******************************************************************************
   NOMBRE:    ob_iax_cuafacul
   PROP�SITO:      Objeto para tener la informacion de cabecera del cuadro facultativo

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/06/2009   ETM                1. Creaci�n del objeto.
                                                 --BUG 10487 - 18/06/2009 - ETM - IAX : REA: Desarrollo PL del mantenimiento de Facultativo
   2.0        21/08/2012   AVT                2. 22374: LCOL_A004-Mantenimiento de facultativo - Fase 2
******************************************************************************/
   BEGIN
      SELF.npoliza := 0;   -- N�mero de p�liza
      SELF.ncertif := 0;   -- N�mero de certificado para p�lizas colectivas
      SELF.nmovimi := 0;   -- N�mero de movimiento
      SELF.tmovimi := NULL;   --Descripci�n tipo de movimiento
      SELF.nriesgo := 0;   -- N�mnero de riesgo
      SELF.triesgo := NULL;   --Descripci�n del riesgo
      SELF.cgarant := 0;   -- C�digo de garant�a
      SELF.tgarant := NULL;   --Descripci�n de la garant�a
      SELF.sfacult := 0;   -- Secuencia de cuadro facultativo
      SELF.cestado := 0;   -- Estado de cuadro
      SELF.testado := NULL;   -- Descripci�n el estado del cuadro (cvalor:118)
      SELF.scontra := 0;   -- C�digo contrato reaseguro
      SELF.tcontra := NULL;   --Descripci�n del contrato
      SELF.nversio := 0;   -- N�mero versi�n contrato reas
      SELF.finicuf := NULL;   -- Fecha inicio validez
      SELF.ffincuf := NULL;   -- Fecha fin validez
      SELF.scumulo := 0;   -- Identificador de un c�mulo
      SELF.plocal := 0;   -- Parte que retenemos del facultativo
      SELF.pfacced := 0;   -- Porcentaje cedido de facultativo
      SELF.ifacced := 0;   -- Importe cedido facultativo
      SELF.ctipfac := 0;   -- 22374 AVT 21/08/2012 - C�digo tipo facultativo (0-Normal, 1-Fac.XL)
      SELF.ptasaxl := 0;   -- 22374 AVT 21/08/2012 - Tasa Facultativo XL
      RETURN;
   END ob_iax_cuafacul;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CUAFACUL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUAFACUL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUAFACUL" TO "PROGRAMADORESCSI";
