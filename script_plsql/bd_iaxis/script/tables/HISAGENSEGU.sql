--------------------------------------------------------
--  DDL for Table HISAGENSEGU
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISAGENSEGU" 
   (	"SSEGURO" NUMBER, 
	"NLINEA" NUMBER(6,0), 
	"CTIPREG" NUMBER(3,0), 
	"CESTADO" NUMBER(3,0), 
	"TTITULO" VARCHAR2(100 BYTE), 
	"FFINALI" DATE, 
	"TTEXTOS" VARCHAR2(4000 BYTE), 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISAGENSEGU"."SSEGURO" IS 'Identificador de la P�liza asociada al apunte';
   COMMENT ON COLUMN "AXIS"."HISAGENSEGU"."NLINEA" IS 'Numero de apunte en la agenga por p�liza';
   COMMENT ON COLUMN "AXIS"."HISAGENSEGU"."CTIPREG" IS 'Concepto apunte en la agenda. Valor fijo: 21';
   COMMENT ON COLUMN "AXIS"."HISAGENSEGU"."CESTADO" IS 'Estado del apunte en la agenda. Valor fijo:29. (0:Pendiente/1:Finalizado/2:Anulado)';
   COMMENT ON COLUMN "AXIS"."HISAGENSEGU"."TTITULO" IS 'Titulo del apunte';
   COMMENT ON COLUMN "AXIS"."HISAGENSEGU"."FFINALI" IS 'Fecha finalizacion del apunte';
   COMMENT ON COLUMN "AXIS"."HISAGENSEGU"."TTEXTOS" IS 'Texto del apunte';
   COMMENT ON COLUMN "AXIS"."HISAGENSEGU"."CUSUMOD" IS 'Usuario que modifica el apunte';
   COMMENT ON COLUMN "AXIS"."HISAGENSEGU"."FMODIFI" IS 'Fecha modificacion del apunte';
   COMMENT ON TABLE "AXIS"."HISAGENSEGU"  IS 'Historico de agenda de p�lizas';
  GRANT INSERT ON "AXIS"."HISAGENSEGU" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."HISAGENSEGU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISAGENSEGU" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISAGENSEGU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISAGENSEGU" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISAGENSEGU" TO "PROGRAMADORESCSI";
