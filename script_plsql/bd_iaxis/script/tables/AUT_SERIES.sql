--------------------------------------------------------
--  DDL for Table AUT_SERIES
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_SERIES" 
   (	"CVERSION" VARCHAR2(11 BYTE), 
	"CSERIE" VARCHAR2(5 BYTE), 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"TTAPICERIA" VARCHAR2(15 BYTE), 
	"TEQUIPAUDIO" VARCHAR2(13 BYTE), 
	"TCASETE" VARCHAR2(2 BYTE), 
	"TCD" VARCHAR2(2 BYTE), 
	"TAIREACOND" VARCHAR2(13 BYTE), 
	"TCLIMATIZA" VARCHAR2(2 BYTE), 
	"TABS" VARCHAR2(13 BYTE), 
	"TBOMBILLAF" VARCHAR2(15 BYTE), 
	"TLLANTA" VARCHAR2(20 BYTE), 
	"TCAMBIO" VARCHAR2(10 BYTE), 
	"TEMBRAUT" VARCHAR2(2 BYTE), 
	"TTRACCIÓN" VARCHAR2(13 BYTE), 
	"TNAVEGADOR" VARCHAR2(13 BYTE), 
	"TCAMBSEQ" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."CVERSION" IS 'Código numérico y exclusivo de cada vehículo';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."CSERIE" IS 'Especifica cada configuración de equipamiento';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."FINICIO" IS 'Fecha de inicio de la configuración. Formato mes/año (mm/aaaa)';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."FFIN" IS 'Fecha de lanzamiento. Formato mes/año (mm/aaaa)';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TTAPICERIA" IS 'Especifica tipo del material principal de la tapicería';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TEQUIPAUDIO" IS 'Especifica la disponibilidad de equipo de audio';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TCASETE" IS 'Si el equipo de audio de serie incorpora Casete';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TCD" IS 'Si el equipo de audio de serie incorpora Lector de CD';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TAIREACOND" IS 'Especifica la disponibilidad de aire acondicionado';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TCLIMATIZA" IS 'Si el aire acondicionado cuenta con climatizador automático';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TABS" IS 'Especifica la disponibilidad de frenos ABS';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TBOMBILLAF" IS 'Especifica el tipo de bombilla de los faros';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TLLANTA" IS 'Especifica el tipo de material de las llantas';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TCAMBIO" IS 'Especifica el tipo de caja de cambios';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TEMBRAUT" IS 'Indica si el embrague es automático (para cambio manual)';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TTRACCIÓN" IS 'Especifica la disponibilidad de control electrónico de tracción';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TNAVEGADOR" IS 'Especifica la disponibilidad de navegador';
   COMMENT ON COLUMN "AXIS"."AUT_SERIES"."TCAMBSEQ" IS 'Indica si el accionamiento es secuencial (para cambio manual)';
  GRANT UPDATE ON "AXIS"."AUT_SERIES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_SERIES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUT_SERIES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_SERIES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_SERIES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_SERIES" TO "PROGRAMADORESCSI";
