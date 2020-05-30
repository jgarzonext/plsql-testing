--------------------------------------------------------
--  DDL for Table SEGUROS_REN
--------------------------------------------------------

  CREATE TABLE "AXIS"."SEGUROS_REN" 
   (	"SSEGURO" NUMBER, 
	"F1PAREN" DATE, 
	"FUPAREN" DATE, 
	"CFORPAG" NUMBER(2,0), 
	"IBRUREN" NUMBER, 
	"FFINREN" DATE, 
	"CMOTIVO" NUMBER(3,0), 
	"CMODALI" NUMBER(5,2), 
	"FPPREN" DATE, 
	"IBRURE2" NUMBER, 
	"FINTGAR" DATE, 
	"CESTMRE" NUMBER(1,0), 
	"CBLOPAG" NUMBER(2,0), 
	"NDURAINT" NUMBER(2,0), 
	"ICAPREN" NUMBER, 
	"PTIPOINT" NUMBER(5,2), 
	"PDOSCAB" NUMBER(5,2), 
	"PCAPFALL" NUMBER(5,2), 
	"IRESERVA" NUMBER, 
	"FREVANT" DATE, 
	"FREVISIO" DATE, 
	"PCAPREV" NUMBER(5,2), 
	"NMESEXTRA" VARCHAR2(27 BYTE), 
	"IMESEXTRA" VARCHAR2(2000 BYTE), 
	"TIPOCALCUL" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."SSEGURO" IS 'Clave seguro';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."F1PAREN" IS 'Fecha primer pago renta';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."FUPAREN" IS 'Fecha �ltimo pago renta';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."CFORPAG" IS 'Forma de Pago de Rentas. VALORES=113';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."IBRUREN" IS 'Importe bruto de la renta total';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."FFINREN" IS 'Fecha que se ha finalizado la renta';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."CMOTIVO" IS 'Motivo de finalizaci�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."CMODALI" IS 'Cobertura falleciment';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."FPPREN" IS 'Fecha pr�ximo pago renta';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."IBRURE2" IS 'Importe total renta2 per�odo';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."CESTMRE" IS 'Estado del pago. Si producto_ren.cmunrec=0';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."CBLOPAG" IS 'Estado que quedan los pagos cuando se generan';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."NDURAINT" IS 'Duraci�n del tramo de tipo de inter�s (Vf. 242)';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."ICAPREN" IS 'Capital inicial de la renta';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."PTIPOINT" IS 'Tipo de inter�s en porcentaje';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."PDOSCAB" IS 'Porcentaje para la f�rmula si hay 2 cabezas';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."FREVANT" IS 'Fecha revisi�n anterior';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."FREVISIO" IS 'Fecha revisi�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."PCAPREV" IS 'Nuevo pct. capital en suplemento cambio capital';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."NMESEXTRA" IS 'Indica que meses tienen paga extra';
   COMMENT ON COLUMN "AXIS"."SEGUROS_REN"."TIPOCALCUL" IS 'Campo usado solamente para tarificar las rentas';
   COMMENT ON TABLE "AXIS"."SEGUROS_REN"  IS 'Datos de seguros de renta';
  GRANT UPDATE ON "AXIS"."SEGUROS_REN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS_REN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SEGUROS_REN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SEGUROS_REN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS_REN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SEGUROS_REN" TO "PROGRAMADORESCSI";
