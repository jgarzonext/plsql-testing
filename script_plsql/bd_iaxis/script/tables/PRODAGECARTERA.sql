--------------------------------------------------------
--  DDL for Table PRODAGECARTERA
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRODAGECARTERA" 
   (	"CEMPRES" NUMBER(2,0), 
	"SPRODUC" NUMBER(6,0), 
	"CAGENTE" NUMBER, 
	"FCARANT" DATE, 
	"FCARPRO" DATE, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"FGENREN" DATE, 
	"AUTMANUAL" VARCHAR2(1 BYTE), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRODAGECARTERA"."CEMPRES" IS 'Clave Empresa';
   COMMENT ON COLUMN "AXIS"."PRODAGECARTERA"."SPRODUC" IS 'Clave Producto';
   COMMENT ON COLUMN "AXIS"."PRODAGECARTERA"."CAGENTE" IS 'Clave de agente';
   COMMENT ON COLUMN "AXIS"."PRODAGECARTERA"."FCARANT" IS 'Fecha anterior Cartera del producto';
   COMMENT ON COLUMN "AXIS"."PRODAGECARTERA"."FCARPRO" IS 'Fecha proxima Cartera del producto';
   COMMENT ON COLUMN "AXIS"."PRODAGECARTERA"."CRAMO" IS 'C�digo de ramo';
   COMMENT ON COLUMN "AXIS"."PRODAGECARTERA"."CMODALI" IS 'C�digo de modalidad';
   COMMENT ON COLUMN "AXIS"."PRODAGECARTERA"."CTIPSEG" IS 'C�digo de tipo seguro';
   COMMENT ON COLUMN "AXIS"."PRODAGECARTERA"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."PRODAGECARTERA"."FGENREN" IS 'Fecha de pr�xima generaci�n de rentas';
   COMMENT ON COLUMN "AXIS"."PRODAGECARTERA"."AUTMANUAL" IS 'Cartera Autom�tica/Manual';
   COMMENT ON TABLE "AXIS"."PRODAGECARTERA"  IS 'Tabla para las carteras de los agentes';
  GRANT UPDATE ON "AXIS"."PRODAGECARTERA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODAGECARTERA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRODAGECARTERA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRODAGECARTERA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODAGECARTERA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRODAGECARTERA" TO "PROGRAMADORESCSI";