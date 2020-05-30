--------------------------------------------------------
--  DDL for Table ANUEXCLUSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUEXCLUSEG" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(6,0), 
	"FINIEFE" DATE, 
	"NMOVIMA" NUMBER(4,0) DEFAULT 1, 
	"CEXCLU" VARCHAR2(6 BYTE), 
	"NDURACI" NUMBER(5,2), 
	"CIZQDER" VARCHAR2(1 BYTE), 
	"NPROEXT" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUEXCLUSEG"."SSEGURO" IS 'N�mero de Seguro';
   COMMENT ON COLUMN "AXIS"."ANUEXCLUSEG"."NRIESGO" IS 'N�mero de Riesgo anulado';
   COMMENT ON COLUMN "AXIS"."ANUEXCLUSEG"."CGARANT" IS 'C�digo Garantia';
   COMMENT ON COLUMN "AXIS"."ANUEXCLUSEG"."NMOVIMI" IS 'N�mero de movimiento anulado';
   COMMENT ON COLUMN "AXIS"."ANUEXCLUSEG"."FINIEFE" IS 'Fecha Efecto del movimiento';
   COMMENT ON COLUMN "AXIS"."ANUEXCLUSEG"."NMOVIMA" IS 'N�mero de movimiento de alta';
   COMMENT ON COLUMN "AXIS"."ANUEXCLUSEG"."CEXCLU" IS 'C�digo de exclusi�n';
   COMMENT ON COLUMN "AXIS"."ANUEXCLUSEG"."NDURACI" IS 'Meses de duraci�n';
   COMMENT ON COLUMN "AXIS"."ANUEXCLUSEG"."CIZQDER" IS 'Lado afectado (Izquierda - Derecha - Ambos) CVALOR: 852';
   COMMENT ON COLUMN "AXIS"."ANUEXCLUSEG"."NPROEXT" IS 'Centros propios o externos. CVALOR: 851';
   COMMENT ON TABLE "AXIS"."ANUEXCLUSEG"  IS 'Exclusiones de garant�as rechazadas';
  GRANT UPDATE ON "AXIS"."ANUEXCLUSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUEXCLUSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUEXCLUSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUEXCLUSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUEXCLUSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUEXCLUSEG" TO "PROGRAMADORESCSI";
