--------------------------------------------------------
--  DDL for Table SIN_TRAMITACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_TRAMITACION" 
   (	"NSINIES" VARCHAR2(14 BYTE), 
	"NTRAMIT" NUMBER(4,0), 
	"CTRAMIT" NUMBER(4,0), 
	"CTCAUSIN" NUMBER(2,0), 
	"CINFORM" NUMBER(1,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"CCULPAB" NUMBER(1,0), 
	"NSINCIA" VARCHAR2(50 BYTE), 
	"CCOMPANI" NUMBER(3,0), 
	"CPOLCIA" VARCHAR2(40 BYTE), 
	"CMONTRA" VARCHAR2(3 BYTE), 
	"IPERIT" NUMBER, 
	"NTRAMTE" NUMBER DEFAULT null, 
	"CSUBTIPTRA" NUMBER(3,0), 
	"NRADICA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."NSINIES" IS 'N�mero Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."NTRAMIT" IS 'N�mero Tramitaci�n Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."CTRAMIT" IS 'C�digo Tramitaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."CTCAUSIN" IS 'C�digo Tipo Da�o';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."CINFORM" IS 'Indicador Tramitaci�n Informativa';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."CCULPAB" IS 'Responsabilidad Tramitaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."NSINCIA" IS 'N�mero Siniestro Compa��a Aseg. Contraria';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."CCOMPANI" IS 'C�digo Compa��a Aseg. Contraria';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."CPOLCIA" IS 'C�digo P�liza Compa��a Aseg. Contraria';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."CMONTRA" IS 'C�digo Moneda Tramitaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."IPERIT" IS 'Importe Peritaje';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."NTRAMTE" IS 'N�mero Tr�mite';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITACION"."CSUBTIPTRA" IS 'Subtipo de tramitacion (vf 1090) dependiente de (vf 800.4)';
   COMMENT ON TABLE "AXIS"."SIN_TRAMITACION"  IS 'Tramitaciones por Siniestro';
  GRANT UPDATE ON "AXIS"."SIN_TRAMITACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_TRAMITACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_TRAMITACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_TRAMITACION" TO "PROGRAMADORESCSI";
