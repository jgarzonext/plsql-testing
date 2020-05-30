--------------------------------------------------------
--  DDL for Table SEGUROSCAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."SEGUROSCAR" 
   (	"SSESION" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"CESTADO" NUMBER(1,0), 
	"NERROR" NUMBER(6,0), 
	"CMOTMOV" NUMBER(6,0), 
	"NRIESGO" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SEGUROSCAR"."SSESION" IS 'C�digo de la sesion';
   COMMENT ON COLUMN "AXIS"."SEGUROSCAR"."SSEGURO" IS 'C�digo del seguros';
   COMMENT ON COLUMN "AXIS"."SEGUROSCAR"."CESTADO" IS 'C�digo del estado de la poliza 0 correcto,1 con errore';
   COMMENT ON COLUMN "AXIS"."SEGUROSCAR"."NERROR" IS 'C�digo del error';
   COMMENT ON COLUMN "AXIS"."SEGUROSCAR"."CMOTMOV" IS 'C�digo del motivo del movimiento';
   COMMENT ON COLUMN "AXIS"."SEGUROSCAR"."NRIESGO" IS 'C�digo del riesgo';
  GRANT UPDATE ON "AXIS"."SEGUROSCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROSCAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SEGUROSCAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SEGUROSCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROSCAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SEGUROSCAR" TO "PROGRAMADORESCSI";
