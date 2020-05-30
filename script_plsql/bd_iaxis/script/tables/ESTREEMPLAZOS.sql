--------------------------------------------------------
--  DDL for Table ESTREEMPLAZOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTREEMPLAZOS" 
   (	"SSEGURO" NUMBER, 
	"SREEMPL" NUMBER, 
	"FMOVDIA" DATE, 
	"CUSUARIO" VARCHAR2(20 BYTE), 
	"CAGENTE" NUMBER, 
	"CTIPO" NUMBER(3,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTREEMPLAZOS"."SSEGURO" IS 'Identificador de la p�liza que reemplaza a la otra (P�liza nueva)';
   COMMENT ON COLUMN "AXIS"."ESTREEMPLAZOS"."SREEMPL" IS 'Identificador de la p�liza a reemplazar (p�liza de reemplazo)';
   COMMENT ON COLUMN "AXIS"."ESTREEMPLAZOS"."FMOVDIA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."ESTREEMPLAZOS"."CUSUARIO" IS 'Usuario que da de alta el registro';
   COMMENT ON COLUMN "AXIS"."ESTREEMPLAZOS"."CAGENTE" IS 'C�digo de agente que da de alta el registro';
   COMMENT ON COLUMN "AXIS"."ESTREEMPLAZOS"."CTIPO" IS 'Tipo de reemplazo';
   COMMENT ON TABLE "AXIS"."ESTREEMPLAZOS"  IS 'Tabla de reemplazos (est)';
  GRANT UPDATE ON "AXIS"."ESTREEMPLAZOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTREEMPLAZOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTREEMPLAZOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTREEMPLAZOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTREEMPLAZOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTREEMPLAZOS" TO "PROGRAMADORESCSI";