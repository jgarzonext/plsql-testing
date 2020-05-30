--------------------------------------------------------
--  DDL for Type OB_IAX_CUAFACUL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CUAFACUL" AS OBJECT(
/******************************************************************************
   NOMBRE:    ob_iax_cuafacul
   PROPÓSITO:      Objeto para tener la informacion de cabecera del cuadro facultativo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/06/2009   ETM                1. Creación del objeto.
                                                --BUG 10487 - 18/06/2009 - ETM - IAX : REA: Desarrollo PL del mantenimiento de Facultativo
   2.0        21/08/2012   AVT                2. 22374: LCOL_A004-Mantenimiento de facultativo - Fase 2
   3.0        26/02/2013   LCF                3. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
   4.0        11/04/2013   KBR                4. 0026699: LCOL_A004-Qtracker: 0007117: Error al completar cuadros facultativos
   5.0        08/10/2013   DEV, HRE           5. 0028462: LCOL_T001-Cambio dimension NPOLIZA, NCERTIF
******************************************************************************/
   npoliza        NUMBER,   -- Número de póliza, -- Bug 28462 - 08/10/2013 - HRE - Cambio de dimension NPOLIZA
   ncertif        NUMBER,   -- Número de certificado para pólizas colectivas (26699 KBR 11042013 Aumentamos el campo de NUMBER(4) a NUMBER(6)) -- Bug 28462 - 04/10/2013 - DEV - la precisión debe ser NUMBER
   nmovimi        NUMBER(4),   -- Número de movimiento
   tmovimi        VARCHAR2(50),   --Descripción tipo de movimiento
   nriesgo        NUMBER(6),   -- Númnero de riesgo
   triesgo        VARCHAR2(200),   --Descripción del riesgo
   cgarant        NUMBER(4),   -- Código de garantía
   tgarant        VARCHAR2(120),   --Descripción de la garantía
   sfacult        NUMBER(6),   -- Secuencia de cuadro facultativo
   cestado        NUMBER(2),   -- Estado de cuadro
   testado        VARCHAR2(20),   -- Descripción el estado del cuadro (cvalor:118)
   scontra        NUMBER(6),   -- Código contrato reaseguro
   tcontra        VARCHAR2(50),   --Descripción del contrato
   nversio        NUMBER(2),   -- Número versión contrato reas
   finicuf        DATE,   -- Fecha inicio validez
   ffincuf        DATE,   -- Fecha fin validez
   scumulo        NUMBER(6),   -- Identificador de un cúmulo
   plocal         NUMBER(5, 2),   -- Parte que retenemos del facultativo
   pfacced        NUMBER(15, 6),   -- Porcentaje cedido de facultativo
   ifacced        NUMBER,   --25803   -- Importe cedido facultativo
   ctipfac        NUMBER(1),   -- 22374 AVT 21/08/2012 - Código tipo facultativo (0-Normal, 1-Fac.XL)
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
   PROPÓSITO:      Objeto para tener la informacion de cabecera del cuadro facultativo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/06/2009   ETM                1. Creación del objeto.
                                                 --BUG 10487 - 18/06/2009 - ETM - IAX : REA: Desarrollo PL del mantenimiento de Facultativo
   2.0        21/08/2012   AVT                2. 22374: LCOL_A004-Mantenimiento de facultativo - Fase 2
******************************************************************************/
   BEGIN
      SELF.npoliza := 0;   -- Número de póliza
      SELF.ncertif := 0;   -- Número de certificado para pólizas colectivas
      SELF.nmovimi := 0;   -- Número de movimiento
      SELF.tmovimi := NULL;   --Descripción tipo de movimiento
      SELF.nriesgo := 0;   -- Númnero de riesgo
      SELF.triesgo := NULL;   --Descripción del riesgo
      SELF.cgarant := 0;   -- Código de garantía
      SELF.tgarant := NULL;   --Descripción de la garantía
      SELF.sfacult := 0;   -- Secuencia de cuadro facultativo
      SELF.cestado := 0;   -- Estado de cuadro
      SELF.testado := NULL;   -- Descripción el estado del cuadro (cvalor:118)
      SELF.scontra := 0;   -- Código contrato reaseguro
      SELF.tcontra := NULL;   --Descripción del contrato
      SELF.nversio := 0;   -- Número versión contrato reas
      SELF.finicuf := NULL;   -- Fecha inicio validez
      SELF.ffincuf := NULL;   -- Fecha fin validez
      SELF.scumulo := 0;   -- Identificador de un cúmulo
      SELF.plocal := 0;   -- Parte que retenemos del facultativo
      SELF.pfacced := 0;   -- Porcentaje cedido de facultativo
      SELF.ifacced := 0;   -- Importe cedido facultativo
      SELF.ctipfac := 0;   -- 22374 AVT 21/08/2012 - Código tipo facultativo (0-Normal, 1-Fac.XL)
      SELF.ptasaxl := 0;   -- 22374 AVT 21/08/2012 - Tasa Facultativo XL
      RETURN;
   END ob_iax_cuafacul;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CUAFACUL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUAFACUL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUAFACUL" TO "PROGRAMADORESCSI";
