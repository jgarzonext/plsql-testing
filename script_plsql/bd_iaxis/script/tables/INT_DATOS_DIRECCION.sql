--------------------------------------------------------
--  DDL for Table INT_DATOS_DIRECCION
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_DATOS_DIRECCION" 
   (	"SINTERF" NUMBER, 
	"CMAPEAD" VARCHAR2(5 BYTE), 
	"SMAPEAD" NUMBER, 
	"CTIPDIR" NUMBER(8,0), 
	"TNOMVIA" VARCHAR2(200 BYTE), 
	"NNUMVIA" NUMBER(8,0), 
	"TDESC" VARCHAR2(100 BYTE), 
	"CPOSTAL" VARCHAR2(10 BYTE), 
	"CPOBLAC" NUMBER, 
	"CPROVIN" NUMBER, 
	"CPAIS" NUMBER(8,0), 
	"TOTDIRECCION" VARCHAR2(500 BYTE), 
	"CSIGLAS" NUMBER(2,0), 
	"TLOCALIDAD" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_DATOS_DIRECCION"."SINTERF" IS 'Secuencia para la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_DIRECCION"."CTIPDIR" IS 'Id del tipo de direcci�n (1 Particular, 2 Env�o, etc)';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_DIRECCION"."TNOMVIA" IS 'Nombre de la v�a.';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_DIRECCION"."NNUMVIA" IS 'N�mero de la v�a.';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_DIRECCION"."TDESC" IS 'Descripci�n complementaria.';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_DIRECCION"."CPOSTAL" IS 'C�digo postal.';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_DIRECCION"."CPOBLAC" IS 'Id del c�digo de poblaci�n.';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_DIRECCION"."CPROVIN" IS 'Id del c�digo de la provincia.';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_DIRECCION"."CPAIS" IS 'Id del pa�s.';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_DIRECCION"."TLOCALIDAD" IS 'Nombre de la localidad';
  GRANT UPDATE ON "AXIS"."INT_DATOS_DIRECCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_DATOS_DIRECCION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_DATOS_DIRECCION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_DATOS_DIRECCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_DATOS_DIRECCION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_DATOS_DIRECCION" TO "PROGRAMADORESCSI";
