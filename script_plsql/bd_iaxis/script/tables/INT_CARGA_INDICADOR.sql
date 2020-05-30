--------------------------------------------------------
--  DDL for Table INT_CARGA_INDICADOR
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_CARGA_INDICADOR" 
   (	"SPROCES" NUMBER, 
	"NLINEA" NUMBER, 
	"NCARGA" NUMBER, 
	"CCIIU" NUMBER, 
	"IMARGEN" NUMBER, 
	"ICAPTRAB" NUMBER, 
	"TRAZCOR" VARCHAR2(2000 BYTE), 
	"TPRBACI" VARCHAR2(2000 BYTE), 
	"IENDUADA" NUMBER, 
	"NDIACAR" NUMBER, 
	"NROTPRO" NUMBER, 
	"NROTINV" NUMBER, 
	"NDIACICL" NUMBER, 
	"IRENTAB" NUMBER, 
	"IOBLCP" NUMBER, 
	"IOBLLP" NUMBER, 
	"IGASTFIN" NUMBER, 
	"IVALPT" NUMBER, 
	"CUSUALT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."SPROCES" IS 'Numero de proceso';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."NLINEA" IS 'Numero l�nea fichero';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."NCARGA" IS 'Carga';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."CCIIU" IS 'Codigo CCIIU V.F. 8001072';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."IMARGEN" IS 'Margen operacional';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."ICAPTRAB" IS 'Capital trabajo';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."IENDUADA" IS 'Endeudamiento total';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."NDIACAR" IS 'Rotaci�n Cartera(D�as)';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."NROTPRO" IS 'Rotaci�n proveedores';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."NROTINV" IS 'Rotaci�n de inventarios';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."NDIACICL" IS 'Ciclo de efectivo(D�as)';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."IRENTAB" IS 'Rentabilidad';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."IOBLCP" IS 'Obliga. Fin. CP/Ventas';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."IOBLLP" IS 'Obliga. Fin. LP/Ventas';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."IGASTFIN" IS 'Gastos. Fin. /UOP';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."IVALPT" IS 'Valoraci�n /PT';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_INDICADOR"."CUSUALT" IS 'Fecha de alta';
  GRANT UPDATE ON "AXIS"."INT_CARGA_INDICADOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_INDICADOR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_CARGA_INDICADOR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_CARGA_INDICADOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_INDICADOR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_CARGA_INDICADOR" TO "PROGRAMADORESCSI";