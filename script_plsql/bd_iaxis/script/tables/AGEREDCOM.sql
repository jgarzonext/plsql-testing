--------------------------------------------------------
--  DDL for Table AGEREDCOM
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGEREDCOM" 
   (	"CAGENTE" NUMBER, 
	"CEMPRES" NUMBER, 
	"CTIPAGE" NUMBER, 
	"FMOVINI" DATE, 
	"FMOVFIN" DATE, 
	"FBAJA" DATE, 
	"CPERVISIO" NUMBER, 
	"CPERNIVEL" NUMBER, 
	"CPOLVISIO" NUMBER, 
	"CPOLNIVEL" NUMBER, 
	"C00" NUMBER DEFAULT 0, 
	"C01" NUMBER DEFAULT 0, 
	"C02" NUMBER DEFAULT 0, 
	"C03" NUMBER DEFAULT 0, 
	"C04" NUMBER DEFAULT 0, 
	"C05" NUMBER DEFAULT 0, 
	"C06" NUMBER DEFAULT 0, 
	"C07" NUMBER DEFAULT 0, 
	"C08" NUMBER DEFAULT 0, 
	"C09" NUMBER DEFAULT 0, 
	"C10" NUMBER DEFAULT 0, 
	"C11" NUMBER DEFAULT 0, 
	"C12" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGEREDCOM"."CAGENTE" IS 'Código de agente';
   COMMENT ON COLUMN "AXIS"."AGEREDCOM"."CEMPRES" IS 'Código de la empresa';
   COMMENT ON COLUMN "AXIS"."AGEREDCOM"."CTIPAGE" IS 'Tipo de agente';
   COMMENT ON COLUMN "AXIS"."AGEREDCOM"."FMOVINI" IS 'Fecha de inicio';
   COMMENT ON COLUMN "AXIS"."AGEREDCOM"."FMOVFIN" IS 'Fecha de fin';
   COMMENT ON COLUMN "AXIS"."AGEREDCOM"."FBAJA" IS 'Fecha de baja del agente';
   COMMENT ON COLUMN "AXIS"."AGEREDCOM"."CPERVISIO" IS 'Código del agente que nos indica el nivel de visión de personas. Fk contra agentes.cagente.';
   COMMENT ON COLUMN "AXIS"."AGEREDCOM"."CPERNIVEL" IS 'Nivel visión personas. 1: Ve los datos de personas que tengan el código de agente introducido en el campo cpervisio (ve sus personas) o personas que tengan un código de agente de la red comercial que este por debajo del agente inroducio en el campo cpervisio (ve las personas de los agentes de la red comercial que estan por debajo suyo)// 2: Ve los datos de personas que tengan el código de agente introducido en el campo cpervisio (ve sus personas).';
   COMMENT ON COLUMN "AXIS"."AGEREDCOM"."CPOLVISIO" IS 'Código del agente que nos indica el nivel de visión de polizas. Fk contra agentes.cagente.';
   COMMENT ON COLUMN "AXIS"."AGEREDCOM"."CPOLNIVEL" IS 'Como cpernivel pero sobre polizas';
   COMMENT ON TABLE "AXIS"."AGEREDCOM"  IS 'Red comercial padre de un agente';
  GRANT UPDATE ON "AXIS"."AGEREDCOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGEREDCOM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGEREDCOM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGEREDCOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGEREDCOM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGEREDCOM" TO "PROGRAMADORESCSI";
