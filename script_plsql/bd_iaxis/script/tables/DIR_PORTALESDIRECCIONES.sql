--------------------------------------------------------
--  DDL for Table DIR_PORTALESDIRECCIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."DIR_PORTALESDIRECCIONES" 
   (	"IDFINCA" NUMBER(10,0), 
	"IDPORTAL" NUMBER(2,0), 
	"IDGEODIR" NUMBER(10,0), 
	"CPRINCIP" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DIR_PORTALESDIRECCIONES"."IDFINCA" IS 'Id interno de la Finca';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALESDIRECCIONES"."IDPORTAL" IS 'Secuencial del Portal en la Finca';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALESDIRECCIONES"."IDGEODIR" IS 'Id interno de la GEODirecci�n';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALESDIRECCIONES"."CPRINCIP" IS 'Marca de GEODirecci�n Prioritaria (S�lo uno por portal. Para obtener la direcci�n principal del portal)';
   COMMENT ON TABLE "AXIS"."DIR_PORTALESDIRECCIONES"  IS 'Portales direcciones';
  GRANT UPDATE ON "AXIS"."DIR_PORTALESDIRECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_PORTALESDIRECCIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DIR_PORTALESDIRECCIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DIR_PORTALESDIRECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_PORTALESDIRECCIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DIR_PORTALESDIRECCIONES" TO "PROGRAMADORESCSI";
