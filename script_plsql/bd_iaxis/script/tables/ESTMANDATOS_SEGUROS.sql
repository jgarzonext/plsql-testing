--------------------------------------------------------
--  DDL for Table ESTMANDATOS_SEGUROS
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTMANDATOS_SEGUROS" 
   (	"CMANDATO" VARCHAR2(35 BYTE), 
	"NUMFOLIO" NUMBER, 
	"SUCURSAL" VARCHAR2(50 BYTE), 
	"FECHAMANDATO" DATE, 
	"SSEGURO" NUMBER, 
	"HAYMANDATPREV" NUMBER, 
	"FALTAREL" DATE, 
	"CUSUALTAREL" VARCHAR2(30 BYTE), 
	"FBAJAREL" DATE, 
	"CUSUBAJAREL" VARCHAR2(30 BYTE), 
	"NMOVIMI" NUMBER, 
	"FFINVIG" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."CMANDATO" IS 'C�digo de mandato (n�mero del Iaxis que debe ser el mismo de la tabla de mandatos)';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."NUMFOLIO" IS 'N�mero de folio (c�digo de mandato de la compa��a RSA)';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."SUCURSAL" IS 'N�mero de sucursal';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."FECHAMANDATO" IS 'Fecha Mandato';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."SSEGURO" IS 'C�digo de seguro';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."HAYMANDATPREV" IS 'Valores 0,1 Variable a nivel de pantalla para controlar, si existe un folio anterior ';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."FALTAREL" IS 'Fecha de alta de la relaci�n';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."CUSUALTAREL" IS 'Usuario de alta de la relaci�n';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."FBAJAREL" IS 'Fecha de baja de la relaci�n';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."CUSUBAJAREL" IS 'Usuario de baja de la relaci�n';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."NMOVIMI" IS 'Secuencial numero de movimiento';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS_SEGUROS"."FFINVIG" IS 'Fecha fin de vigencia del mandato';
   COMMENT ON TABLE "AXIS"."ESTMANDATOS_SEGUROS"  IS 'Tabla temporal de MANDATOS_SEGUROS';
  GRANT UPDATE ON "AXIS"."ESTMANDATOS_SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTMANDATOS_SEGUROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTMANDATOS_SEGUROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTMANDATOS_SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTMANDATOS_SEGUROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTMANDATOS_SEGUROS" TO "PROGRAMADORESCSI";