--------------------------------------------------------
--  DDL for Table HISINT_DATOS_PERSONA
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISINT_DATOS_PERSONA" 
   (	"SINTERF" NUMBER, 
	"CMAPEAD" VARCHAR2(5 BYTE), 
	"SMAPEAD" NUMBER, 
	"SIP" VARCHAR2(25 BYTE), 
	"CTIPDOC" NUMBER(8,0), 
	"TDOCIDENTIF" VARCHAR2(25 BYTE), 
	"TNOMBRE" VARCHAR2(100 BYTE), 
	"TAPELLI1" VARCHAR2(100 BYTE), 
	"TAPELLI2" VARCHAR2(100 BYTE), 
	"CSEXO" NUMBER(8,0), 
	"FNACIMI" VARCHAR2(10 BYTE), 
	"CTIPPER" NUMBER(8,0), 
	"CESTCIV" NUMBER(8,0), 
	"CPROFES" NUMBER(8,0), 
	"CNAE" VARCHAR2(5 BYTE), 
	"CPAIS" NUMBER(8,0), 
	"CNACIONI" NUMBER(8,0), 
	"FJUBILA" VARCHAR2(10 BYTE), 
	"FDEFUNC" VARCHAR2(10 BYTE), 
	"CMUTUALISTA" NUMBER(8,0), 
	"TOTPERSONA" VARCHAR2(500 BYTE), 
	"CAGENTE" NUMBER, 
	"CIDIOMA" NUMBER(2,0), 
	"FTRASPASO" DATE, 
	"EMPLEADO" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."SINTERF" IS 'Secuencia para la interfaz';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."SIP" IS 'Identificador propio en HOST de la persona.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."CTIPDOC" IS 'Id del tipo documento (p.ej: 1 NIF, 2 Pasaporte, etc).';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."TDOCIDENTIF" IS 'N�mero de documento identificativos.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."TNOMBRE" IS 'Nombre de la persona.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."TAPELLI1" IS 'Primer apellido de la persona.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."TAPELLI2" IS 'Segundo apellido de la persona.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."CSEXO" IS 'Sexo de la persona.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."FNACIMI" IS 'Fecha de nacimiento de la persona.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."CTIPPER" IS 'Id del tipo de persona (F�sica, Jur�dica, etc).';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."CESTCIV" IS 'Id del estado civil (Casado, Soltero, etc).';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."CPROFES" IS 'Id de la profesi�n de la persona.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."CNAE" IS 'C�digo CNAE de la profesi�n.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."CPAIS" IS 'Id del pa�s de residencia de la persona.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."CNACIONI" IS 'Id del pa�s de nacionalidad de la persona.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."FJUBILA" IS 'Fecha de jubilaci�n de la persona.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."FDEFUNC" IS 'Fecha de defunci�n de la persona.';
   COMMENT ON COLUMN "AXIS"."HISINT_DATOS_PERSONA"."CMUTUALISTA" IS 'Indica si la persona es mutualista o no (Si/No ? 1/0).';
  GRANT UPDATE ON "AXIS"."HISINT_DATOS_PERSONA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISINT_DATOS_PERSONA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISINT_DATOS_PERSONA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISINT_DATOS_PERSONA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISINT_DATOS_PERSONA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISINT_DATOS_PERSONA" TO "PROGRAMADORESCSI";
