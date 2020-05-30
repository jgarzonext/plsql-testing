--------------------------------------------------------
--  DDL for Table ESTCESIONESREA
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTCESIONESREA" 
   (	"SCESREA" NUMBER(8,0), 
	"NCESION" NUMBER(6,0), 
	"ICESION" NUMBER, 
	"ICAPCES" NUMBER, 
	"SSEGURO" NUMBER, 
	"SSEGPOL" NUMBER, 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"NVERSIO" NUMBER(2,0), 
	"SCONTRA" NUMBER(6,0), 
	"CTRAMO" NUMBER(2,0), 
	"SFACULT" NUMBER(6,0), 
	"NRIESGO" NUMBER(6,0), 
	"ICOMISI" NUMBER, 
	"SCUMULO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"SPLENO" NUMBER(6,0), 
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
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE), 
	"CTIPOMOV" VARCHAR2(1 BYTE), 
	"CTRAMPA" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."SCESREA" IS 'Identificador de la cesi�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."NCESION" IS 'N�mero de cesi�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."ICESION" IS 'Importe de la cesi�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."ICAPCES" IS 'Capital de la cesi�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."SSEGURO" IS 'Identificador del seguro (ESTSEGUROS)';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."SSEGPOL" IS 'Identificador del seguro (SEGUROS)';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."NVERSIO" IS 'N�mero de versi�n del contrato';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."SCONTRA" IS 'Identificador del contrato';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."CTRAMO" IS 'Identificador del tramo';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."SFACULT" IS 'Identificador del facultativo';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."NRIESGO" IS 'Identificador del riesgo';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."ICOMISI" IS 'Importe de comisi�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."SCUMULO" IS 'Identificador del c�mulo';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."CGARANT" IS 'Identificador de la garantia';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."SPLENO" IS 'Identificador del pleno';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."NSINIES" IS 'Identificador del siniestro';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."FEFECTO" IS 'Fecha de efecto';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."FVENCIM" IS 'Fecha de vencimiento';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."FCONTAB" IS 'Fecha contable';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."PCESION" IS '% de cesi�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."SPROCES" IS 'Identificador del proceso';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."CGENERA" IS 'Indica el proceso que esta insertando el registro';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."FGENERA" IS 'Fecha de generaci�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."FREGULA" IS 'Fecha de regulaci�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."FANULAC" IS 'Fecha de anulaci�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."SIDEPAG" IS 'Identificador del pago';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."IPRITARREA" IS 'Prima tarifa reaseguro';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."PSOBREPRIMA" IS '% sobre prima';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."CDETCES" IS 'Detalle de la cesi�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."IPLENO" IS 'Importe del pleno';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."ICAPACI" IS 'Capacidad';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."NMOVIGEN" IS 'N�mero de movimiento que lo genera';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."IEXTRAP" IS 'Importe extra prima';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."IEXTREA" IS 'Importe extra prima reaseguro';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."NREEMB" IS 'N�mero de reembolso';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."NFACT" IS 'N�mero de factura';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."NLINEA" IS 'N�mero de linea';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."ITARIFREA" IS 'Tarifa de reaseguro';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."ICOMEXT" IS 'Importe comisi�n extra prima';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."FMODIFI" IS 'Fecha modificaci�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."CUSUMOD" IS 'Usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."ESTCESIONESREA"."CTRAMPA" IS 'Tramo Padre';
  GRANT UPDATE ON "AXIS"."ESTCESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTCESIONESREA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTCESIONESREA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTCESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTCESIONESREA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTCESIONESREA" TO "PROGRAMADORESCSI";
