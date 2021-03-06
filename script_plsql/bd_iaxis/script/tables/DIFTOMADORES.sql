--------------------------------------------------------
--  DDL for Table DIFTOMADORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."DIFTOMADORES" 
   (	"SPERSON" NUMBER(10,0), 
	"SSEGURO" NUMBER, 
	"CDOMICI" NUMBER(2,0), 
	"NORDTOM" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DIFTOMADORES"."SPERSON" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."DIFTOMADORES"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."DIFTOMADORES"."CDOMICI" IS 'C�digo de domicilio';
   COMMENT ON COLUMN "AXIS"."DIFTOMADORES"."NORDTOM" IS 'Orden de los diferentes tomadores, 0 = Principal (Correo, ...)';
  GRANT UPDATE ON "AXIS"."DIFTOMADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIFTOMADORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DIFTOMADORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DIFTOMADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIFTOMADORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DIFTOMADORES" TO "PROGRAMADORESCSI";
