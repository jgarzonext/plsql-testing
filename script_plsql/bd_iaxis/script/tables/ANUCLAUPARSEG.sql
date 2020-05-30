--------------------------------------------------------
--  DDL for Table ANUCLAUPARSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUCLAUPARSEG" 
   (	"SSEGURO" NUMBER, 
	"SCLAGEN" NUMBER(4,0), 
	"NPARAME" NUMBER(2,0), 
	"TVALOR" VARCHAR2(300 BYTE), 
	"CTIPPAR" NUMBER(1,0), 
	"NMOVIMI" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUCLAUPARSEG"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."ANUCLAUPARSEG"."SCLAGEN" IS 'Identificador de cl�usula';
   COMMENT ON COLUMN "AXIS"."ANUCLAUPARSEG"."NPARAME" IS 'N�mero de par�metro';
   COMMENT ON COLUMN "AXIS"."ANUCLAUPARSEG"."TVALOR" IS 'Valor del par�metro';
   COMMENT ON COLUMN "AXIS"."ANUCLAUPARSEG"."CTIPPAR" IS 'Tipo de par�metro';
   COMMENT ON TABLE "AXIS"."ANUCLAUPARSEG"  IS 'Informaci�n clausulas seguros, guardada antes de anular movimiento';
  GRANT UPDATE ON "AXIS"."ANUCLAUPARSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUCLAUPARSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUCLAUPARSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUCLAUPARSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUCLAUPARSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUCLAUPARSEG" TO "PROGRAMADORESCSI";
