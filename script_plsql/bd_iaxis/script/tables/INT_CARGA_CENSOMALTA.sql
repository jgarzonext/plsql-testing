--------------------------------------------------------
--  DDL for Table INT_CARGA_CENSOMALTA
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_CARGA_CENSOMALTA" 
   (	"PROCESO" NUMBER, 
	"NLINEA" NUMBER(9,0), 
	"NCARGA" NUMBER, 
	"NOMBRE" VARCHAR2(200 BYTE), 
	"APELLIDOS" VARCHAR2(200 BYTE), 
	"NOMBRESOLTERA" VARCHAR2(200 BYTE), 
	"DNI" VARCHAR2(8 BYTE), 
	"CALLE" VARCHAR2(200 BYTE), 
	"VOTANTE" NUMBER(1,0), 
	"DETALLE" VARCHAR2(200 BYTE), 
	"CPOBLAC" NUMBER, 
	"CPROVIN" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."INT_CARGA_CENSOMALTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_CENSOMALTA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_CARGA_CENSOMALTA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_CARGA_CENSOMALTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_CENSOMALTA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_CARGA_CENSOMALTA" TO "PROGRAMADORESCSI";
