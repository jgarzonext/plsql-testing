--------------------------------------------------------
--  DDL for Table AUT_MARCAS_PROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_MARCAS_PROD" 
   (	"CEMPRES" NUMBER(5,0), 
	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(4,0), 
	"CMARCA" VARCHAR2(5 BYTE), 
	"CMODELO" VARCHAR2(6 BYTE), 
	"CVERSION" VARCHAR2(11 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUT_MARCAS_PROD"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS_PROD"."SPRODUC" IS 'Producto';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS_PROD"."CACTIVI" IS 'Actividad';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS_PROD"."CMARCA" IS 'Marca vehiculo';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS_PROD"."CMODELO" IS 'Tipo vehiculo';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS_PROD"."CVERSION" IS 'Version vehiculo';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS_PROD"."CUSUALT" IS 'Usuario alta';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS_PROD"."FALTA" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS_PROD"."CUSUMOD" IS 'Usuario modificacion';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS_PROD"."FMODIFI" IS 'Fecha modificacion';
   COMMENT ON TABLE "AXIS"."AUT_MARCAS_PROD"  IS 'Tabla que se utiliza para filtrar los valores de marca/modelo/version
Miramos si en la tabla PARPRODUCTOS existe el parametro TIPO_FILTRO_AUTOS
Si el valor es 0, no se aplica filtro. Si es 1 debe existir fila. Si es 2 NO debe existir';
  GRANT UPDATE ON "AXIS"."AUT_MARCAS_PROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_MARCAS_PROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUT_MARCAS_PROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_MARCAS_PROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_MARCAS_PROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_MARCAS_PROD" TO "PROGRAMADORESCSI";
