--------------------------------------------------------
--  DDL for Table REMUNERACION_CANAL
--------------------------------------------------------

  CREATE TABLE "AXIS"."REMUNERACION_CANAL" 
   (	"SREMCANAL" NUMBER(6,0), 
	"CEMPRES" NUMBER(2,0), 
	"CRAMO" NUMBER(8,0), 
	"SPERSON" NUMBER(10,0), 
	"FCIERRE" DATE, 
	"FPERINI" DATE, 
	"FPERFIN" DATE, 
	"SPROCES" NUMBER, 
	"FPROCES" DATE, 
	"CMODO" NUMBER(1,0), 
	"TTIPPER" VARCHAR2(100 BYTE), 
	"IPRIEMI" NUMBER, 
	"ICARTERA90" NUMBER, 
	"ICARTERA180" NUMBER, 
	"PSINIES" NUMBER(5,2), 
	"ICREPRIEMI" NUMBER, 
	"ICREPRINET" NUMBER, 
	"NPOLNEW" NUMBER, 
	"IPOLNEW" NUMBER, 
	"NPOLREN" NUMBER, 
	"IPOLREN" NUMBER, 
	"IPRIRECAUD" NUMBER, 
	"CTIPPER" NUMBER(1,0), 
	"IPRINET" NUMBER, 
	"IIMPSIN" NUMBER, 
	"IGASLAE" NUMBER, 
	"IPRIDEV" NUMBER, 
	"IPRI90" NUMBER, 
	"IPRI180" NUMBER, 
	"ITMPCOR" NUMBER, 
	"IRETPRI" NUMBER, 
	"ICARCTG" NUMBER, 
	"ICTNEG90" NUMBER, 
	"ICTNEG180" NUMBER, 
	"ICSTXL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."SREMCANAL" IS 'Id. de la Remuneraci�n';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."CEMPRES" IS 'C�digo de la empresa';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."CRAMO" IS 'C�digo del ramo del producto';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."SPERSON" IS 'Id. de la persona';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."FCIERRE" IS 'Fecha del cierre';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."FPERINI" IS 'Fecha del periodo inicial';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."FPERFIN" IS 'Fecha del periodo final';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."SPROCES" IS 'Id. del proceso';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."FPROCES" IS 'Fecha del proceso';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."CMODO" IS 'C�digo del modo (1 - Previo, 2 - Definitivo)';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."TTIPPER" IS 'Tipo de persona';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."IPRIEMI" IS 'Suma de las primas emitidas';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."ICARTERA90" IS '�ndice de cartera > 90 d�as';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."ICARTERA180" IS '�ndice de cartera > 180 d�as';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."PSINIES" IS '% de Siniestralidad';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."ICREPRIEMI" IS 'Crecimiento de la prima emitida';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."ICREPRINET" IS 'Crecimiento de la prima neta';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."NPOLNEW" IS 'N�mero de p�lizas nuevas';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."IPOLNEW" IS 'Valor de las p�lizas nuevas';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."NPOLREN" IS 'N�mero de p�lizas renovadas';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."IPOLREN" IS 'Valor de las p�lizas renovadas';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."IPRIRECAUD" IS 'Primas recaudadas';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."CTIPPER" IS 'Tipo de Persona (1-Promotor,  2-Gestor, 3-Vicepresidente, 4-Gerente, 5-Director, 6-Coordinador)';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."IPRINET" IS 'Suma de las primas netas';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."IIMPSIN" IS 'Importe de los Siniestros';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."IGASLAE" IS 'Importe de los Gastos LAE';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."IPRIDEV" IS 'Importe de Prima Devengada';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."IPRI90" IS 'Importe de las Primas por cobrar > 90 d�as';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."IPRI180" IS 'Importe de las Primas por cobrar > 180 d�as';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."ITMPCOR" IS 'Importe de los Tiempos Corridos';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."IRETPRI" IS 'Importe de los Retenedores de Primas';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."ICARCTG" IS 'Importe de la Cartera Castigada';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."ICTNEG90" IS 'Importe de la Cartera Negativa > 90 d�as';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."ICTNEG180" IS 'Importe de la Cartera Negativa > 180 d�as';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL"."ICSTXL" IS 'Importe de los Costes XL';
   COMMENT ON TABLE "AXIS"."REMUNERACION_CANAL"  IS 'Tabla para registrar la cabecera de la remuneraci�n del canal';
  GRANT UPDATE ON "AXIS"."REMUNERACION_CANAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REMUNERACION_CANAL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REMUNERACION_CANAL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REMUNERACION_CANAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REMUNERACION_CANAL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REMUNERACION_CANAL" TO "PROGRAMADORESCSI";