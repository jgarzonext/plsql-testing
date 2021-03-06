--------------------------------------------------------
--  DDL for Table CODIASOCCOND
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIASOCCOND" 
   (	"SASOCIA" NUMBER(6,0), 
	"CREGLA" NUMBER(6,0), 
	"CPERFEXG" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODIASOCCOND"."SASOCIA" IS 'Secuencial de Asociaci�n';
   COMMENT ON COLUMN "AXIS"."CODIASOCCOND"."CREGLA" IS 'C�digo de Regla';
   COMMENT ON COLUMN "AXIS"."CODIASOCCOND"."CPERFEXG" IS 'C�digo de Perfil Exigible';
   COMMENT ON TABLE "AXIS"."CODIASOCCOND"  IS 'C�digos de las Asociaciones de condiciones';
  GRANT UPDATE ON "AXIS"."CODIASOCCOND" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIASOCCOND" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIASOCCOND" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIASOCCOND" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIASOCCOND" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIASOCCOND" TO "PROGRAMADORESCSI";
