--------------------------------------------------------
--  DDL for Table MIG_TABVALCES
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_TABVALCES" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"CCESTA" NUMBER(3,0), 
	"FVALOR" DATE, 
	"NPARACT" NUMBER(15,6), 
	"IUNIACT" NUMBER(15,6), 
	"IVALACT" NUMBER, 
	"NPARASI" NUMBER(15,6), 
	"IGASTOS" NUMBER(15,6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_TABVALCES"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_TABVALCES"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_TABVALCES"."MIG_PK" IS 'Clave �nica de MIG_SEGUROS_FINV';
   COMMENT ON COLUMN "AXIS"."MIG_TABVALCES"."MIG_FK" IS 'Clave externa para la p�liza (MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_TABVALCES"."CCESTA" IS 'Identificador de fondo de inversi�n';
   COMMENT ON COLUMN "AXIS"."MIG_TABVALCES"."FVALOR" IS 'Fecha de valoraci�n de fondo.';
   COMMENT ON COLUMN "AXIS"."MIG_TABVALCES"."NPARACT" IS 'Numero de participaciones de la operaci�n a fecha valor.';
   COMMENT ON COLUMN "AXIS"."MIG_TABVALCES"."IUNIACT" IS 'Valor liquidativo o precio de la participaci�n.';
   COMMENT ON COLUMN "AXIS"."MIG_TABVALCES"."IVALACT" IS 'Valor en � de la operaci�n a fecha valor.';
   COMMENT ON COLUMN "AXIS"."MIG_TABVALCES"."NPARASI" IS 'Participaciones asignadas al fondo hasta la fecha valor.';
   COMMENT ON COLUMN "AXIS"."MIG_TABVALCES"."IGASTOS" IS 'Importe de gastos asociados a la operaci�n.';
   COMMENT ON TABLE "AXIS"."MIG_TABVALCES"  IS 'Tabla de hist�rico de valores de participaci�n FINV';
  GRANT UPDATE ON "AXIS"."MIG_TABVALCES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_TABVALCES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_TABVALCES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_TABVALCES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_TABVALCES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_TABVALCES" TO "PROGRAMADORESCSI";
