--------------------------------------------------------
--  DDL for Table AGENTES_SC
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGENTES_SC" 
   (	"CAGENTE" NUMBER, 
	"CRETENC" NUMBER(2,0), 
	"CTIPIVA" NUMBER(2,0), 
	"SPERSON" NUMBER(10,0), 
	"CCOMISI" NUMBER, 
	"CTIPAGE" NUMBER(2,0), 
	"CACTIVO" NUMBER(1,0), 
	"CDOMICI" NUMBER, 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"NCOLEGI" NUMBER(10,0), 
	"FBAJAGE" DATE, 
	"CSOPREC" NUMBER(2,0), 
	"CMEDIOP" NUMBER(2,0), 
	"CCUACOA" NUMBER(1,0), 
	"CTIPBAN" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."CRETENC" IS 'C�digo de retenci�n';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."CTIPIVA" IS 'C�digo tipo de IVA';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."SPERSON" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."CCOMISI" IS 'C�digo comisi�n';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."CTIPAGE" IS 'Tipo de agente.';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."CACTIVO" IS 'Activo.';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."CDOMICI" IS 'C�digo del domicilio que utiliza';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."CBANCAR" IS 'Cuenta domiciliaci�n';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."NCOLEGI" IS 'N�mero de colegiado';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."FBAJAGE" IS 'Fecha baja del agente';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."CSOPREC" IS 'Tipo de soporte de los recibos (null = papel)';
   COMMENT ON COLUMN "AXIS"."AGENTES_SC"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON TABLE "AXIS"."AGENTES_SC"  IS 'Agentes - Elementos de la Red Comercial';
  GRANT INSERT ON "AXIS"."AGENTES_SC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGENTES_SC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_SC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGENTES_SC" TO "PROGRAMADORESCSI";
  GRANT UPDATE ON "AXIS"."AGENTES_SC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_SC" TO "R_AXIS";
