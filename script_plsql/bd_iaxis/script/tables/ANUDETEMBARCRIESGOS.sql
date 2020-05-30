--------------------------------------------------------
--  DDL for Table ANUDETEMBARCRIESGOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUDETEMBARCRIESGOS" 
   (	"NRIESGO" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"TDESACC" VARCHAR2(50 BYTE), 
	"IVALACC" NUMBER, 
	"IREVAL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUDETEMBARCRIESGOS"."NRIESGO" IS 'Numero de riesgo';
   COMMENT ON COLUMN "AXIS"."ANUDETEMBARCRIESGOS"."SSEGURO" IS 'Secuencial de seguro';
   COMMENT ON COLUMN "AXIS"."ANUDETEMBARCRIESGOS"."NMOVIMI" IS 'Número de Movimiento';
   COMMENT ON COLUMN "AXIS"."ANUDETEMBARCRIESGOS"."TDESACC" IS 'Descripción de los accesorios';
   COMMENT ON COLUMN "AXIS"."ANUDETEMBARCRIESGOS"."IVALACC" IS 'Importe del accesorio';
   COMMENT ON COLUMN "AXIS"."ANUDETEMBARCRIESGOS"."IREVAL" IS 'Importe de revalorización accesorio';
   COMMENT ON TABLE "AXIS"."ANUDETEMBARCRIESGOS"  IS 'Tabla de ANUDETEMBARCRIESGOS';
  GRANT UPDATE ON "AXIS"."ANUDETEMBARCRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUDETEMBARCRIESGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUDETEMBARCRIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUDETEMBARCRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUDETEMBARCRIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUDETEMBARCRIESGOS" TO "PROGRAMADORESCSI";
