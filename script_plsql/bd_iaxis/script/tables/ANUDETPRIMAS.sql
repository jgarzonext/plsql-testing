--------------------------------------------------------
--  DDL for Table ANUDETPRIMAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUDETPRIMAS" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"CCAMPO" VARCHAR2(8 BYTE), 
	"CCONCEP" VARCHAR2(8 BYTE), 
	"NORDEN" NUMBER, 
	"ICONCEP" NUMBER, 
	"ICONCEP2" NUMBER, 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."SSEGURO" IS 'Identificador de la p�liza';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."CGARANT" IS 'C�digo de la garant�a';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."FINIEFE" IS 'Fecha efecto movimiento';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."CCAMPO" IS 'Codigo del campo (tabla GARANFORMULA)';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."CCONCEP" IS 'Subconcepto (tabla CODCAMPO)';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."NORDEN" IS 'Orden de ejecuci�n';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."ICONCEP" IS 'Importe del concepto';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."ICONCEP2" IS 'Importe de la aplicaci�n del concepto';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."ANUDETPRIMAS"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON TABLE "AXIS"."ANUDETPRIMAS"  IS 'Contiene todos los valores de los subconceptos (subcampos) que forman parte de un campo de GARANFORMULA a nivel de producto (detalle de GARANSEG) antes de anular el movimiento.';
  GRANT UPDATE ON "AXIS"."ANUDETPRIMAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUDETPRIMAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUDETPRIMAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUDETPRIMAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUDETPRIMAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUDETPRIMAS" TO "PROGRAMADORESCSI";
