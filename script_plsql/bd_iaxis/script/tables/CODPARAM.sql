--------------------------------------------------------
--  DDL for Table CODPARAM
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODPARAM" 
   (	"CPARAM" VARCHAR2(20 BYTE), 
	"CUTILI" NUMBER(4,0), 
	"CTIPO" NUMBER(4,0), 
	"CGRPPAR" VARCHAR2(4 BYTE), 
	"NORDEN" NUMBER(4,0), 
	"COBLIGA" NUMBER(1,0) DEFAULT 0, 
	"TDEFECTO" VARCHAR2(50 BYTE), 
	"CVISIBLE" NUMBER(1,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODPARAM"."CPARAM" IS 'C�digo de par�metro';
   COMMENT ON COLUMN "AXIS"."CODPARAM"."CUTILI" IS 'Indicador de d�nde se utilizar� el par�metro (Productos, garant�as, �.) VF. 281';
   COMMENT ON COLUMN "AXIS"."CODPARAM"."CTIPO" IS 'Tipo de valor del par�metro: 1.- Texto, 2.- Num�rico, 3.- Fecha, 4.- Lista de valores. VF. 282';
   COMMENT ON COLUMN "AXIS"."CODPARAM"."CGRPPAR" IS 'C�digo de agrupaci�n de par�metros asociado';
   COMMENT ON COLUMN "AXIS"."CODPARAM"."NORDEN" IS 'N�mero de orden par�metro para presentar en pantalla';
   COMMENT ON COLUMN "AXIS"."CODPARAM"."COBLIGA" IS 'Indica si el par�metro es obligatorio 0.- No 1.- S� (DEFAULT 0)';
   COMMENT ON COLUMN "AXIS"."CODPARAM"."TDEFECTO" IS 'Valor por defecto en el caso de no estar informado.  Si es fecha formato yyyymmdd';
   COMMENT ON COLUMN "AXIS"."CODPARAM"."CVISIBLE" IS 'Visibilidad en los mantenimientos de la aplicaci�n';
  GRANT UPDATE ON "AXIS"."CODPARAM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODPARAM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODPARAM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODPARAM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODPARAM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODPARAM" TO "PROGRAMADORESCSI";
