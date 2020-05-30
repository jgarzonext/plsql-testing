--------------------------------------------------------
--  DDL for Table GCA_CONCILIACION_ACTA
--------------------------------------------------------

  CREATE TABLE "AXIS"."GCA_CONCILIACION_ACTA" 
   (	"NCONCIACT" NUMBER, 
	"SIDCON" NUMBER, 
	"CCONACTA" NUMBER, 
	"NCANTIDAD" NUMBER, 
	"NVALOR" NUMBER, 
	"CRESPAGE" NUMBER, 
	"CRESPCIA" NUMBER, 
	"FSOLUCION" DATE, 
	"TOBS" VARCHAR2(150 BYTE), 
	"CUSUALT" VARCHAR2(150 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(150 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."SIDCON" IS 'ID DE PROCESO DE CONCILIACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."CCONACTA" IS 'C�DIGO DE CONCEPTO DEL ACTA';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."NCANTIDAD" IS 'CANTIDAD';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."NVALOR" IS 'VALOR';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."CRESPAGE" IS 'RESPONSABLE EL AGENTE/ CORREDOR SI / NO';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."CRESPCIA" IS 'RESPONSABLE LA COMPA��A SI / NO';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."FSOLUCION" IS 'FECHA DE SOLUCI�N ACORDADA';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."TOBS" IS 'OBSERVACIONES';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."CUSUALT" IS 'C�DIGO USUARIO DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."FALTA" IS 'FECHA DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."CUSUMOD" IS 'C�DIGO USUARIO MODIFICACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACION_ACTA"."FMODIFI" IS 'FECHA MODIFICACI�N';
  GRANT UPDATE ON "AXIS"."GCA_CONCILIACION_ACTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_CONCILIACION_ACTA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GCA_CONCILIACION_ACTA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GCA_CONCILIACION_ACTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_CONCILIACION_ACTA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GCA_CONCILIACION_ACTA" TO "PROGRAMADORESCSI";
