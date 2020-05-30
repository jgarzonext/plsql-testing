--------------------------------------------------------
--  DDL for Table AGENSEGU
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGENSEGU" 
   (	"SSEGURO" NUMBER, 
	"NLINEA" NUMBER(6,0), 
	"FALTA" DATE, 
	"CTIPREG" NUMBER(3,0), 
	"CESTADO" NUMBER(1,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"TTITULO" VARCHAR2(100 BYTE), 
	"FFINALI" DATE, 
	"TTEXTOS" VARCHAR2(4000 BYTE), 
	"CMANUAL" NUMBER(1,0), 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGENSEGU"."SSEGURO" IS 'Identificador de la Póliza asociada al apunte';
   COMMENT ON COLUMN "AXIS"."AGENSEGU"."NLINEA" IS 'Numero de apunte en la agenga por póliza';
   COMMENT ON COLUMN "AXIS"."AGENSEGU"."FALTA" IS 'Fecha de alta del apunte en la agenda';
   COMMENT ON COLUMN "AXIS"."AGENSEGU"."CTIPREG" IS 'Concepto de apunte en la agenda. Valor fijo: 21';
   COMMENT ON COLUMN "AXIS"."AGENSEGU"."CESTADO" IS 'Estado del apunte en la agenda. Valor fijo 22 (0:Pendiente/1:Finalizado/2:Anulado)';
   COMMENT ON COLUMN "AXIS"."AGENSEGU"."CUSUALT" IS 'Usuario que realiza el apunte en la agenda';
   COMMENT ON COLUMN "AXIS"."AGENSEGU"."TTITULO" IS 'Título del apunte en la agenda';
   COMMENT ON COLUMN "AXIS"."AGENSEGU"."FFINALI" IS 'Fecha Finalización del apunte en la agenda';
   COMMENT ON COLUMN "AXIS"."AGENSEGU"."TTEXTOS" IS 'Texto del apunte en la agenda';
   COMMENT ON COLUMN "AXIS"."AGENSEGU"."CMANUAL" IS 'Indica si el apunte en la agenda es Manual o Automático. Valor fijo 108 (1:Si/0:NO) - (0:Automático/1:Manual)';
   COMMENT ON COLUMN "AXIS"."AGENSEGU"."CUSUMOD" IS 'Usuario que modifica el apunte';
   COMMENT ON COLUMN "AXIS"."AGENSEGU"."FMODIFI" IS 'Fecha modificación apunte';
   COMMENT ON TABLE "AXIS"."AGENSEGU"  IS 'Agenda de pólizas';
  GRANT UPDATE ON "AXIS"."AGENSEGU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENSEGU" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGENSEGU" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGENSEGU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENSEGU" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGENSEGU" TO "PROGRAMADORESCSI";
