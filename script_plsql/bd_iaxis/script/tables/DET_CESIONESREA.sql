--------------------------------------------------------
--  DDL for Table DET_CESIONESREA
--------------------------------------------------------

  CREATE TABLE "AXIS"."DET_CESIONESREA" 
   (	"SCESREA" NUMBER, 
	"SDETCESREA" NUMBER, 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"PTRAMO" NUMBER, 
	"CGARANT" NUMBER, 
	"ICESION" NUMBER, 
	"ICAPCES" NUMBER, 
	"PCESION" NUMBER, 
	"PSOBREPRIMA" NUMBER, 
	"IEXTRAP" NUMBER, 
	"IEXTREA" NUMBER, 
	"IPRITARREA" NUMBER, 
	"ITARIFREA" NUMBER, 
	"ICOMEXT" NUMBER, 
	"CCOMPANI" NUMBER, 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE), 
	"CDEPURA" VARCHAR2(1 BYTE), 
	"FEFECDEMA" DATE, 
	"NMOVIDEP" NUMBER, 
	"SPERSON" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."SCESREA" IS 'Codigo de Cesion';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."SDETCESREA" IS 'Codigo de Detalle de Cesion';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."SSEGURO" IS 'Codigo del Seguro';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."NMOVIMI" IS 'Numero de Movimiento';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."PTRAMO" IS 'Numero del Tramo';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."CGARANT" IS 'Garantia';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."ICESION" IS 'Importe de Cesion';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."ICAPCES" IS 'Capital de Cesion';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."PCESION" IS 'Porcentaje de Cesion';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."PSOBREPRIMA" IS 'SobrePrima';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."IEXTRAP" IS 'Porcentaje ExtraPrima';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."IEXTREA" IS 'Importe ExtraPrima';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."IPRITARREA" IS 'Prima Tarifa';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."ITARIFREA" IS 'Importe Tarifa';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."ICOMEXT" IS 'Comision';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."CCOMPANI" IS 'Compania';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."CUSUALT" IS 'Usuario Alta';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."FMODIFI" IS 'Fecha Modifica';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."CUSUMOD" IS 'Usuario Modifica';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."CDEPURA" IS 'Indica si es depuracion S(i)/N-NULL(No)';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."FEFECDEMA" IS 'Fecha de Efecto de la depuracion manual';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."NMOVIDEP" IS 'Numero de movimiento de depuracion';
   COMMENT ON COLUMN "AXIS"."DET_CESIONESREA"."SPERSON" IS 'codigo de persona(puede ser consrocio, integrante consorcio o perrsona individual)';
   COMMENT ON TABLE "AXIS"."DET_CESIONESREA"  IS 'Detalle de Cesiones por Garantia';
  GRANT UPDATE ON "AXIS"."DET_CESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DET_CESIONESREA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DET_CESIONESREA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DET_CESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DET_CESIONESREA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DET_CESIONESREA" TO "PROGRAMADORESCSI";