--------------------------------------------------------
--  DDL for Table PDS_ACC_CARTERA
--------------------------------------------------------

  CREATE TABLE "AXIS"."PDS_ACC_CARTERA" 
   (	"CEMPRES" NUMBER(2,0), 
	"CTIPO" NUMBER(3,0), 
	"SPRODUC" NUMBER(6,0), 
	"NORDEN" NUMBER(3,0), 
	"DINACCION" VARCHAR2(1 BYTE), 
	"TCAMPO" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PDS_ACC_CARTERA"."CEMPRES" IS 'Codigo empresa';
   COMMENT ON COLUMN "AXIS"."PDS_ACC_CARTERA"."CTIPO" IS '0=Antes, 1=Despu�s';
   COMMENT ON COLUMN "AXIS"."PDS_ACC_CARTERA"."SPRODUC" IS 'Secuencia producto';
   COMMENT ON COLUMN "AXIS"."PDS_ACC_CARTERA"."NORDEN" IS 'Orden acci�n';
   COMMENT ON COLUMN "AXIS"."PDS_ACC_CARTERA"."DINACCION" IS 'Tipo de acci�n din�mica a realizar: F-Funci�n';
   COMMENT ON COLUMN "AXIS"."PDS_ACC_CARTERA"."TCAMPO" IS 'Acci�n a realizar';
   COMMENT ON TABLE "AXIS"."PDS_ACC_CARTERA"  IS 'Acciones a realizar antes/despues cartera';
  GRANT UPDATE ON "AXIS"."PDS_ACC_CARTERA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_ACC_CARTERA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PDS_ACC_CARTERA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PDS_ACC_CARTERA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_ACC_CARTERA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PDS_ACC_CARTERA" TO "PROGRAMADORESCSI";
