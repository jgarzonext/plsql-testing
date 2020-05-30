--------------------------------------------------------
--  DDL for Table ALM_INT
--------------------------------------------------------

  CREATE TABLE "AXIS"."ALM_INT" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER, 
	"CTIPSEG" NUMBER, 
	"CCOLECT" NUMBER, 
	"FINI" DATE, 
	"FFIN" DATE, 
	"PSINIS" NUMBER, 
	"PIT" NUMBER, 
	"PRESC" NUMBER, 
	"PPRIMES" NUMBER DEFAULT 0, 
	"PCARTERA" NUMBER DEFAULT 0, 
	"IRESC" NUMBER, 
	"IPRIMES" NUMBER, 
	"ISINIS" NUMBER, 
	"ICARTERA" NUMBER, 
	"NEDAD" NUMBER(3,0), 
	"CTABSUP" NUMBER(6,0), 
	"CTABMUE" NUMBER(6,0), 
	"CTABINV" NUMBER(6,0), 
	"CTABRES" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ALM_INT"."FINI" IS 'Fecha de inicio de validez de los par�metros';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."FFIN" IS 'Fecha de fin de validez de los par�metros';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."PSINIS" IS 'Porcentaje de siniestros respecto de la provisi�n del mes anterior';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."PIT" IS 'Inter�s t�cnico aplicado en el periodo';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."PRESC" IS 'Porcentaje de rescates respecto de la provisi�n del mes anterior';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."PPRIMES" IS 'Porcentaje de primas respecto de la provisi�n del mes anterior';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."PCARTERA" IS 'Porcentaje de cartera respecto de la provisi�n del mes anterior';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."IRESC" IS 'Importe Rescate : mes, a�o, y producto considerado';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."IPRIMES" IS 'Importe Primas : mes, a�o, y producto considerado';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."ISINIS" IS 'Importe Siniestros : mes, a�o, y producto considerado';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."ICARTERA" IS 'Importe Cartera: mes, a�o, y producto considerado';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."NEDAD" IS 'Edad trasladada al vencimiento';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."CTABSUP" IS 'T.Supervivencia Informado Calcula Probabilidad';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."CTABMUE" IS 'T.Mortalidad Informado Calcula Probabilidad';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."CTABINV" IS 'T.Invalidez Informado Calcula Probabilidad';
   COMMENT ON COLUMN "AXIS"."ALM_INT"."CTABRES" IS 'T.Rescates Informado Calcula Probabilidad';
   COMMENT ON TABLE "AXIS"."ALM_INT"  IS 'informaci�n par�metros simulaci�n del ALM';
  GRANT UPDATE ON "AXIS"."ALM_INT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ALM_INT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ALM_INT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ALM_INT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ALM_INT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ALM_INT" TO "PROGRAMADORESCSI";
