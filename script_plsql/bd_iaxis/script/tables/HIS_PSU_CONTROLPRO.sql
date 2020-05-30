--------------------------------------------------------
--  DDL for Table HIS_PSU_CONTROLPRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PSU_CONTROLPRO" 
   (	"CCONTROL" NUMBER(6,0), 
	"SPRODUC" NUMBER(6,0), 
	"CTRATAR" NUMBER(1,0), 
	"CGARANT" NUMBER(6,0), 
	"PRODUCCI" VARCHAR2(1 BYTE), 
	"RENOVACI" VARCHAR2(1 BYTE), 
	"SUPLEMEN" VARCHAR2(1 BYTE), 
	"COTIZACI" VARCHAR2(1 BYTE), 
	"AUTMANUAL" VARCHAR2(1 BYTE), 
	"ESTABLOQUEA" VARCHAR2(1 BYTE), 
	"ORDENBLOQUEA" NUMBER(2,0), 
	"AUTORIPREV" VARCHAR2(1 BYTE), 
	"CRETENPOR" NUMBER(2,0), 
	"CFORMULA" NUMBER(8,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"CUSUBAJA" VARCHAR2(20 BYTE), 
	"FBAJA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."CCONTROL" IS 'C�digo del Control';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."SPRODUC" IS 'C�digo del Producto';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."CTRATAR" IS 'Tratamiento (1=Garant�a, 2=Riesgo, 3=P�liza)';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."CGARANT" IS 'Si CTRATAR=1, s�lo se aplica a esta garant�a';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."PRODUCCI" IS 'Disparar en PRODUCCION (S-N)';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."RENOVACI" IS 'Disparar en RENOVACION (S-N)';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."SUPLEMEN" IS 'Disparar en SUPLEMENTOS (S-N)';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."COTIZACI" IS 'Disparar en COTIZACIONES (S-N)';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."AUTMANUAL" IS 'Autorizaci�n Autom�tica o Manual (A - M)';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."ESTABLOQUEA" IS 'Comportamiento Est�ndar o Bloqueante (E - B)';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."ORDENBLOQUEA" IS 'Orden aplicaci�n reglas Exclusivas Bloquentes';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."AUTORIPREV" IS 'Autorizaci�n en base a Autorizaci�n Previa (S - N)';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."CRETENPOR" IS 'Retiene si cambia valor por 1=Menor; 2=Mayor; 3=Diferente';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."CFORMULA" IS 'C�digo de F�rmula a ejecutar';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."CUSUALT" IS 'Usuario Creaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."CUSUMOD" IS 'Usurio Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."FMODIFI" IS 'Fecha de Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."CUSUBAJA" IS 'Usuario que la da de baja';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CONTROLPRO"."FBAJA" IS 'Fecha en la que se da de baja';
   COMMENT ON TABLE "AXIS"."HIS_PSU_CONTROLPRO"  IS 'F�rmula a ejecutar para cada Control';
  GRANT UPDATE ON "AXIS"."HIS_PSU_CONTROLPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_CONTROLPRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PSU_CONTROLPRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PSU_CONTROLPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_CONTROLPRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PSU_CONTROLPRO" TO "PROGRAMADORESCSI";
