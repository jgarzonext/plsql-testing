--------------------------------------------------------
--  DDL for Table DIFAUTRIESGOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DIFAUTRIESGOS" 
   (	"NRIESGO" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"CVERSION" VARCHAR2(11 BYTE), 
	"CTIPMAT" NUMBER(6,0), 
	"CMATRIC" VARCHAR2(12 BYTE), 
	"CCOLOR" NUMBER(3,0), 
	"NBASTID" VARCHAR2(20 BYTE), 
	"NPLAZAS" NUMBER(3,0), 
	"FCOMPRA" DATE, 
	"CVEHNUE" VARCHAR2(1 BYTE), 
	"CUSO" VARCHAR2(3 BYTE), 
	"CSUBUSO" VARCHAR2(2 BYTE), 
	"CZBONUS" NUMBER(2,0), 
	"IVEHICU" NUMBER(15,4), 
	"NPMA" NUMBER(10,3), 
	"NTARA" NUMBER(10,3)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."NRIESGO" IS 'Numero de riesgo';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."SSEGURO" IS 'Secuencial de seguro';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."CVERSION" IS 'Codigo de vehiculo';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."CTIPMAT" IS 'Tipo de matricula';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."CMATRIC" IS 'Matricula vehiculo';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."CCOLOR" IS 'Color vehiculo';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."NBASTID" IS 'Numero de bastidor';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."NPLAZAS" IS 'Numero plazas del vehiculo';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."FCOMPRA" IS 'Fecha de compra';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."CVEHNUE" IS 'Vehiculo nuevo o de segunda mano';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."CUSO" IS 'Codigo Uso del vehiculo';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."CSUBUSO" IS 'Codigo subuso del vehiculo';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."CZBONUS" IS 'Numero de Zona de Bonus/Malus';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."IVEHICU" IS 'Importe Vehiculo';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."NPMA" IS 'Peso M�ximo Autorizado';
   COMMENT ON COLUMN "AXIS"."DIFAUTRIESGOS"."NTARA" IS 'Tara';
   COMMENT ON TABLE "AXIS"."DIFAUTRIESGOS"  IS 'Tabla de DIFAUTRIESGOS';
  GRANT UPDATE ON "AXIS"."DIFAUTRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIFAUTRIESGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DIFAUTRIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DIFAUTRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIFAUTRIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DIFAUTRIESGOS" TO "PROGRAMADORESCSI";