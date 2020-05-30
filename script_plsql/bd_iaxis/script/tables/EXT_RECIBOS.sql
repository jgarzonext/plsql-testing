--------------------------------------------------------
--  DDL for Table EXT_RECIBOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."EXT_RECIBOS" 
   (	"CCOMPANI" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"CMEDIAD" NUMBER, 
	"CCOLABO" NUMBER, 
	"NPOLCIA" VARCHAR2(50 BYTE), 
	"NRECCIA" VARCHAR2(20 BYTE), 
	"FEFECTO" DATE, 
	"FVENCIM" DATE, 
	"IPRINET" NUMBER, 
	"ITOTREC" NUMBER, 
	"CTIPCOM" NUMBER(1,0), 
	"ICOMBRU" NUMBER, 
	"IGASGES" NUMBER, 
	"CSITREC" NUMBER(1,0), 
	"NMOVREC" NUMBER(3,0), 
	"CTIPREC" NUMBER(2,0), 
	"SEXTMOVREC" NUMBER(8,0), 
	"SPROCES" NUMBER, 
	"ICOMCIA" NUMBER, 
	"ICOMIND" NUMBER, 
	"IRETENC" NUMBER, 
	"IRETIND" NUMBER, 
	"FMOVREC" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."CCOMPANI" IS 'C�digo Compa�ia';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."SPRODUC" IS 'Identificador producto AXIS';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."CMEDIAD" IS 'Identificador mediador';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."CCOLABO" IS 'Identificador colaborador';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."NPOLCIA" IS 'N�mero de p�liza compa�ia';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."NRECCIA" IS 'N�mero de recibo compa�ia';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."FEFECTO" IS 'Fecha efecto del recibo';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."FVENCIM" IS 'Fecha vencimiento del recibo';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."IPRINET" IS 'Importe prima neta del recibo';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."ITOTREC" IS 'Importe total del recibo';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."CTIPCOM" IS 'Tipo comisi�n';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."ICOMBRU" IS 'Importe comisi�n bruta';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."IGASGES" IS 'Importe gastos de gesti�n';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."CSITREC" IS 'Situaci�n del recibo';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."NMOVREC" IS 'Movimiento Recibo';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."CTIPREC" IS 'Tipo recibo';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."SEXTMOVREC" IS 'Identificador de secuencia de movimiento de recibo';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."SPROCES" IS 'Identificador proceso';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."ICOMCIA" IS 'Importe Comisi�n Compa��a';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."ICOMIND" IS 'Comisi�n indirecta';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."IRETENC" IS 'Retenci�n';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."IRETIND" IS 'Retenci�n indirecta';
   COMMENT ON COLUMN "AXIS"."EXT_RECIBOS"."FMOVREC" IS 'Fecha movimiento del recibo';
   COMMENT ON TABLE "AXIS"."EXT_RECIBOS"  IS 'Tabla externa con los datos b�sicos de recibos externos a iAxis';
  GRANT UPDATE ON "AXIS"."EXT_RECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXT_RECIBOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EXT_RECIBOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EXT_RECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXT_RECIBOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EXT_RECIBOS" TO "PROGRAMADORESCSI";