--------------------------------------------------------
--  DDL for Table REDCOMERCIAL
--------------------------------------------------------

  CREATE TABLE "AXIS"."REDCOMERCIAL" 
   (	"CEMPRES" NUMBER(2,0), 
	"CAGENTE" NUMBER, 
	"FMOVINI" DATE, 
	"FMOVFIN" DATE, 
	"CTIPAGE" NUMBER(2,0), 
	"CPADRE" NUMBER, 
	"CUSUALT" VARCHAR2(30 BYTE) DEFAULT USER, 
	"FALTA" DATE DEFAULT SYSDATE, 
	"CUSUMOD" VARCHAR2(30 BYTE) DEFAULT USER, 
	"FMODIFI" DATE DEFAULT SYSDATE, 
	"CCOMINDT" NUMBER(1,0) DEFAULT 0, 
	"CPERVISIO" NUMBER, 
	"CPERNIVEL" NUMBER(6,0), 
	"CAGEIND" NUMBER, 
	"CPOLVISIO" NUMBER, 
	"CPOLNIVEL" NUMBER(6,0), 
	"CENLACE" NUMBER DEFAULT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."REDCOMERCIAL"."CEMPRES" IS 'Código de Empresa';
   COMMENT ON COLUMN "AXIS"."REDCOMERCIAL"."CAGENTE" IS 'Código de agente';
   COMMENT ON COLUMN "AXIS"."REDCOMERCIAL"."FMOVINI" IS 'Fecha inicial de vigencia';
   COMMENT ON COLUMN "AXIS"."REDCOMERCIAL"."FMOVFIN" IS 'Fecha final de validez';
   COMMENT ON COLUMN "AXIS"."REDCOMERCIAL"."CTIPAGE" IS 'Tipo de agente "hijo"';
   COMMENT ON COLUMN "AXIS"."REDCOMERCIAL"."CPADRE" IS 'Código de agente';
   COMMENT ON COLUMN "AXIS"."REDCOMERCIAL"."CPERVISIO" IS 'Código del agente que nos indica el nivel de visión de personas. Fk contra agentes.cagente.';
   COMMENT ON COLUMN "AXIS"."REDCOMERCIAL"."CPERNIVEL" IS 'Nivel visión personas. 1: Ve los datos de personas que tengan el código de agente introducido en el campo cpervisio (ve sus personas) o personas que tengan un código de agente de la red comercial que este por debajo del agente inroducio en el campo cpervisio (ve las personas de los agentes de la red comercial que estan por debajo suyo)// 2: Ve los datos de personas que tengan el código de agente introducido en el campo cpervisio (ve sus personas).';
   COMMENT ON COLUMN "AXIS"."REDCOMERCIAL"."CAGEIND" IS 'Agente Comisión Indirecta';
   COMMENT ON COLUMN "AXIS"."REDCOMERCIAL"."CPOLVISIO" IS 'Código del agente que nos indica el nivel de visión de pólizas. Fk contra agentes.cagente.';
   COMMENT ON COLUMN "AXIS"."REDCOMERCIAL"."CPOLNIVEL" IS 'Nivel visión pólizas. 1: Ve los datos de pólizas que tengan el código de agente introducido en el campo cpolvisio (ve sus pólizas) o pólizas que tengan un código de agente de la red comercial que este por debajo del agente inroducio en el campo cpolvisio (ve las polizas de los agentes de la red comercial que estan por debajo suyo) // 2: Ve los datos de pólizas que tengan el código de agente introducido en el campo cpolvisio (ve sus pólizas).';
  GRANT UPDATE ON "AXIS"."REDCOMERCIAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REDCOMERCIAL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REDCOMERCIAL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REDCOMERCIAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REDCOMERCIAL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REDCOMERCIAL" TO "PROGRAMADORESCSI";
