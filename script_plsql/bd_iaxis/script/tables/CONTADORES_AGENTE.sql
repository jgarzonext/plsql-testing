--------------------------------------------------------
--  DDL for Table CONTADORES_AGENTE
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONTADORES_AGENTE" 
   (	"CEMPRES" NUMBER(2,0), 
	"CTIPAGE" NUMBER(2,0), 
	"CONTADOR" NUMBER(10,0), 
	"CTIPCONTA" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CONTADORES_AGENTE"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."CONTADORES_AGENTE"."CTIPAGE" IS 'Tipo de agente';
   COMMENT ON COLUMN "AXIS"."CONTADORES_AGENTE"."CONTADOR" IS 'Contador';
   COMMENT ON COLUMN "AXIS"."CONTADORES_AGENTE"."CTIPCONTA" IS 'Tipo de contador para agrupar niveles jer�rquicos';
   COMMENT ON TABLE "AXIS"."CONTADORES_AGENTE"  IS 'Tabla con los contadores del tipo agente';
  GRANT UPDATE ON "AXIS"."CONTADORES_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTADORES_AGENTE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONTADORES_AGENTE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONTADORES_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTADORES_AGENTE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONTADORES_AGENTE" TO "PROGRAMADORESCSI";