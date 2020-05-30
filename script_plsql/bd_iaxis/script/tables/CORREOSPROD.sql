--------------------------------------------------------
--  DDL for Table CORREOSPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."CORREOSPROD" 
   (	"CCLALIST" NUMBER(3,0), 
	"CMODO" NUMBER(3,0), 
	"CROL" NUMBER(3,0), 
	"SPRODUC" NUMBER(6,0), 
	"SCORREO" NUMBER(7,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CORREOSPROD"."CCLALIST" IS 'clase de lista (V.F. 800040 Externa, Interna)';
   COMMENT ON COLUMN "AXIS"."CORREOSPROD"."CMODO" IS 'Codigo de modo (V.F 8000913)';
   COMMENT ON COLUMN "AXIS"."CORREOSPROD"."CROL" IS 'C�digo de rol de la persona (V.F.8000914)';
   COMMENT ON COLUMN "AXIS"."CORREOSPROD"."SPRODUC" IS 'Secuencia del producto';
   COMMENT ON COLUMN "AXIS"."CORREOSPROD"."SCORREO" IS 'identificador del correo';
   COMMENT ON TABLE "AXIS"."CORREOSPROD"  IS 'Tabla de parametrizacion de envio de correos';
  GRANT UPDATE ON "AXIS"."CORREOSPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CORREOSPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CORREOSPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CORREOSPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CORREOSPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CORREOSPROD" TO "PROGRAMADORESCSI";
