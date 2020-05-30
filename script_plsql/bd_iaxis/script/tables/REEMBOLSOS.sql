--------------------------------------------------------
--  DDL for Table REEMBOLSOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."REEMBOLSOS" 
   (	"NREEMB" NUMBER(8,0), 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(6,0), 
	"AGR_SALUD" VARCHAR2(20 BYTE), 
	"SPERSON" NUMBER(10,0), 
	"CESTADO" NUMBER(2,0), 
	"FESTADO" DATE, 
	"TOBSERV" VARCHAR2(2000 BYTE), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CTIPBAN" NUMBER, 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(20 BYTE), 
	"CORIGEN" NUMBER(2,0), 
	"CBANHOSP" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS"  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."NREEMB" IS 'Nº de reembolso';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."SSEGURO" IS 'Id. Del seguro';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."NRIESGO" IS 'Número de riesgo';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."CGARANT" IS 'Código de garantia';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."AGR_SALUD" IS 'Agrupación de producto. Parproducto AGR_SALUD';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."CESTADO" IS 'Valor fijo "Estado del reembolso"
                                           0- Gestión oficinas.
                                           1- Gestión compañía
                                           2- Aceptado.
                                           3- Transferido.
                                           4- Anulado.';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."FESTADO" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."TOBSERV" IS 'Observaciones';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."CBANCAR" IS 'Cuenta de abono del reembolso';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."CTIPBAN" IS 'Tipo de cuenta bancaria';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."FALTA" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."CUSUALTA" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."CORIGEN" IS 'Valor Fijo "Origen":
                                           0- Automático
                                           1- Manual';
   COMMENT ON COLUMN "AXIS"."REEMBOLSOS"."CBANHOSP" IS 'Utiliza la CCC del PAREMPRESA.CBANCAR_HOSP';
  GRANT UPDATE ON "AXIS"."REEMBOLSOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REEMBOLSOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REEMBOLSOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REEMBOLSOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REEMBOLSOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REEMBOLSOS" TO "PROGRAMADORESCSI";
