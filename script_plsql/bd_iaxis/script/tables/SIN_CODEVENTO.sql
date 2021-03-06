--------------------------------------------------------
--  DDL for Table SIN_CODEVENTO
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_CODEVENTO" 
   (	"CEVENTO" VARCHAR2(20 BYTE), 
	"FINIEVE" DATE, 
	"FFINEVE" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_CODEVENTO"."CEVENTO" IS 'C�digo Tramitaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_CODEVENTO"."FINIEVE" IS 'Fecha Inicio Evento';
   COMMENT ON COLUMN "AXIS"."SIN_CODEVENTO"."FFINEVE" IS 'Fecha Fin Evento';
   COMMENT ON COLUMN "AXIS"."SIN_CODEVENTO"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."SIN_CODEVENTO"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."SIN_CODEVENTO"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_CODEVENTO"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON TABLE "AXIS"."SIN_CODEVENTO"  IS 'Eventos de siniestros';
  GRANT UPDATE ON "AXIS"."SIN_CODEVENTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_CODEVENTO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_CODEVENTO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_CODEVENTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_CODEVENTO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_CODEVENTO" TO "PROGRAMADORESCSI";
