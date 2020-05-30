--------------------------------------------------------
--  DDL for Type OB_IAX_SITRIESGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SITRIESGO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SITRIESGO
   PROPOSITO:

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. Creación del objeto.
   2.0        01/07/2013   RCL             2. 0024697: LCOL_T031-Tama�o del campo SSEGURO
   3.0        20/05/2015   MNUSTES            1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
(
   sseguro        NUMBER,   --N�mero consecutivo de seguro asignado autom�ticamente.
   nriesgo        NUMBER(6),   --N�mero de riesgo
   tdomici        VARCHAR2(300),   --Domicilio
   cprovin        NUMBER,   --C�digo de provincia Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovin        VARCHAR2(100),   -- C�digo de provincia
   cpostal        VARCHAR2(30),   --C�digo postal
   tpostal        VARCHAR2(100),   -- C�digo postal
   cpoblac        NUMBER,   --C�digo de poblaci�n Bug 33977-0201044 20/05/2015 - precision NUMBER
   tpoblac        VARCHAR2(100),   -- C�digo de poblaci�n
   csiglas        NUMBER(2),   --Tipo de v�a
   tsiglas        VARCHAR2(100),   -- Tipo de v�a
   tnomvia        VARCHAR2(200),   --Descripci�n v�a
   nnumvia        NUMBER(10),   --N�mero v�a
   tcomple        VARCHAR2(250),   --Descripci�n complementaria
   cciudad        NUMBER(5),   --C�digo ciudad para chile
   tciudad        VARCHAR2(100),   -- C�digo ciudad para chile
   fgisx          FLOAT,   --Coordenada GIS X (GPS)
   fgisy          FLOAT,   --Coordenada GIS Y (GPS)
   fgisz          FLOAT,   --Coordenada GIS Z (GPS)
   cvalida        NUMBER(2),   --C�digo validaci�n direcci�n. Valor fijo 1006
   tvalida        VARCHAR2(100),   -- C�digo validaci�n direcci�n. Valor fijo 1006
   iddirrie       NUMBER(10),   --Identificador direcci�n riesgo
   CONSTRUCTOR FUNCTION ob_iax_sitriesgo
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SITRIESGO" AS
   CONSTRUCTOR FUNCTION ob_iax_sitriesgo
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.tdomici := NULL;
      SELF.cprovin := NULL;
      SELF.tprovin := NULL;
      SELF.cpostal := NULL;
      SELF.tpostal := NULL;
      SELF.cpoblac := NULL;
      SELF.tpoblac := NULL;
      SELF.csiglas := NULL;
      SELF.tsiglas := NULL;
      SELF.tnomvia := NULL;
      SELF.nnumvia := NULL;
      SELF.tcomple := NULL;
      SELF.cciudad := NULL;
      SELF.tciudad := NULL;
      SELF.fgisx := NULL;
      SELF.fgisy := NULL;
      SELF.fgisz := NULL;
      SELF.cvalida := NULL;
      SELF.tvalida := NULL;
      SELF.iddirrie := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SITRIESGO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SITRIESGO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SITRIESGO" TO "PROGRAMADORESCSI";
