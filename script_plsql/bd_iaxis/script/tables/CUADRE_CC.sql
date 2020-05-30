--------------------------------------------------------
--  DDL for Table CUADRE_CC
--------------------------------------------------------

  CREATE TABLE "AXIS"."CUADRE_CC" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCIERRE" DATE, 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"POLISSA_INI" VARCHAR2(15 BYTE), 
	"NPOLIZA" NUMBER, 
	"NRECIBO" NUMBER, 
	"SMOVREC" NUMBER, 
	"FEFECTO" DATE, 
	"FVENCIM" DATE, 
	"CFORPAG" NUMBER(2,0), 
	"CCOMPANI" NUMBER(3,0), 
	"CGESCOB" NUMBER(1,0), 
	"CTIPREC" NUMBER(2,0), 
	"CESTREC" NUMBER(1,0), 
	"FMOVINI" DATE, 
	"FMOVDIA" DATE, 
	"ITOTALR" NUMBER, 
	"IPRINET" NUMBER, 
	"ICOMIS" NUMBER, 
	"CTIPPROD" NUMBER(1,0), 
	"CPERACT" NUMBER(1,0), 
	"SPRODUC" NUMBER(6,0), 
	"FMOVFIN" DATE, 
	"SSEGURO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."FCIERRE" IS 'Fecha de cierre';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."FCALCUL" IS 'Fecha de ejecuci�n del proceso';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."SPROCES" IS 'C�digo de proceso';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CRAMO" IS 'C�digo de ramo';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CMODALI" IS 'C�digo de modalidad';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CTIPSEG" IS 'Tipo de seguro';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CCOLECT" IS 'Colectividad';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."POLISSA_INI" IS 'P�liza sistema antiguo';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."NPOLIZA" IS 'N�mero de p�liza';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."NRECIBO" IS 'N�mero de recibo';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."SMOVREC" IS 'N�mero de movimiento de recibo';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."FEFECTO" IS 'Fecha de efecto del recibo';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."FVENCIM" IS 'Fecha de vencimiento del recibo';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CFORPAG" IS 'Forma de pago';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CCOMPANI" IS 'C�digo de la compa��a';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CGESCOB" IS 'Gesti�n de cobro c�a/correduria';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CTIPREC" IS 'Tipo de recibo';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CESTREC" IS 'Estado del recibo';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."FMOVINI" IS 'Fecha del movimiento (efecto)';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."FMOVDIA" IS 'Fecha del movimiento (proceso)';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."ITOTALR" IS 'Importe total recibo (+/- seg�n cobro o descobro y tipo de recibo)';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."IPRINET" IS 'Prima neta recibo (+/- seg�n cobro o descobro y tipo de recibo)';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."ICOMIS" IS 'Comisi�n recibo(icomcia o icombru) (+/- seg�n cobro o descobro y tipo de recibo)';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CTIPPROD" IS 'Tipus de producte (Parproducto TIPUSPROD)';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."CPERACT" IS 'Anul.laci� de periode actual(0-No, 1-Si)';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."SPRODUC" IS 'Codi de Producte';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."FMOVFIN" IS 'Data de fi del moviment';
   COMMENT ON COLUMN "AXIS"."CUADRE_CC"."SSEGURO" IS 'N�mero de seguro ';
   COMMENT ON TABLE "AXIS"."CUADRE_CC"  IS 'GESTION DE cUADRE DE cUENTA CORRIENTE';
  GRANT UPDATE ON "AXIS"."CUADRE_CC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUADRE_CC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CUADRE_CC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CUADRE_CC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUADRE_CC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CUADRE_CC" TO "PROGRAMADORESCSI";
