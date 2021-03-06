--------------------------------------------------------
--  DDL for Table MOVSINCOA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MOVSINCOA" 
   (	"NSINIES" NUMBER(8,0), 
	"CCOMPANI" NUMBER(3,0), 
	"CMOVIMI" NUMBER(2,0), 
	"FCONTAB" DATE, 
	"PCESCOA" NUMBER(5,2), 
	"ICESCOA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MOVSINCOA"."NSINIES" IS 'N�mero de siniestro';
   COMMENT ON COLUMN "AXIS"."MOVSINCOA"."CCOMPANI" IS 'C�digo de compa�ia';
   COMMENT ON COLUMN "AXIS"."MOVSINCOA"."CMOVIMI" IS 'C�digo de movimiento';
   COMMENT ON COLUMN "AXIS"."MOVSINCOA"."FCONTAB" IS 'Fecha contable';
   COMMENT ON COLUMN "AXIS"."MOVSINCOA"."PCESCOA" IS 'Porcentaje de cesi�n';
   COMMENT ON COLUMN "AXIS"."MOVSINCOA"."ICESCOA" IS 'Importe de cesi�n';
  GRANT UPDATE ON "AXIS"."MOVSINCOA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MOVSINCOA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MOVSINCOA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MOVSINCOA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MOVSINCOA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MOVSINCOA" TO "PROGRAMADORESCSI";
