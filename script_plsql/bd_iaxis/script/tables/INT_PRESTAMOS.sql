--------------------------------------------------------
--  DDL for Table INT_PRESTAMOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_PRESTAMOS" 
   (	"SINTERF" NUMBER, 
	"NLINEA" NUMBER(6,0), 
	"CPRESTAMO" VARCHAR2(50 BYTE), 
	"NPOLIZA" NUMBER, 
	"FMOVIMI" DATE, 
	"ICAPITAL" NUMBER, 
	"SMAPEAD" NUMBER, 
	"CMAPEAD" VARCHAR2(5 BYTE), 
	"SPROCES_CAR" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CDOCUME" VARCHAR2(50 BYTE), 
	"FNACIMI" VARCHAR2(50 BYTE), 
	"TIPOULK" VARCHAR2(5 BYTE), 
	"CSEXE" VARCHAR2(5 BYTE), 
	"CAGENTE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."SINTERF" IS 'Secuencia para la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."NLINEA" IS 'N�mero linea para la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."CPRESTAMO" IS 'C�digo prestamo del host';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."NPOLIZA" IS 'N�mero p�liza';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."FMOVIMI" IS 'Fecha movimiento';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."ICAPITAL" IS 'Importe del capital';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."SMAPEAD" IS 'Secuencia del mapeador';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."CMAPEAD" IS 'C�digo del mapeador';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."SPROCES_CAR" IS 'secuencia proceso cartera tratado';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."SSEGURO" IS 'Seguro dado de alta';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."CBANCAR" IS 'Cuenta de cargo';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."CDOCUME" IS 'Codigo documento persona';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."FNACIMI" IS 'Fecha nacimiento';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."TIPOULK" IS 'Tipo ulk, pregunta 586';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."CSEXE" IS 'Codigo sexo';
   COMMENT ON COLUMN "AXIS"."INT_PRESTAMOS"."CAGENTE" IS 'C�digo agente';
   COMMENT ON TABLE "AXIS"."INT_PRESTAMOS"  IS 'Interficie de recuparaci�n del capital de prestamos';
  GRANT UPDATE ON "AXIS"."INT_PRESTAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_PRESTAMOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_PRESTAMOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_PRESTAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_PRESTAMOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_PRESTAMOS" TO "PROGRAMADORESCSI";
