--------------------------------------------------------
--  DDL for Table PESOS_CAMPANYA_MV
--------------------------------------------------------

  CREATE TABLE "AXIS"."PESOS_CAMPANYA_MV" 
   (	"SPRODUC" NUMBER(6,0), 
	"BASICO" NUMBER(1,0), 
	"NPESO" NUMBER(3,0), 
	"FINIEFE" DATE, 
	"FFINEFE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PESOS_CAMPANYA_MV"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."PESOS_CAMPANYA_MV"."BASICO" IS 'Indica si el producto es b�sico o completo';
   COMMENT ON COLUMN "AXIS"."PESOS_CAMPANYA_MV"."NPESO" IS 'Peso correspondiente a cada producto';
   COMMENT ON COLUMN "AXIS"."PESOS_CAMPANYA_MV"."FINIEFE" IS 'Fecha inicio de la relaci�n peso-producto';
   COMMENT ON COLUMN "AXIS"."PESOS_CAMPANYA_MV"."FFINEFE" IS 'Fecha fin de la relaci�n peso-producto';
   COMMENT ON TABLE "AXIS"."PESOS_CAMPANYA_MV"  IS 'Pesos por productos para las campa�as';
  GRANT UPDATE ON "AXIS"."PESOS_CAMPANYA_MV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PESOS_CAMPANYA_MV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PESOS_CAMPANYA_MV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PESOS_CAMPANYA_MV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PESOS_CAMPANYA_MV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PESOS_CAMPANYA_MV" TO "PROGRAMADORESCSI";