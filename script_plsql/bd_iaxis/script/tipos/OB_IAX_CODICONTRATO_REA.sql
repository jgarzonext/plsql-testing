--------------------------------------------------------
--  DDL for Type OB_IAX_CODICONTRATO_REA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CODICONTRATO_REA" AS OBJECT(
   scontra        NUMBER(6),   -- Secuencia del contrato
   spleno         NUMBER(6),   -- Identificador del pleno
   cempres        NUMBER(2),   -- Código de empresa
   tempres        VARCHAR2(40),   -- Descripción de la empresa
   ctiprea        NUMBER(2),   -- Código tipo contrato
   ttiprea        VARCHAR2(100),   -- Descripción tipo contrato
   cramo          NUMBER(8),   -- Código de ramo
   cmodali        NUMBER(2),   -- Código de modalidad
   ctipseg        NUMBER(2),   -- Código de tipo de seguro
   ccolect        NUMBER(2),   -- Código de colectivo
   tproduc        VARCHAR2(100),   -- Descripción del producto
   cactivi        NUMBER(4),   -- Actividad
   tactivi        VARCHAR2(240),   -- Descripción actividad
   cgarant        NUMBER(4),   -- Código de garantía
   tgarant        VARCHAR2(120),   -- Descripción garantía
   cvidaga        NUMBER(1),   -- Código de forma de cálculo
   tvidaga        VARCHAR2(100),   -- Descripción (VF 161)
   ctipcum        NUMBER(1),   --Tipo de cumulo (Vf. 225)
   ttipcum        VARCHAR2(240),   --Descripción del tipo de cumulo
   cvalid         NUMBER(1),   -- Código de contratos con nueva versión validada para proceso de ajuste de cesiones
   sconagr        NUMBER(6),   --Codigo de Agrupacón
   tconagr        VARCHAR2(240),   --Descripción del codigo de agrupación
   cmoneda        VARCHAR2(3),   -- Código Moneda (Tabla ECO_CODMONEDAS)
   tmoneda        VARCHAR2(100),   --Descripción moneda (eco_desmonedas) pac_eco_monedas
   tdescripcion   VARCHAR2(100),   --Descripción del contrato
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
      SELF.cempres := 0;   -- Código de empresa
      SELF.tempres := NULL;   -- Descripción de la empresa
      SELF.ctiprea := 0;   -- Código tipo contrato
      SELF.ttiprea := NULL;   -- Descripción tipo contrato
      SELF.cramo := 0;   -- Código de ramo
      SELF.cmodali := 0;   -- Código de modalidad
      SELF.ctipseg := 0;   -- Código de tipo de seguro
      SELF.ccolect := 0;   -- Código de colectivo
      SELF.tproduc := NULL;   -- Descripción del producto
      SELF.cactivi := 0;   -- Actividad
      SELF.tactivi := NULL;   -- Descripción actividad
      SELF.cgarant := 0;   -- Código de garantía
      SELF.tgarant := NULL;   -- Descripción garantía
      SELF.cvidaga := 0;   -- Código de forma de cálculo
      SELF.tvidaga := NULL;   -- Descripción (VF 161)
      SELF.contratos := NULL;   -- Objeto con la lista de informaciones del contrato
      SELF.ctipcum := 0;   --Tipo de cumulo
      SELF.ttipcum := NULL;   --Descripción del tipo de cumulo
      SELF.cvalid := 0;   -- Código de contratos con nueva versión validada para proceso de ajuste de cesiones
      SELF.sconagr := 0;   --Codigo de Agrupacón
      SELF.tconagr := NULL;   --Descripción del codigo de agrupación
      SELF.cmoneda := NULL;   -- Código Moneda (Tabla ECO_CODMONEDAS)
      SELF.tmoneda := NULL;   --Descripción moneda (eco_desmonedas) pac_eco_monedas
      SELF.tdescripcion := NULL;   --Descripción del contrato
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
