--------------------------------------------------------
--  DDL for Type OB_IAX_SIM_ESTCESIONESREA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIM_ESTCESIONESREA" AS OBJECT(
   cod_empresa    NUMBER(3),   -- C¿digo Empresa
   desc_empresa   VARCHAR2(60),   -- Descripci¿n Empresa
   sproduc        NUMBER(6),   -- Producto
   cod_reasegura  NUMBER(3),   -- C¿digo Reaseguradora
   desc_reasegura VARCHAR2(60),   -- Descripci¿n Reaseguradora
   cod_contra     NUMBER(6),   -- C¿digo Contrato
   desc_contra    VARCHAR2(100),   -- Descripci¿n Contrato
   nversio        NUMBER(2),   -- C¿digo Versi¿n
   ctramo         NUMBER(2),   -- C¿digo Tramo
   desc_tramo     VARCHAR2(100),   -- Descripci¿n Tramo
   fcierre        DATE,
   cod_concept    NUMBER(2),   -- C¿digo Concepto
   desc_concept   VARCHAR2(100),   -- Descripci¿n Concepto
   cmoneda        VARCHAR2(3),
   importe        NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_sim_estcesionesrea
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIM_ESTCESIONESREA" AS
   CONSTRUCTOR FUNCTION ob_iax_sim_estcesionesrea
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cod_empresa := NULL;
      SELF.desc_empresa := NULL;
      SELF.sproduc := NULL;
      SELF.cod_reasegura := NULL;
      SELF.desc_reasegura := NULL;
      SELF.cod_contra := NULL;
      SELF.desc_contra := NULL;
      SELF.nversio := NULL;
      SELF.ctramo := NULL;
      SELF.desc_tramo := NULL;
      SELF.fcierre := NULL;
      SELF.cod_concept := NULL;
      SELF.desc_concept := NULL;
      SELF.cmoneda := NULL;
      SELF.importe := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIM_ESTCESIONESREA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIM_ESTCESIONESREA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIM_ESTCESIONESREA" TO "PROGRAMADORESCSI";
