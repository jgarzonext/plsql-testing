--------------------------------------------------------
--  DDL for Table ESTPLANRENTASIRREG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTPLANRENTASIRREG" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"MES" NUMBER(2,0), 
	"ANYO" NUMBER(4,0), 
	"IMPORTE" NUMBER(14,3), 
	"ESTADO" NUMBER, 
	"SRECREN" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTPLANRENTASIRREG"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."ESTPLANRENTASIRREG"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."ESTPLANRENTASIRREG"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."ESTPLANRENTASIRREG"."MES" IS 'Mes de la renta irregular';
   COMMENT ON COLUMN "AXIS"."ESTPLANRENTASIRREG"."ANYO" IS 'A�o de la renta irregular';
   COMMENT ON COLUMN "AXIS"."ESTPLANRENTASIRREG"."IMPORTE" IS 'Importe de la renta irregular';
   COMMENT ON COLUMN "AXIS"."ESTPLANRENTASIRREG"."ESTADO" IS 'Estado de la renta';
   COMMENT ON COLUMN "AXIS"."ESTPLANRENTASIRREG"."SRECREN" IS 'N�mero de pago';
  GRANT UPDATE ON "AXIS"."ESTPLANRENTASIRREG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPLANRENTASIRREG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTPLANRENTASIRREG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTPLANRENTASIRREG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPLANRENTASIRREG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTPLANRENTASIRREG" TO "PROGRAMADORESCSI";
