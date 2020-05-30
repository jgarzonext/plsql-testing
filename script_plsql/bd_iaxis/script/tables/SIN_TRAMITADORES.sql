--------------------------------------------------------
--  DDL for Table SIN_TRAMITADORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_TRAMITADORES" 
   (	"CTRAMITAD" VARCHAR2(4 BYTE), 
	"NCONFIG" NUMBER, 
	"CAGENTE" NUMBER, 
	"CEMPRES" NUMBER(2,0), 
	"CRAMO" NUMBER(8,0), 
	"CTRAMTE" NUMBER, 
	"CCAUSIN" NUMBER(4,0), 
	"CMOTSIN" NUMBER(4,0), 
	"NLIMMAX" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_TRAMITADORES"."CTRAMITAD" IS 'C�digo Causa Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITADORES"."NCONFIG" IS 'N�mero de configuraci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITADORES"."CAGENTE" IS 'C�digo de Agente';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITADORES"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITADORES"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITADORES"."CTRAMTE" IS 'C�digo Tr�mite';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITADORES"."CCAUSIN" IS 'C�digo Causa Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITADORES"."CMOTSIN" IS 'C�digo Motivo Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITADORES"."NLIMMAX" IS 'L�mite de importe m�ximo';
   COMMENT ON TABLE "AXIS"."SIN_TRAMITADORES"  IS 'Asignaci�n de Tramitadores';
  GRANT UPDATE ON "AXIS"."SIN_TRAMITADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITADORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_TRAMITADORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_TRAMITADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITADORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_TRAMITADORES" TO "PROGRAMADORESCSI";