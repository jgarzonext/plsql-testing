--------------------------------------------------------
--  DDL for Table ANUAUTDETRIESGOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUAUTDETRIESGOS" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CVERSION" VARCHAR2(11 BYTE), 
	"CACCESORIO" VARCHAR2(10 BYTE), 
	"CTIPACC" VARCHAR2(8 BYTE), 
	"FINI" DATE, 
	"IVALACC" NUMBER, 
	"TDESACC" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUAUTDETRIESGOS"."SSEGURO" IS 'Secuencial de seguro';
   COMMENT ON COLUMN "AXIS"."ANUAUTDETRIESGOS"."NRIESGO" IS 'Numero de riesgo';
   COMMENT ON COLUMN "AXIS"."ANUAUTDETRIESGOS"."NMOVIMI" IS 'Numero de movimiento';
   COMMENT ON COLUMN "AXIS"."ANUAUTDETRIESGOS"."CVERSION" IS 'Codigo de la version del vehiculo';
   COMMENT ON COLUMN "AXIS"."ANUAUTDETRIESGOS"."CACCESORIO" IS 'Codigo accesorio/Opcionpack';
   COMMENT ON COLUMN "AXIS"."ANUAUTDETRIESGOS"."CTIPACC" IS 'Codigo tipo accesorio. Valor fijo = 292';
   COMMENT ON COLUMN "AXIS"."ANUAUTDETRIESGOS"."FINI" IS 'Fecha inicio o alta';
   COMMENT ON COLUMN "AXIS"."ANUAUTDETRIESGOS"."IVALACC" IS 'Valor accesorio';
   COMMENT ON COLUMN "AXIS"."ANUAUTDETRIESGOS"."TDESACC" IS 'Descripcion accesorios';
   COMMENT ON TABLE "AXIS"."ANUAUTDETRIESGOS"  IS 'Almacena los accesorios que tiene un auto';
  GRANT UPDATE ON "AXIS"."ANUAUTDETRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUAUTDETRIESGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUAUTDETRIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUAUTDETRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUAUTDETRIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUAUTDETRIESGOS" TO "PROGRAMADORESCSI";
