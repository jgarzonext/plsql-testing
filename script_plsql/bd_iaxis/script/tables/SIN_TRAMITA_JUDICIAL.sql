--------------------------------------------------------
--  DDL for Table SIN_TRAMITA_JUDICIAL
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_TRAMITA_JUDICIAL" 
   (	"NSINIES" VARCHAR2(14 BYTE), 
	"NTRAMIT" NUMBER(4,0), 
	"NORDEN" NUMBER(3,0), 
	"CPROCESO" NUMBER(8,0), 
	"TPROCESO" NUMBER(8,0), 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"CPOBLAC" NUMBER(5,0), 
	"CPROVIN" NUMBER(5,0), 
	"TIEXTERNO" VARCHAR2(2000 BYTE), 
	"SPROFES" NUMBER(8,0), 
	"FRECEP" DATE, 
	"FNOTIFI" DATE, 
	"FVENCIMI" DATE, 
	"FRESPUES" DATE, 
	"FCONCIL" DATE, 
	"FDESVIN" DATE, 
	"TPRETEN" CLOB, 
	"TEXCEP1" CLOB, 
	"TEXCEP2" CLOB, 
	"CCONTI" NUMBER(8,0), 
	"CPOSICI" NUMBER(8,0), 
	"CDEMAND" NUMBER(8,0), 
	"SAPODERA" NUMBER(10,0), 
	"IDEMAND" NUMBER, 
	"FTDEMAN" DATE, 
	"ICONDEN" NUMBER, 
	"CSENTEN" NUMBER(8,0), 
	"FSENTE1" DATE, 
	"FSENTE2" DATE, 
	"CTSENTE" NUMBER(8,0), 
	"TFALLO" CLOB, 
	"FMODIFI" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"CSENTEN2" NUMBER(8,0), 
	"CASACION" NUMBER(1,0), 
	"FCASACI" DATE, 
	"FTSENTE" DATE, 
	"VTSENTE" VARCHAR2(20 BYTE), 
	"CDESPA" NUMBER(8,0), 
	"CDESPAO" NUMBER(8,0), 
	"CDESCF" VARCHAR2(200 BYTE), 
	"CPROVINF" NUMBER, 
	"CPOBLACF" NUMBER, 
	"CDESCO" VARCHAR2(200 BYTE), 
	"CPROVINO" NUMBER, 
	"CPOBLACO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" 
 LOB ("TPRETEN") STORE AS SECUREFILE (
  TABLESPACE "AXIS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("TEXCEP1") STORE AS SECUREFILE (
  TABLESPACE "AXIS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("TEXCEP2") STORE AS SECUREFILE (
  TABLESPACE "AXIS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("TFALLO") STORE AS SECUREFILE (
  TABLESPACE "AXIS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."NSINIES" IS 'Numero Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."NTRAMIT" IS 'Numero Tramitacion Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."NORDEN" IS 'Numero Orden Proceso';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CPROCESO" IS 'Clase de proceso (VF 8001090)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."TPROCESO" IS 'Tipo de proceso (VF 8001091)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CPOSTAL" IS 'Codigo postal';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CPOBLAC" IS 'Codigo poblacion';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CPROVIN" IS 'Codigo provincia';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."TIEXTERNO" IS 'Identificador Externo';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."SPROFES" IS 'Sequencial. Codigo de profesional';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FRECEP" IS 'Fecha Recepcion Oficial';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FNOTIFI" IS 'Fecha Notificacion';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FVENCIMI" IS 'Fecha Vencimiento Termino';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FRESPUES" IS 'Fecha Respuesta';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FCONCIL" IS 'Fecha Conciliacion';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FDESVIN" IS 'Desvinculados por notificacion extemporanea';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."TPRETEN" IS 'Pretensiones de la demanda';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."TEXCEP1" IS 'Excepciones del denunciado';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."TEXCEP2" IS 'Excepciones de la compania';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CCONTI" IS 'Contingencia (VF 8001092)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CPOSICI" IS 'Posicion de la compania (VF 8001097)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CDEMAND" IS 'Clase demanda (VF 8001098)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."SAPODERA" IS 'Apoderado';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."IDEMAND" IS 'Valor de la demanda';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FTDEMAN" IS 'Terminacion anticipada';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."ICONDEN" IS 'Valor de la condena';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CSENTEN" IS 'Resolucion de la sentencia (VF 8001100)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FSENTE1" IS 'Fecha 1 sentencia';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FSENTE2" IS 'Fecha 2 sentencia';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CTSENTE" IS 'Termina el proceso por (VF 8001101)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."TFALLO" IS 'Decisi?n del fallo';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FMODIFI" IS 'Fecha Creacion/Modificaci?n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CUSUALT" IS 'Codigo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CSENTEN2" IS 'Resolucion de la segunda sentencia (VF 8001100)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CASACION" IS 'Casacion de la sentencia (VF 28)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FCASACI" IS 'Fecha de la casacion';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."FTSENTE" IS 'Fecha de terminacion de sentencia';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."VTSENTE" IS 'Valor de acuerdo a la terminacion de sentencia';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CDESCF" IS 'Descripcion de la jurisdiccion para despacho final';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CPROVINF" IS 'Codigo de la provincia o departamento para despacho final';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CPOBLACF" IS 'Codigo de la poblacion o ciudad para despacho final';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CDESCO" IS 'Descripcion de la jurisdiccion para despacho de origen';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CPROVINO" IS 'Codigo de la provincia o departamento para despacho de origen';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUDICIAL"."CPOBLACO" IS 'Codigo de la poblacion o ciudad para despacho de origen';
  GRANT UPDATE ON "AXIS"."SIN_TRAMITA_JUDICIAL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_TRAMITA_JUDICIAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_JUDICIAL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_TRAMITA_JUDICIAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_JUDICIAL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_JUDICIAL" TO "PROGRAMADORESCSI";
