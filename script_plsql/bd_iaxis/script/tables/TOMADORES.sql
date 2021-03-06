--------------------------------------------------------
--  DDL for Table TOMADORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."TOMADORES" 
   (	"SPERSON" NUMBER(10,0), 
	"SSEGURO" NUMBER, 
	"NORDTOM" NUMBER(1,0), 
	"CDOMICI" NUMBER, 
	"CEXISTEPAGADOR" NUMBER(1,0), 
	"CTIPNOT" NUMBER(2,0) DEFAULT 3
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TOMADORES"."SPERSON" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."TOMADORES"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."TOMADORES"."NORDTOM" IS 'Orden de los diferentes tomadores, 0 = Principal (Correo, ...)';
   COMMENT ON COLUMN "AXIS"."TOMADORES"."CDOMICI" IS 'C�digo de domicilio';
   COMMENT ON COLUMN "AXIS"."TOMADORES"."CEXISTEPAGADOR" IS 'Indica si existe un pagador del recibo distinto del tomador (0=No 1=Si)';
  GRANT UPDATE ON "AXIS"."TOMADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TOMADORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TOMADORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TOMADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TOMADORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TOMADORES" TO "PROGRAMADORESCSI";
