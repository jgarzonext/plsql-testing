--------------------------------------------------------
--  DDL for Table BF_BONFRANCAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."BF_BONFRANCAR" 
   (	"SPROCES" NUMBER, 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGRUP" NUMBER(6,0), 
	"CSUBGRUP" NUMBER(6,0), 
	"CNIVEL" NUMBER(6,0), 
	"CVERSION" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"CTIPGRUP" VARCHAR2(1 BYTE), 
	"CVALOR1" NUMBER(2,0), 
	"IMPVALOR1" NUMBER, 
	"CVALOR2" NUMBER(2,0), 
	"IMPVALOR2" NUMBER, 
	"CIMPMIN" NUMBER(2,0), 
	"IMPMIN" NUMBER, 
	"CIMPMAX" NUMBER(2,0), 
	"IMPMAX" NUMBER, 
	"FFINEFE" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."CGRUP" IS 'C�digo de Grupo de Bonus/Franqu�cias';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."CSUBGRUP" IS 'C�digo Subgrupo Bonus/Franqu�cias';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."CNIVEL" IS 'C�digo Nivel dentro del Subgrupo de Bonus/Franqu�cias';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."CVERSION" IS 'C�digo de Versi�n';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."FINIEFE" IS 'Fecha inicio de efecto';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."CTIPGRUP" IS 'Tipo de grupo B=Bonus, F=Franq';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."CVALOR1" IS '1=Porcentaje; 2=Importe Fijo; 3=Descripci�n; 4 = SMMLV';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."IMPVALOR1" IS 'Importe expresado seg�n cvalor';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."IMPVALOR2" IS 'Importe expresado seg�n cvalor';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."CIMPMIN" IS '1=Porcentaje; 2=Importe Fijo; 3=Descripci�n; 4 = SMMLV';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."IMPMIN" IS 'Importe M�nimo (Cantidad fija, s�lo para Franquicias)';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."CIMPMAX" IS '1=Porcentaje; 2=Importe Fijo; 3=Descripci�n; 4 = SMMLV';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."IMPMAX" IS 'Importe M�nimo (Cantidad fija, s�lo para Franquicias)';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."FFINEFE" IS 'Fecha inicio de efecto';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."CUSUALT" IS 'Usuario creaci�n';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."FALTA" IS 'Fecha creaci�n';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."CUSUMOD" IS 'Usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."BF_BONFRANCAR"."FMODIFI" IS 'Fecha modificaci�n';
   COMMENT ON TABLE "AXIS"."BF_BONFRANCAR"  IS 'Niveles de Bonus/Franqu�cias del seguro';
  GRANT UPDATE ON "AXIS"."BF_BONFRANCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BF_BONFRANCAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."BF_BONFRANCAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."BF_BONFRANCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BF_BONFRANCAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."BF_BONFRANCAR" TO "PROGRAMADORESCSI";
