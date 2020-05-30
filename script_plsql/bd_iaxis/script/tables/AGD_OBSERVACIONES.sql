--------------------------------------------------------
--  DDL for Table AGD_OBSERVACIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGD_OBSERVACIONES" 
   (	"CEMPRES" NUMBER(2,0), 
	"IDOBS" NUMBER(8,0), 
	"CCONOBS" NUMBER(2,0), 
	"CTIPOBS" NUMBER(1,0), 
	"TTITOBS" VARCHAR2(100 BYTE), 
	"TOBS" VARCHAR2(2000 BYTE), 
	"FOBS" DATE, 
	"FRECORDATORIO" DATE, 
	"CTIPAGD" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"NRECIBO" NUMBER, 
	"CAGENTE" NUMBER, 
	"NSINIES" VARCHAR2(14 BYTE), 
	"NTRAMIT" NUMBER(4,0), 
	"CAMBITO" NUMBER(1,0), 
	"CPRIORI" NUMBER(2,0), 
	"CPRIVOBS" NUMBER(1,0), 
	"PUBLICO" NUMBER(1,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"SPERSON" VARCHAR2(100 BYTE), 
	"SGSFAVCLI" NUMBER(8,0), 
	"IDDOCGEDOX" NUMBER, 
	"TFILENAME" VARCHAR2(1000 BYTE), 
	"DESCRIPCION" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."IDOBS" IS 'Identificador Obs/Apu';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."CCONOBS" IS 'C�digo Concepto  Obs/Apu V.F depende de la tabla : AGD_OBS_CFG';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."CTIPOBS" IS 'C�digo Tipo  Obs/Apu V.F.323';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."TTITOBS" IS 'T�tulo  Obs/Apu';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."TOBS" IS 'Descripci�n  Obs/Apu';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."FOBS" IS 'Fecha Observaci�n/Apunte';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."FRECORDATORIO" IS 'Fecha Recordatorio Observaci�n/Apunte';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."CTIPAGD" IS 'Tipo Observaci�n/Apunte, si es de seguro,p�liza, recibo...';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."SSEGURO" IS 'Seguro del qual pertenece la Obs./Apu';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."NRECIBO" IS 'Recibo del qual pertenece la Obs./Apu';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."CAGENTE" IS 'Agente del qual pertenece la Obs./Apu';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."NSINIES" IS 'Siniestro del qual pertenece la Obs./Apu';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."NTRAMIT" IS 'Tramitaci�n del qual pertenece la Obs./Apu';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."CAMBITO" IS 'C�digo Ambito (Interno, Externo)';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."CPRIORI" IS 'C�digo Prioridad';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."CPRIVOBS" IS 'Obs/Apu p�blico';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."CUSUMOD" IS 'Usuario que modifica el registro';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."FMODIFI" IS 'Fecha de modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."SPERSON" IS 'Persona del cual pertenece la Obs/Apu';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."IDDOCGEDOX" IS 'ID de documento Gedox';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."TFILENAME" IS 'Nombre del archivo';
   COMMENT ON COLUMN "AXIS"."AGD_OBSERVACIONES"."DESCRIPCION" IS 'descripcion del archivo';
   COMMENT ON TABLE "AXIS"."AGD_OBSERVACIONES"  IS 'Tabla donde creamos los apuntes/observaciones de p�liza, recibos, agentes, siniestros...';
  GRANT UPDATE ON "AXIS"."AGD_OBSERVACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_OBSERVACIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGD_OBSERVACIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGD_OBSERVACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_OBSERVACIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGD_OBSERVACIONES" TO "PROGRAMADORESCSI";