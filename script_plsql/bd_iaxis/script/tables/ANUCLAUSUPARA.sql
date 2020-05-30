--------------------------------------------------------
--  DDL for Table ANUCLAUSUPARA
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUCLAUSUPARA" 
   (	"SCLAGEN" NUMBER(4,0), 
	"NPARAME" NUMBER(2,0), 
	"CFORMAT" NUMBER(2,0), 
	"TPARAME" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUCLAUSUPARA"."SCLAGEN" IS 'Identificador de cl�usula';
   COMMENT ON COLUMN "AXIS"."ANUCLAUSUPARA"."NPARAME" IS 'N�mero de par�metro';
   COMMENT ON COLUMN "AXIS"."ANUCLAUSUPARA"."CFORMAT" IS 'Tipo de par�metro';
   COMMENT ON COLUMN "AXIS"."ANUCLAUSUPARA"."TPARAME" IS 'Descripci�n del par�metro';
   COMMENT ON TABLE "AXIS"."ANUCLAUSUPARA"  IS 'Informaci�n clausulas parametros, guardada antes de anular movimiento';
  GRANT UPDATE ON "AXIS"."ANUCLAUSUPARA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUCLAUSUPARA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUCLAUSUPARA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUCLAUSUPARA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUCLAUSUPARA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUCLAUSUPARA" TO "PROGRAMADORESCSI";