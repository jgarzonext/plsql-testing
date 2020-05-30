--------------------------------------------------------
--  DDL for Table CTGAR_CODEUDOR
--------------------------------------------------------

  CREATE TABLE "AXIS"."CTGAR_CODEUDOR" 
   (	"SCONTGAR" NUMBER, 
	"NMOVIMI" NUMBER, 
	"SPERSON" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CTGAR_CODEUDOR"."SCONTGAR" IS 'Identificador único / Secuencia de la contragarantía';
   COMMENT ON COLUMN "AXIS"."CTGAR_CODEUDOR"."NMOVIMI" IS 'Numero de movimiento';
   COMMENT ON COLUMN "AXIS"."CTGAR_CODEUDOR"."SPERSON" IS 'Persona que se encuentra como codeudor de la contragarantía';
  GRANT UPDATE ON "AXIS"."CTGAR_CODEUDOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CTGAR_CODEUDOR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CTGAR_CODEUDOR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CTGAR_CODEUDOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CTGAR_CODEUDOR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CTGAR_CODEUDOR" TO "PROGRAMADORESCSI";
