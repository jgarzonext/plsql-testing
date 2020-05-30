--------------------------------------------------------
--  DDL for Table PROCESOSIMPAGRUP
--------------------------------------------------------

  CREATE TABLE "AXIS"."PROCESOSIMPAGRUP" 
   (	"SPROCES" NUMBER, 
	"TAGRUPA" VARCHAR2(200 BYTE), 
	"ESTADO" NUMBER, 
	"TERROR" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PROCESOSIMPAGRUP"."SPROCES" IS 'SPROCES de procesosimp.';
   COMMENT ON COLUMN "AXIS"."PROCESOSIMPAGRUP"."TAGRUPA" IS 'Nombre de los zips generados para el SPROCES.';
   COMMENT ON COLUMN "AXIS"."PROCESOSIMPAGRUP"."ESTADO" IS 'Estado en el que se encuentra la generación del zip. VF.8000898 ';
   COMMENT ON COLUMN "AXIS"."PROCESOSIMPAGRUP"."TERROR" IS 'Si hubo error en la generación. Descripción de este.';
   COMMENT ON TABLE "AXIS"."PROCESOSIMPAGRUP"  IS 'Agrupaciones de procesos de impresion';
  GRANT UPDATE ON "AXIS"."PROCESOSIMPAGRUP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROCESOSIMPAGRUP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PROCESOSIMPAGRUP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PROCESOSIMPAGRUP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROCESOSIMPAGRUP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PROCESOSIMPAGRUP" TO "PROGRAMADORESCSI";
