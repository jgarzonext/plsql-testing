--------------------------------------------------------
--  DDL for Table PARCONTRATOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PARCONTRATOS" 
   (	"SCONTRA" NUMBER, 
	"NVERSIO" NUMBER, 
	"SPARCNT" VARCHAR2(20 BYTE), 
	"SPRODUC" NUMBER, 
	"CVALPAR" NUMBER, 
	"TVALPAR" VARCHAR2(20 BYTE), 
	"FVALPAR" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PARCONTRATOS"."SCONTRA" IS 'Identificador �nico del contrato';
   COMMENT ON COLUMN "AXIS"."PARCONTRATOS"."NVERSIO" IS 'Version contrato';
   COMMENT ON COLUMN "AXIS"."PARCONTRATOS"."SPARCNT" IS 'Parametro CODPARAM';
   COMMENT ON COLUMN "AXIS"."PARCONTRATOS"."SPRODUC" IS 'Identificador Producto';
   COMMENT ON COLUMN "AXIS"."PARCONTRATOS"."CVALPAR" IS 'Valor numerico';
   COMMENT ON COLUMN "AXIS"."PARCONTRATOS"."TVALPAR" IS 'Valor texto';
   COMMENT ON COLUMN "AXIS"."PARCONTRATOS"."FVALPAR" IS 'Valor fecha';
  GRANT UPDATE ON "AXIS"."PARCONTRATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARCONTRATOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PARCONTRATOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PARCONTRATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARCONTRATOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PARCONTRATOS" TO "PROGRAMADORESCSI";
