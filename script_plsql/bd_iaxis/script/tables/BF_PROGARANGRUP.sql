--------------------------------------------------------
--  DDL for Table BF_PROGARANGRUP
--------------------------------------------------------

  CREATE TABLE "AXIS"."BF_PROGARANGRUP" 
   (	"CEMPRES" NUMBER(6,0), 
	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"FFECINI" DATE, 
	"CODGRUP" NUMBER(6,0), 
	"FFECFIN" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."BF_PROGARANGRUP"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."BF_PROGARANGRUP"."SPRODUC" IS 'C�digo del Producto';
   COMMENT ON COLUMN "AXIS"."BF_PROGARANGRUP"."CACTIVI" IS 'C�digo de Actividad';
   COMMENT ON COLUMN "AXIS"."BF_PROGARANGRUP"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."BF_PROGARANGRUP"."FFECINI" IS 'Fecha inicio registro';
   COMMENT ON COLUMN "AXIS"."BF_PROGARANGRUP"."CODGRUP" IS 'C�digo de Grupo de Bonus/Franqu�cias';
   COMMENT ON COLUMN "AXIS"."BF_PROGARANGRUP"."FFECFIN" IS 'Fecha fin registro';
   COMMENT ON COLUMN "AXIS"."BF_PROGARANGRUP"."CUSUALT" IS 'Usuario creaci�n';
   COMMENT ON COLUMN "AXIS"."BF_PROGARANGRUP"."FALTA" IS 'Fecha creaci�n';
   COMMENT ON COLUMN "AXIS"."BF_PROGARANGRUP"."CUSUMOD" IS 'Usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."BF_PROGARANGRUP"."FMODIFI" IS 'Fecha modificaci�n';
   COMMENT ON TABLE "AXIS"."BF_PROGARANGRUP"  IS 'Producto/Versi�n propia/Actividad/Garant�a';
  GRANT SELECT ON "AXIS"."BF_PROGARANGRUP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."BF_PROGARANGRUP" TO "PROGRAMADORESCSI";
  GRANT INSERT ON "AXIS"."BF_PROGARANGRUP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."BF_PROGARANGRUP" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."BF_PROGARANGRUP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BF_PROGARANGRUP" TO "R_AXIS";