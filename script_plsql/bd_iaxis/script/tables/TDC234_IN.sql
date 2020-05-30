--------------------------------------------------------
--  DDL for Table TDC234_IN
--------------------------------------------------------

  CREATE TABLE "AXIS"."TDC234_IN" 
   (	"STDC234IN" NUMBER(10,0), 
	"FCARGA" DATE, 
	"SPROCES" NUMBER, 
	"TFICHERO" VARCHAR2(60 BYTE), 
	"STRAS" NUMBER(8,0), 
	"SSEGURO" NUMBER, 
	"CESTADO" NUMBER(1,0), 
	"SREF234" VARCHAR2(13 BYTE), 
	"CACCION" NUMBER(2,0), 
	"CESTACC" NUMBER(1,0), 
	"CERROR" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TDC234_IN"."STDC234IN" IS 'Secuencia de la tabla';
   COMMENT ON COLUMN "AXIS"."TDC234_IN"."FCARGA" IS 'Fecha carga';
   COMMENT ON COLUMN "AXIS"."TDC234_IN"."SPROCES" IS 'Proceso carga del fichero';
   COMMENT ON COLUMN "AXIS"."TDC234_IN"."TFICHERO" IS 'Nombre del fichero';
   COMMENT ON COLUMN "AXIS"."TDC234_IN"."STRAS" IS 'Identificador del traspaso';
   COMMENT ON COLUMN "AXIS"."TDC234_IN"."SSEGURO" IS 'Identificador de la p�liza';
   COMMENT ON COLUMN "AXIS"."TDC234_IN"."CESTADO" IS 'Estado del traspaso';
   COMMENT ON COLUMN "AXIS"."TDC234_IN"."SREF234" IS 'Referencia de la operacion en TDC234';
   COMMENT ON COLUMN "AXIS"."TDC234_IN"."CACCION" IS 'Acci� a executar: Solicitut (1), rebuig (2), acceptaci� (3), complement (31), devoluci� transfer (4)';
   COMMENT ON COLUMN "AXIS"."TDC234_IN"."CESTACC" IS 'Estat de la acci�: Pendent (0); amb error (1); executada (2)';
   COMMENT ON COLUMN "AXIS"."TDC234_IN"."CERROR" IS 'codi error al executar-se';
   COMMENT ON TABLE "AXIS"."TDC234_IN"  IS 'Tabla intermedia norma 234 (cabecera)';
  GRANT UPDATE ON "AXIS"."TDC234_IN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TDC234_IN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TDC234_IN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TDC234_IN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TDC234_IN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TDC234_IN" TO "PROGRAMADORESCSI";