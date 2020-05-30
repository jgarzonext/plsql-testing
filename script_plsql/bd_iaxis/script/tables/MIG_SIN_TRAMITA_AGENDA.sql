--------------------------------------------------------
--  DDL for Table MIG_SIN_TRAMITA_AGENDA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_SIN_TRAMITA_AGENDA" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NSINIES" NUMBER(8,0), 
	"NMOVAGE" NUMBER(4,0), 
	"FAPUNTE" DATE, 
	"CTIPREG" NUMBER(3,0), 
	"FAGENDA" DATE, 
	"FFINALI" DATE, 
	"CESTADO" NUMBER(1,0), 
	"TAGENDA" VARCHAR2(4000 BYTE), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"CAPUNTE" NUMBER(2,0), 
	"CSUBTIP" NUMBER(2,0), 
	"SPERSON" NUMBER(10,0), 
	"SPROCES" NUMBER, 
	"CAGEEXT" NUMBER(1,0), 
	"NTRAMIT" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."NCARGA" IS 'N�mero de Carga';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."MIG_PK" IS 'Clave �nica (SINIEANN:SINIENUM)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."MIG_FK" IS 'Clave externa (MIG_SIN_TRAMITA_AGENDA)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."NSINIES" IS 'N�mero de siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."NMOVAGE" IS 'N�mero de anotaci�n en la agenda';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."FAPUNTE" IS 'Fecha de anotaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."CTIPREG" IS 'Tipo de registro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."FAGENDA" IS 'Fecha en que debe aparecer';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."FFINALI" IS 'Fecha finalizaci�n de tarea';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."CESTADO" IS 'Estado de la tarea';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."TAGENDA" IS 'Texto aclaratorio';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."CSUBTIP" IS 'C�digo de subtipo de la agenda';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."SPERSON" IS 'Persona involucrada';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."CAGEEXT" IS 'Memo: 1 --> Consulta oficinas, 0 --> Consulta interna';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_AGENDA"."NTRAMIT" IS 'N�mero Tramitaci�n Siniestro';
   COMMENT ON TABLE "AXIS"."MIG_SIN_TRAMITA_AGENDA"  IS 'Tabla para la migraci�n de la Agenda de Tramitaci�n Siniestro';
  GRANT UPDATE ON "AXIS"."MIG_SIN_TRAMITA_AGENDA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_AGENDA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_SIN_TRAMITA_AGENDA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_SIN_TRAMITA_AGENDA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_AGENDA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_AGENDA" TO "PROGRAMADORESCSI";
