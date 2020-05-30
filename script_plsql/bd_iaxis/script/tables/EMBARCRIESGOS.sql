--------------------------------------------------------
--  DDL for Table EMBARCRIESGOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."EMBARCRIESGOS" 
   (	"NRIESGO" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"TMATRIC" VARCHAR2(25 BYTE), 
	"TNOMBRE" VARCHAR2(40 BYTE), 
	"TPUERTO" VARCHAR2(50 BYTE), 
	"CPAIS" NUMBER(4,0), 
	"TMARCA" VARCHAR2(50 BYTE), 
	"IVALOR" NUMBER(15,4), 
	"IREVAL" NUMBER(15,4), 
	"SBONUSH" NUMBER(6,0), 
	"CZBONUS" NUMBER(3,0), 
	"CZNAVEGA" NUMBER(4,0), 
	"NNIFPAT" VARCHAR2(14 BYTE), 
	"NSUPVEL" NUMBER(6,0), 
	"NPOTMO1" NUMBER(6,0), 
	"NPOTMO2" NUMBER(6,0), 
	"CUBICAC" NUMBER(6,0), 
	"FMATRIC" DATE, 
	"CPROPUL" NUMBER(3,0), 
	"CPOSTAL" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."NRIESGO" IS 'Numero de riesgo';
   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."SSEGURO" IS 'Secuencial de seguro';
   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."NMOVIMI" IS 'N�mero de Movimiento';
   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."TMATRIC" IS 'Matricula del barco';
   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."TNOMBRE" IS 'Nombre del barco';
   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."TPUERTO" IS 'Puerto del barco';
   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."CPAIS" IS 'Pa�s del barco';
   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."TMARCA" IS 'Marca del barco';
   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."IVALOR" IS 'Valor del barco';
   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."IREVAL" IS 'Valor revalorizado del barco';
   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."SBONUSH" IS 'CODIGO HIST�RICO BONUS';
   COMMENT ON COLUMN "AXIS"."EMBARCRIESGOS"."CZBONUS" IS 'Numero de Zona de Bonus/Malus';
   COMMENT ON TABLE "AXIS"."EMBARCRIESGOS"  IS 'Tabla de embarcriesgos';
  GRANT UPDATE ON "AXIS"."EMBARCRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EMBARCRIESGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EMBARCRIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EMBARCRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EMBARCRIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EMBARCRIESGOS" TO "PROGRAMADORESCSI";
