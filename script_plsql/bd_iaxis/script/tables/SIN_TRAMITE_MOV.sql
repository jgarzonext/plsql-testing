--------------------------------------------------------
--  DDL for Table SIN_TRAMITE_MOV
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_TRAMITE_MOV" 
   (	"NSINIES" VARCHAR2(14 BYTE), 
	"NTRAMTE" NUMBER, 
	"NMOVTTE" NUMBER, 
	"CESTTTE" NUMBER, 
	"CCAUEST" NUMBER, 
	"CUNITRA" VARCHAR2(4 BYTE), 
	"CTRAMITAD" VARCHAR2(4 BYTE), 
	"FESTTRA" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_TRAMITE_MOV"."NSINIES" IS 'N�mero Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITE_MOV"."NTRAMTE" IS 'N�mero Tr�mite';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITE_MOV"."NMOVTTE" IS 'N�mero Movimiento Tr�mite';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITE_MOV"."CESTTTE" IS 'C�digo Estado Tr�mite (VF:6)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITE_MOV"."CCAUEST" IS 'Causa cambio de estado';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITE_MOV"."CUNITRA" IS 'C�digo de unidad de tramitaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITE_MOV"."CTRAMITAD" IS 'C�digo de tramitador';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITE_MOV"."FESTTRA" IS 'Fecha estado tr�mite';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITE_MOV"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITE_MOV"."FALTA" IS 'Fecha de alta';
   COMMENT ON TABLE "AXIS"."SIN_TRAMITE_MOV"  IS 'Movimientos tr�mites de siniestros.';
  GRANT UPDATE ON "AXIS"."SIN_TRAMITE_MOV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITE_MOV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_TRAMITE_MOV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_TRAMITE_MOV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITE_MOV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_TRAMITE_MOV" TO "PROGRAMADORESCSI";
