--------------------------------------------------------
--  DDL for Table COMISIONVIG_AGENTE
--------------------------------------------------------

  CREATE TABLE "AXIS"."COMISIONVIG_AGENTE" 
   (	"CAGENTE" NUMBER, 
	"CCOMISI" NUMBER, 
	"FINIVIG" DATE, 
	"FFINVIG" DATE, 
	"CCOMIND" NUMBER(1,0) DEFAULT 0, 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FMODIF" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."COMISIONVIG_AGENTE"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."COMISIONVIG_AGENTE"."CCOMISI" IS 'C�digo de la comisi�n';
   COMMENT ON COLUMN "AXIS"."COMISIONVIG_AGENTE"."FINIVIG" IS 'Fecha inicio vigencia del cuadro de comisi�n asignado al agente';
   COMMENT ON COLUMN "AXIS"."COMISIONVIG_AGENTE"."FFINVIG" IS 'Fecha fin vigencia del cuadro de comisi�n asignado al agente';
   COMMENT ON COLUMN "AXIS"."COMISIONVIG_AGENTE"."CCOMIND" IS 'Indica si la comisi�n es indirecta (1) o no (0)';
   COMMENT ON COLUMN "AXIS"."COMISIONVIG_AGENTE"."FALTA" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."COMISIONVIG_AGENTE"."CUSUALT" IS 'Usuario alta';
   COMMENT ON COLUMN "AXIS"."COMISIONVIG_AGENTE"."FMODIF" IS 'Fecha modificacion';
   COMMENT ON COLUMN "AXIS"."COMISIONVIG_AGENTE"."CUSUMOD" IS 'Usuario modificacion';
   COMMENT ON TABLE "AXIS"."COMISIONVIG_AGENTE"  IS 'Vigencias del cuadro de comisi�n/sobrecomisi�n del agente';
  GRANT UPDATE ON "AXIS"."COMISIONVIG_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMISIONVIG_AGENTE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COMISIONVIG_AGENTE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."COMISIONVIG_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMISIONVIG_AGENTE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COMISIONVIG_AGENTE" TO "PROGRAMADORESCSI";
