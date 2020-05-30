--------------------------------------------------------
--  DDL for Table MANDATOS_SEGUROS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MANDATOS_SEGUROS" 
   (	"CMANDATO" VARCHAR2(35 BYTE), 
	"NUMFOLIO" NUMBER, 
	"SUCURSAL" VARCHAR2(50 BYTE), 
	"FECHAMANDATO" DATE, 
	"SSEGURO" NUMBER, 
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

   COMMENT ON COLUMN "AXIS"."MANDATOS_SEGUROS"."CMANDATO" IS 'C�digo de mandato (n�mero del Iaxis que debe ser el mismo de la tabla de mandatos)';
   COMMENT ON COLUMN "AXIS"."MANDATOS_SEGUROS"."NUMFOLIO" IS 'N�mero de folio (c�digo de mandato de la compa��a RSA)';
   COMMENT ON COLUMN "AXIS"."MANDATOS_SEGUROS"."SUCURSAL" IS 'N�mero de sucursal';
   COMMENT ON COLUMN "AXIS"."MANDATOS_SEGUROS"."FECHAMANDATO" IS 'Fecha Mandato';
   COMMENT ON COLUMN "AXIS"."MANDATOS_SEGUROS"."SSEGURO" IS 'C�digo de seguro';
   COMMENT ON COLUMN "AXIS"."MANDATOS_SEGUROS"."FALTAREL" IS 'Fecha de alta de la relaci�n';
   COMMENT ON COLUMN "AXIS"."MANDATOS_SEGUROS"."CUSUALTAREL" IS 'Usuario de alta de la relaci�n';
   COMMENT ON COLUMN "AXIS"."MANDATOS_SEGUROS"."FBAJAREL" IS 'Fecha de baja de la relaci�n';
   COMMENT ON COLUMN "AXIS"."MANDATOS_SEGUROS"."CUSUBAJAREL" IS 'Usuario de baja de la relaci�n';
   COMMENT ON COLUMN "AXIS"."MANDATOS_SEGUROS"."NMOVIMI" IS 'Secuencial numero de movimiento';
   COMMENT ON COLUMN "AXIS"."MANDATOS_SEGUROS"."FFINVIG" IS 'Fecha fin de vigencia del mandato';
   COMMENT ON TABLE "AXIS"."MANDATOS_SEGUROS"  IS 'Relaci�n de asignaciones que tiene o ha tenido el mandato';
  GRANT UPDATE ON "AXIS"."MANDATOS_SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MANDATOS_SEGUROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MANDATOS_SEGUROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MANDATOS_SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MANDATOS_SEGUROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MANDATOS_SEGUROS" TO "PROGRAMADORESCSI";