--------------------------------------------------------
--  DDL for Table ESTPRIMASGARANSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTPRIMASGARANSEG" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"NRIESGO" NUMBER, 
	"CGARANT" NUMBER, 
	"FINIEFE" DATE, 
	"IEXTRAP" NUMBER, 
	"IPRIANU" NUMBER, 
	"IPRITAR" NUMBER, 
	"IPRITOT" NUMBER, 
	"PRECARG" NUMBER, 
	"IRECARG" NUMBER, 
	"PDTOCOM" NUMBER, 
	"IDTOCOM" NUMBER, 
	"ITARIFA" NUMBER, 
	"ICONSOR" NUMBER, 
	"IRECCON" NUMBER, 
	"IIPS" NUMBER, 
	"IDGS" NUMBER, 
	"IARBITR" NUMBER, 
	"IFNG" NUMBER, 
	"IRECFRA" NUMBER, 
	"ITOTPRI" NUMBER, 
	"ITOTDTO" NUMBER, 
	"ITOTCON" NUMBER, 
	"ITOTIMP" NUMBER, 
	"ICDERREG" NUMBER, 
	"ITOTALR" NUMBER, 
	"NEEDTARIFAR" NUMBER, 
	"IPRIREB" NUMBER, 
	"ITOTANU" NUMBER, 
	"IIEXTRAP" NUMBER, 
	"PDTOTEC" NUMBER, 
	"PRECCOM" NUMBER, 
	"IDTOTEC" NUMBER, 
	"IRECCOM" NUMBER, 
	"ITOTREC" NUMBER, 
	"IIVAIMP" NUMBER, 
	"IPRIVIGENCIA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."SSEGURO" IS 'Codigo Seguro ';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."NMOVIMI" IS 'Movimiento de la poliza';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."NRIESGO" IS 'Numero Riesgo ';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."CGARANT" IS 'Codigo de garantia';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."FINIEFE" IS 'Fecha inicio de efecto';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IEXTRAP" IS 'Porcentaje Extraprima';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IPRIANU" IS 'Importe prima anual';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IPRITAR" IS 'Importe tarifa';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IPRITOT" IS 'Prima total';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."PRECARG" IS 'Porcentage recargo (sobreprima)';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IRECARG" IS 'Importe del recargo (sobreprima)';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."PDTOCOM" IS 'Porcentage descuento comercial';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IDTOCOM" IS 'Importe descuento comercial';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."ITARIFA" IS 'Tarifa + extraprima';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."ICONSOR" IS 'Consorcio';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IRECCON" IS 'Recargo Consorcio';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IIPS" IS 'Impuesto IPS';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IDGS" IS 'Impuesto CLEA/DGS';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IARBITR" IS 'Arbitrios (bomberos, ...)';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IFNG" IS 'Impuesto FNG';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IRECFRA" IS 'Recargo Fraccionamiento';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."ITOTPRI" IS 'Total Prima Neta';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."ITOTDTO" IS 'Total Descuentos';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."ITOTCON" IS 'Total Consorcio';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."ITOTIMP" IS 'Total Impuestos y Arbitrios';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."ICDERREG" IS 'Impuesto Derechos de registro';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."ITOTALR" IS 'TOTAL RECIBO';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."NEEDTARIFAR" IS '1 necesita tarificar 0 se ha tarificado';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IPRIREB" IS 'Prima del 1er rebut';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."ITOTANU" IS 'Importe Prima total anualizada (Garanseg)';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IIEXTRAP" IS 'Importe de la extraprima ';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."PDTOTEC" IS 'Porcentaje descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."PRECCOM" IS 'Porcentaje recargo comercial';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IDTOTEC" IS 'Importe descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."IRECCOM" IS 'Importe recargo comercial';
   COMMENT ON COLUMN "AXIS"."ESTPRIMASGARANSEG"."ITOTREC" IS 'Importe total recargo';
   COMMENT ON TABLE "AXIS"."ESTPRIMASGARANSEG"  IS 'Primas por garant�a';
  GRANT UPDATE ON "AXIS"."ESTPRIMASGARANSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPRIMASGARANSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTPRIMASGARANSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTPRIMASGARANSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPRIMASGARANSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTPRIMASGARANSEG" TO "PROGRAMADORESCSI";