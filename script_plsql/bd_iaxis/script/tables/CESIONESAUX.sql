--------------------------------------------------------
--  DDL for Table CESIONESAUX
--------------------------------------------------------

  CREATE TABLE "AXIS"."CESIONESAUX" 
   (	"SPROCES" NUMBER, 
	"NNUMLIN" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"IPRIREA" NUMBER, 
	"ICAPITAL" NUMBER, 
	"CFACULT" NUMBER(1,0), 
	"CESTADO" NUMBER(1,0), 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CCALIF1" VARCHAR2(1 BYTE), 
	"CCALIF2" NUMBER(2,0), 
	"SPLENO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"SCONTRA" NUMBER(6,0), 
	"NVERSIO" NUMBER(2,0), 
	"FCONINI" DATE, 
	"FCONFIN" DATE, 
	"IPLENO" NUMBER, 
	"ICAPACI" NUMBER, 
	"SCUMULO" NUMBER(6,0), 
	"SFACULT" NUMBER(6,0), 
	"NAGRUPA" NUMBER(4,0), 
	"ICAPIT2" NUMBER, 
	"IEXTRAP" NUMBER, 
	"PRECARG" NUMBER(6,2), 
	"IPRITARREA" NUMBER, 
	"IDTOSEL" NUMBER, 
	"PSOBREPRIMA" NUMBER(8,5), 
	"CDETCES" NUMBER(1,0), 
	"FANULAC" DATE, 
	"FREGULA" DATE, 
	"IEXTREA" NUMBER, 
	"ITARIFREA" NUMBER, 
	"ICOMEXT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."SPROCES" IS 'Identificador de proceso';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."NNUMLIN" IS 'N�mero de linea';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."IPRIREA" IS 'Prima a reasegurar';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."ICAPITAL" IS 'Capital a reasegurar';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."CFACULT" IS 'Indicador si necesita facultativo';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."CESTADO" IS 'Estado de proceso';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."CCALIF1" IS 'Calificaci�n del riesgo';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."CCALIF2" IS 'Subcalificaci�n del riesgo';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."SPLENO" IS 'Identificador del Pleno';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."NVERSIO" IS 'N�mero versi�n contrato reas.';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."FCONINI" IS 'Fecha inicio aplicaci�n contrato';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."FCONFIN" IS 'Fecha final aplicaci�n contrato';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."IPLENO" IS 'Importe del pleno seg�n calificaci�n';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."ICAPACI" IS 'Capacidad contrato';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."IEXTRAP" IS 'Tasa para el c�lculo de la extraprima';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."IPRITARREA" IS 'Prima de tarifa';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."IDTOSEL" IS 'Importe descuento de selecci�n';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."PSOBREPRIMA" IS 'Porcentaje sobreprima';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."CDETCES" IS 'Indica si se graba o no a reasegemi';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."FANULAC" IS 'Fecha de regularizaci�n';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."IEXTREA" IS 'Extraprima a reasegurar (ya incluida en la prima [IPRIREA])';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."ITARIFREA" IS 'Tasa de Reaseguro';
   COMMENT ON COLUMN "AXIS"."CESIONESAUX"."ICOMEXT" IS 'Importe comisi�n de la extra prima';
  GRANT UPDATE ON "AXIS"."CESIONESAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CESIONESAUX" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CESIONESAUX" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CESIONESAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CESIONESAUX" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CESIONESAUX" TO "PROGRAMADORESCSI";