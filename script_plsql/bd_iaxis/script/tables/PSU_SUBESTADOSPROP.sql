--------------------------------------------------------
--  DDL for Table PSU_SUBESTADOSPROP
--------------------------------------------------------

  CREATE TABLE "AXIS"."PSU_SUBESTADOSPROP" 
   (	"SSEGURO" NUMBER, 
	"NVERSION" NUMBER(4,0), 
	"NVERSIONSUBEST" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CSUBESTADO" NUMBER(4,0), 
	"COBSERVACIONES" VARCHAR2(500 BYTE), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PSU_SUBESTADOSPROP"."SSEGURO" IS 'sseguro';
   COMMENT ON COLUMN "AXIS"."PSU_SUBESTADOSPROP"."NVERSION" IS 'N�� movimiento en PSU_RETENIDAS';
   COMMENT ON COLUMN "AXIS"."PSU_SUBESTADOSPROP"."NVERSIONSUBEST" IS 'N�� movimiento de subestado';
   COMMENT ON COLUMN "AXIS"."PSU_SUBESTADOSPROP"."NMOVIMI" IS 'Nmovimi de la propuesta';
   COMMENT ON COLUMN "AXIS"."PSU_SUBESTADOSPROP"."CSUBESTADO" IS 'Subestado de la propuesta(Devalores 8001103)';
   COMMENT ON COLUMN "AXIS"."PSU_SUBESTADOSPROP"."COBSERVACIONES" IS 'Observaciones';
   COMMENT ON COLUMN "AXIS"."PSU_SUBESTADOSPROP"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."PSU_SUBESTADOSPROP"."CUSUALT" IS 'Usuario alta';
  GRANT UPDATE ON "AXIS"."PSU_SUBESTADOSPROP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PSU_SUBESTADOSPROP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PSU_SUBESTADOSPROP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PSU_SUBESTADOSPROP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PSU_SUBESTADOSPROP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PSU_SUBESTADOSPROP" TO "PROGRAMADORESCSI";
