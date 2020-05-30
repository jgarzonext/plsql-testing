--------------------------------------------------------
--  DDL for Table DETFLUJO_PASIVOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETFLUJO_PASIVOS" 
   (	"SPROCES" NUMBER, 
	"FVALOR" DATE, 
	"SSEGURO" NUMBER, 
	"EJERC" NUMBER(4,0), 
	"LINEA" NUMBER(6,0), 
	"REGISTRO" NUMBER(2,0), 
	"DURACION" NUMBER(3,0), 
	"INICIOPER" NUMBER(4,0), 
	"FINPER" NUMBER(4,0), 
	"IIMPORT" NUMBER, 
	"CFALL" NUMBER, 
	"CGARREN" NUMBER, 
	"RENTAS" NUMBER, 
	"CGARVCT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."SPROCES" IS 'Sproces identificador del flujo';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."FVALOR" IS 'Fecha valor';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."SSEGURO" IS 'Seguro tratado en el flujo de c�lculo';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."EJERC" IS 'Ejercicio';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."LINEA" IS 'L�nea del proceso de c�lculo';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."REGISTRO" IS 'Registro de c�lculo para una p�liza';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."DURACION" IS 'Duraci�n en a�os desde a�o de c�lculo hasta vencimiento';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."INICIOPER" IS 'Inicio de periodo';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."FINPER" IS 'Fin de periodo';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."IIMPORT" IS 'Capital de fallecimiento a final de periodo';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."CFALL" IS 'Pago probable por fallecimiento';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."CGARREN" IS 'Pago probable de las Rentas de Supervivencia';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."RENTAS" IS 'Renta';
   COMMENT ON COLUMN "AXIS"."DETFLUJO_PASIVOS"."CGARVCT" IS 'Capital garantizado al vencimiento';
  GRANT UPDATE ON "AXIS"."DETFLUJO_PASIVOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETFLUJO_PASIVOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETFLUJO_PASIVOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETFLUJO_PASIVOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETFLUJO_PASIVOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETFLUJO_PASIVOS" TO "PROGRAMADORESCSI";
