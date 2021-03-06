--------------------------------------------------------
--  DDL for Table NORMAART_CONF
--------------------------------------------------------

  CREATE TABLE "AXIS"."NORMAART_CONF" 
   (	"CEMPRES" NUMBER(2,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"CNORMA" NUMBER, 
	"CCODARTICULO" NUMBER, 
	"PRECARG" NUMBER(6,2), 
	"IEXTRAP" NUMBER(19,12), 
	"CRETEN" CHAR(1 BYTE), 
	"FFECINI" DATE, 
	"FFECFIN" DATE, 
	"CGRURIES" NUMBER(2,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CEMPRES" IS 'C�digo de la empresa';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CRAMO" IS 'C�digo del ramo';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CMODALI" IS 'C�digo de la modalidad';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CTIPSEG" IS 'C�digo del tipo de seguro';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CCOLECT" IS 'Codigo de colectividad';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CACTIVI" IS 'C�digo de actividad';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CNORMA" IS 'Norma o c�digo';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CCODARTICULO" IS 'C�digo del articulo';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."PRECARG" IS 'Sobreprima';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."IEXTRAP" IS 'Extraprima';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CRETEN" IS '�Se retiene la poliza? (S=Si, N=No, R=Rechazar, F=Necesidad Facultativo)';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."FFECINI" IS 'Fecha de inicio vigencia';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."FFECFIN" IS 'Fecha fin vigencia';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CGRURIES" IS 'Codigo de grupo de riesgo';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."FALTA" IS 'Fecha en la que se crea el registro';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."NORMAART_CONF"."FMODIFI" IS 'Fecha en que se modifica el registro';
  GRANT UPDATE ON "AXIS"."NORMAART_CONF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."NORMAART_CONF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."NORMAART_CONF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."NORMAART_CONF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."NORMAART_CONF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."NORMAART_CONF" TO "PROGRAMADORESCSI";
