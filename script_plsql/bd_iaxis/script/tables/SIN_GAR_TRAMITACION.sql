--------------------------------------------------------
--  DDL for Table SIN_GAR_TRAMITACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_GAR_TRAMITACION" 
   (	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(4,0), 
	"CTRAMIT" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
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

   COMMENT ON COLUMN "AXIS"."SIN_GAR_TRAMITACION"."SPRODUC" IS 'Secuencia Producto';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_TRAMITACION"."CACTIVI" IS 'C�digo Actividad';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_TRAMITACION"."CTRAMIT" IS 'C�digo Tramitaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_TRAMITACION"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_TRAMITACION"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_TRAMITACION"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_TRAMITACION"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_TRAMITACION"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON TABLE "AXIS"."SIN_GAR_TRAMITACION"  IS 'Garant�as por Tramitaciones de Producto';
  GRANT UPDATE ON "AXIS"."SIN_GAR_TRAMITACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_GAR_TRAMITACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_GAR_TRAMITACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_GAR_TRAMITACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_GAR_TRAMITACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_GAR_TRAMITACION" TO "PROGRAMADORESCSI";
