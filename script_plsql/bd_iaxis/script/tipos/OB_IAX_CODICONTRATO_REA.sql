--------------------------------------------------------
--  DDL for Type OB_IAX_CODICONTRATO_REA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CODICONTRATO_REA" AS OBJECT(
   scontra        NUMBER(6),   -- Secuencia del contrato
   spleno         NUMBER(6),   -- Identificador del pleno
   cempres        NUMBER(2),   -- C�digo de empresa
   tempres        VARCHAR2(40),   -- Descripci�n de la empresa
   ctiprea        NUMBER(2),   -- C�digo tipo contrato
   ttiprea        VARCHAR2(100),   -- Descripci�n tipo contrato
   cramo          NUMBER(8),   -- C�digo de ramo
   cmodali        NUMBER(2),   -- C�digo de modalidad
   ctipseg        NUMBER(2),   -- C�digo de tipo de seguro
   ccolect        NUMBER(2),   -- C�digo de colectivo
   tproduc        VARCHAR2(100),   -- Descripci�n del producto
   cactivi        NUMBER(4),   -- Actividad
   tactivi        VARCHAR2(240),   -- Descripci�n actividad
   cgarant        NUMBER(4),   -- C�digo de garant�a
   tgarant        VARCHAR2(120),   -- Descripci�n garant�a
   cvidaga        NUMBER(1),   -- C�digo de forma de c�lculo
   tvidaga        VARCHAR2(100),   -- Descripci�n (VF 161)
   ctipcum        NUMBER(1),   --Tipo de cumulo (Vf. 225)
   ttipcum        VARCHAR2(240),   --Descripci�n del tipo de cumulo
   cvalid         NUMBER(1),   -- C�digo de contratos con nueva versi�n validada para proceso de ajuste de cesiones
   sconagr        NUMBER(6),   --Codigo de Agrupac�n
   tconagr        VARCHAR2(240),   --Descripci�n del codigo de agrupaci�n
   cmoneda        VARCHAR2(3),   -- C�digo Moneda (Tabla ECO_CODMONEDAS)
   tmoneda        VARCHAR2(100),   --Descripci�n moneda (eco_desmonedas) pac_eco_monedas
   tdescripcion   VARCHAR2(100),   --Descripci�n del contrato
   finictr        DATE,   -- Fecha Inicio Contrato
   ffinctr        DATE,   -- Fecha Fin Contrato
   cdevento       NUMBER(2),
   contratos      t_iax_contrato_rea,   -- Objeto con la lista de informaciones del contrato
   CONSTRUCTOR FUNCTION ob_iax_codicontrato_rea
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CODICONTRATO_REA" AS
   CONSTRUCTOR FUNCTION ob_iax_codicontrato_rea
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.scontra := 0;   -- Secuencia del contrato
      SELF.spleno := 0;   -- Identificador del pleno
      SELF.cempres := 0;   -- C�digo de empresa
      SELF.tempres := NULL;   -- Descripci�n de la empresa
      SELF.ctiprea := 0;   -- C�digo tipo contrato
      SELF.ttiprea := NULL;   -- Descripci�n tipo contrato
      SELF.cramo := 0;   -- C�digo de ramo
      SELF.cmodali := 0;   -- C�digo de modalidad
      SELF.ctipseg := 0;   -- C�digo de tipo de seguro
      SELF.ccolect := 0;   -- C�digo de colectivo
      SELF.tproduc := NULL;   -- Descripci�n del producto
      SELF.cactivi := 0;   -- Actividad
      SELF.tactivi := NULL;   -- Descripci�n actividad
      SELF.cgarant := 0;   -- C�digo de garant�a
      SELF.tgarant := NULL;   -- Descripci�n garant�a
      SELF.cvidaga := 0;   -- C�digo de forma de c�lculo
      SELF.tvidaga := NULL;   -- Descripci�n (VF 161)
      SELF.contratos := NULL;   -- Objeto con la lista de informaciones del contrato
      SELF.ctipcum := 0;   --Tipo de cumulo
      SELF.ttipcum := NULL;   --Descripci�n del tipo de cumulo
      SELF.cvalid := 0;   -- C�digo de contratos con nueva versi�n validada para proceso de ajuste de cesiones
      SELF.sconagr := 0;   --Codigo de Agrupac�n
      SELF.tconagr := NULL;   --Descripci�n del codigo de agrupaci�n
      SELF.cmoneda := NULL;   -- C�digo Moneda (Tabla ECO_CODMONEDAS)
      SELF.tmoneda := NULL;   --Descripci�n moneda (eco_desmonedas) pac_eco_monedas
      SELF.tdescripcion := NULL;   --Descripci�n del contrato
      SELF.finictr := NULL;   -- Fecha Inicio Contrato
      SELF.ffinctr := NULL;   -- Fecha Fin Contrato
      SELF.cdevento := NULL;
      RETURN;
   END ob_iax_codicontrato_rea;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CODICONTRATO_REA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CODICONTRATO_REA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CODICONTRATO_REA" TO "PROGRAMADORESCSI";
