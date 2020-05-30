--------------------------------------------------------
--  DDL for Table ESTAGE_CORRETAJE
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTAGE_CORRETAJE" 
   (	"SSEGURO" NUMBER, 
	"CAGENTE" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"NORDAGE" NUMBER(2,0), 
	"PCOMISI" NUMBER(5,2), 
	"PPARTICI" NUMBER(5,2), 
	"ISLIDER" NUMBER(1,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTAGE_CORRETAJE"."SSEGURO" IS 'N�mero de secuencia de seguro';
   COMMENT ON COLUMN "AXIS"."ESTAGE_CORRETAJE"."CAGENTE" IS 'C�digo del agente intermediario';
   COMMENT ON COLUMN "AXIS"."ESTAGE_CORRETAJE"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."ESTAGE_CORRETAJE"."NORDAGE" IS 'Orden de aparici�n del agente';
   COMMENT ON COLUMN "AXIS"."ESTAGE_CORRETAJE"."PCOMISI" IS 'Porcentaje de Comisi�n';
   COMMENT ON COLUMN "AXIS"."ESTAGE_CORRETAJE"."PPARTICI" IS 'Porcentaje de Participaci�n';
   COMMENT ON COLUMN "AXIS"."ESTAGE_CORRETAJE"."ISLIDER" IS 'Indica si es el L�der del corretaje. 0 --> No  1 --> S�';
   COMMENT ON TABLE "AXIS"."ESTAGE_CORRETAJE"  IS 'Reparto del co-corretaje entre los intermediarios';
  GRANT UPDATE ON "AXIS"."ESTAGE_CORRETAJE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTAGE_CORRETAJE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTAGE_CORRETAJE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTAGE_CORRETAJE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTAGE_CORRETAJE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTAGE_CORRETAJE" TO "PROGRAMADORESCSI";
