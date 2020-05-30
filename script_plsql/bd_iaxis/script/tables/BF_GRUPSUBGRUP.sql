--------------------------------------------------------
--  DDL for Table BF_GRUPSUBGRUP
--------------------------------------------------------

  CREATE TABLE "AXIS"."BF_GRUPSUBGRUP" 
   (	"CEMPRES" NUMBER(6,0), 
	"CGRUP" NUMBER(6,0), 
	"CSUBGRUP" NUMBER(6,0), 
	"CVERSION" NUMBER(6,0), 
	"CTIPGRUPSUBGRUP" NUMBER(2,0), 
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

   COMMENT ON COLUMN "AXIS"."BF_GRUPSUBGRUP"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."BF_GRUPSUBGRUP"."CGRUP" IS 'C�digo de Grupo de Bonus/Franqu�cias';
   COMMENT ON COLUMN "AXIS"."BF_GRUPSUBGRUP"."CSUBGRUP" IS 'C�digo de Subgrupo de Bonus/Franqu�cias';
   COMMENT ON COLUMN "AXIS"."BF_GRUPSUBGRUP"."CVERSION" IS 'C�digo de Versi�n';
   COMMENT ON COLUMN "AXIS"."BF_GRUPSUBGRUP"."CTIPGRUPSUBGRUP" IS '1 = Lista Valores; 2 = Libre; 3 = Libre total(Bloq Franq); 4 = Libre total(Bloq Gar)';
   COMMENT ON COLUMN "AXIS"."BF_GRUPSUBGRUP"."CUSUALT" IS 'Usuario creaci�n';
   COMMENT ON COLUMN "AXIS"."BF_GRUPSUBGRUP"."FALTA" IS 'Fecha creaci�n';
   COMMENT ON COLUMN "AXIS"."BF_GRUPSUBGRUP"."CUSUMOD" IS 'Usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."BF_GRUPSUBGRUP"."FMODIFI" IS 'Fecha modificaci�n';
   COMMENT ON TABLE "AXIS"."BF_GRUPSUBGRUP"  IS 'Subgrupos de un grupo ';
  GRANT UPDATE ON "AXIS"."BF_GRUPSUBGRUP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BF_GRUPSUBGRUP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."BF_GRUPSUBGRUP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."BF_GRUPSUBGRUP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BF_GRUPSUBGRUP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."BF_GRUPSUBGRUP" TO "PROGRAMADORESCSI";
