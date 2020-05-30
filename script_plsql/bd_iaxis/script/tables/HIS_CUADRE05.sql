--------------------------------------------------------
--  DDL for Table HIS_CUADRE05
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_CUADRE05" 
   (	"FCONTA" DATE, 
	"CDELEGA" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CGARANT" NUMBER(4,0), 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"NRECIBO" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"FEFECTO" DATE, 
	"FEMISION" DATE, 
	"FESTADO" DATE, 
	"CDEMISION" CHAR(1 BYTE), 
	"CDESTADO" CHAR(1 BYTE), 
	"CAGENTE" NUMBER, 
	"PRIMA_TOTAL" NUMBER, 
	"PRIMA_TARIFA" NUMBER, 
	"REC_FPAGO" NUMBER, 
	"CONSORCIO" NUMBER, 
	"IMPUESTO" NUMBER, 
	"CLEA" NUMBER, 
	"COMISION" NUMBER, 
	"POIRPF" NUMBER(4,2), 
	"IRPF" NUMBER, 
	"LIQUIDO" NUMBER, 
	"PRIMA_DEVEN" NUMBER, 
	"COM_DEVEN" NUMBER, 
	"CTIPCOA" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_CUADRE05"."PRIMA_DEVEN" IS 'Prima devengada';
   COMMENT ON COLUMN "AXIS"."HIS_CUADRE05"."COM_DEVEN" IS 'Comisi�n devengada';
   COMMENT ON COLUMN "AXIS"."HIS_CUADRE05"."CTIPCOA" IS 'C�digo tipo de coaseguro';
   COMMENT ON TABLE "AXIS"."HIS_CUADRE05"  IS 'Recibos cobrados en el mes emitidos en el a�o';
  GRANT UPDATE ON "AXIS"."HIS_CUADRE05" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CUADRE05" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_CUADRE05" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_CUADRE05" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CUADRE05" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_CUADRE05" TO "PROGRAMADORESCSI";
