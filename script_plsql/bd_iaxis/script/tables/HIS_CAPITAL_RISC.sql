--------------------------------------------------------
--  DDL for Table HIS_CAPITAL_RISC
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_CAPITAL_RISC" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER, 
	"CTIPSEG" NUMBER, 
	"CCOLECT" NUMBER, 
	"MES" NUMBER, 
	"ANYO" NUMBER, 
	"ICAPITAL_RISC" NUMBER DEFAULT 0, 
	"NPOLIZAS" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_CAPITAL_RISC"."CRAMO" IS 'Ram';
   COMMENT ON COLUMN "AXIS"."HIS_CAPITAL_RISC"."CMODALI" IS 'Modalitat';
   COMMENT ON COLUMN "AXIS"."HIS_CAPITAL_RISC"."CTIPSEG" IS 'Tipus Asseguran�a';
   COMMENT ON COLUMN "AXIS"."HIS_CAPITAL_RISC"."CCOLECT" IS 'Colectiu';
   COMMENT ON COLUMN "AXIS"."HIS_CAPITAL_RISC"."MES" IS 'Mes de l''an�lisi';
   COMMENT ON COLUMN "AXIS"."HIS_CAPITAL_RISC"."ANYO" IS 'Any';
   COMMENT ON COLUMN "AXIS"."HIS_CAPITAL_RISC"."ICAPITAL_RISC" IS 'Capital en Risc del periode considerat';
   COMMENT ON COLUMN "AXIS"."HIS_CAPITAL_RISC"."NPOLIZAS" IS 'N�mero de p�lisses analitzades';
   COMMENT ON TABLE "AXIS"."HIS_CAPITAL_RISC"  IS 'Hist�ric del Capital en Risc';
  GRANT UPDATE ON "AXIS"."HIS_CAPITAL_RISC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CAPITAL_RISC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_CAPITAL_RISC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_CAPITAL_RISC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CAPITAL_RISC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_CAPITAL_RISC" TO "PROGRAMADORESCSI";