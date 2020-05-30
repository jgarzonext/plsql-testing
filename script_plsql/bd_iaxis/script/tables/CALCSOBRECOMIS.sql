--------------------------------------------------------
--  DDL for Table CALCSOBRECOMIS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CALCSOBRECOMIS" 
   (	"CAGENTE" NUMBER, 
	"SPRODUC" NUMBER, 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"IPRIMPROD" NUMBER, 
	"IPRIMREC" NUMBER, 
	"IPRIMEMREC" NUMBER, 
	"ISINPAGADOS" NUMBER, 
	"IRESSINPDTES" NUMBER, 
	"IRESSINPDTESANT" NUMBER, 
	"CMODO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CALCSOBRECOMIS"."CAGENTE" IS 'C�digo agente';
   COMMENT ON COLUMN "AXIS"."CALCSOBRECOMIS"."SPRODUC" IS 'C�digo producto';
   COMMENT ON COLUMN "AXIS"."CALCSOBRECOMIS"."FINICIO" IS 'Fecha inicio';
   COMMENT ON COLUMN "AXIS"."CALCSOBRECOMIS"."FFIN" IS 'Fecha fin';
   COMMENT ON COLUMN "AXIS"."CALCSOBRECOMIS"."IPRIMPROD" IS 'Primas producidas';
   COMMENT ON COLUMN "AXIS"."CALCSOBRECOMIS"."IPRIMREC" IS 'Primas recaudadas';
   COMMENT ON COLUMN "AXIS"."CALCSOBRECOMIS"."IPRIMEMREC" IS 'Primas emitidas recaudadas';
   COMMENT ON COLUMN "AXIS"."CALCSOBRECOMIS"."ISINPAGADOS" IS 'Siniestros pagados';
   COMMENT ON COLUMN "AXIS"."CALCSOBRECOMIS"."IRESSINPDTES" IS 'Reservas pendientes';
   COMMENT ON COLUMN "AXIS"."CALCSOBRECOMIS"."IRESSINPDTESANT" IS 'reservas pendientes anteriores';
   COMMENT ON COLUMN "AXIS"."CALCSOBRECOMIS"."CMODO" IS 'Modo 1:previo 0:real';
   COMMENT ON TABLE "AXIS"."CALCSOBRECOMIS"  IS 'Tabla sobrecomisiones Positiva';
  GRANT UPDATE ON "AXIS"."CALCSOBRECOMIS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CALCSOBRECOMIS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CALCSOBRECOMIS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CALCSOBRECOMIS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CALCSOBRECOMIS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CALCSOBRECOMIS" TO "PROGRAMADORESCSI";
