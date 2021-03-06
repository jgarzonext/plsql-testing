--------------------------------------------------------
--  DDL for Table CESIONESREA
--------------------------------------------------------

  CREATE TABLE "AXIS"."CESIONESREA" 
   (	"SCESREA" NUMBER(8,0), 
	"NCESION" NUMBER(6,0), 
	"ICESION" NUMBER, 
	"ICAPCES" NUMBER, 
	"SSEGURO" NUMBER, 
	"NVERSIO" NUMBER(2,0), 
	"SCONTRA" NUMBER(6,0), 
	"CTRAMO" NUMBER(2,0), 
	"SFACULT" NUMBER(6,0), 
	"NRIESGO" NUMBER(6,0), 
	"ICOMISI" NUMBER, 
	"ICOMREG" NUMBER, 
	"SCUMULO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"SPLENO" NUMBER(6,0), 
	"CCALIF1" VARCHAR2(1 BYTE), 
	"CCALIF2" NUMBER(2,0), 
	"NSINIES" NUMBER, 
	"FEFECTO" DATE, 
	"FVENCIM" DATE, 
	"FCONTAB" DATE, 
	"PCESION" NUMBER(8,5), 
	"SPROCES" NUMBER, 
	"CGENERA" NUMBER(2,0), 
	"FGENERA" DATE, 
	"FREGULA" DATE, 
	"FANULAC" DATE, 
	"NMOVIMI" NUMBER(4,0), 
	"SIDEPAG" NUMBER(8,0), 
	"IPRITARREA" NUMBER, 
	"IDTOSEL" NUMBER, 
	"PSOBREPRIMA" NUMBER(8,5), 
	"CDETCES" NUMBER(1,0), 
	"IPLENO" NUMBER, 
	"ICAPACI" NUMBER, 
	"NMOVIGEN" NUMBER(6,0), 
	"IEXTRAP" NUMBER(19,12), 
	"IEXTREA" NUMBER, 
	"NREEMB" NUMBER(8,0), 
	"NFACT" NUMBER(8,0), 
	"NLINEA" NUMBER(4,0), 
	"ITARIFREA" NUMBER(15,4), 
	"ICOMEXT" NUMBER, 
	"CTRAMPA" NUMBER(2,0) DEFAULT NULL, 
	"CTIPOMOV" VARCHAR2(1 BYTE), 
	"CCUTOFF" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CESIONESREA"."ICESION" IS 'Importe prima anual';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."CTRAMO" IS 'C�digo del tramo 0-Primer tramo (pleno inicial), 1...4-Sucesivos, 5-Facultativo';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."CGENERA" IS 'Tipo movimiento 2-Siniestros, 3-Producci�n(normal), 4 y 7-Suplementos, 6 Anulaci�n, 5-Cartera';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."IPRITARREA" IS 'Prima de tarifa';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."IDTOSEL" IS 'Importe descuento de selecci�n';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."PSOBREPRIMA" IS 'Porcentaje sobreprima';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."CDETCES" IS 'Indica si se graba o no a reasegemi';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."IPLENO" IS 'Ple utilitzat en el c�lcul de la cessi�';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."ICAPACI" IS 'Capacitat utilitzada en el c�lcul de la cessi�';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."NMOVIGEN" IS 'Conjunt de cessions generades en el mateix moment';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."IEXTRAP" IS 'Tasa para el c�lculo de la extraprima';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."IEXTREA" IS 'Extraprima a reasegurar (ya incluida en la prima [IPRIREA])';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."NREEMB" IS 'N� de reembolso';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."NFACT" IS 'N� de factura interno, por defecto yyyymmxx, donde xx es un contador. Ej. 20080501';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."NLINEA" IS 'N� de l�nea';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."ITARIFREA" IS 'Tasa de Reaseguro';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."ICOMEXT" IS 'Importe comisi�n de la extra prima';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."CTRAMPA" IS 'Tramo Padre';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."CTIPOMOV" IS 'Tipo de Movimiento: Manual - Automatico';
   COMMENT ON COLUMN "AXIS"."CESIONESREA"."CCUTOFF" IS 'Indica si el valor proviene de Cut-Off de Compa�ias';
  GRANT UPDATE ON "AXIS"."CESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CESIONESREA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CESIONESREA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CESIONESREA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CESIONESREA" TO "PROGRAMADORESCSI";
