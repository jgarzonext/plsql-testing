--------------------------------------------------------
--  DDL for Table PER_IDENTIFICA
--------------------------------------------------------

  CREATE TABLE "AXIS"."PER_IDENTIFICA" 
   (	"SPERSON" NUMBER(10,0), 
	"CTIPIDE" NUMBER(3,0), 
	"NNUMIDE" VARCHAR2(50 BYTE), 
	"SWIDEPRI" NUMBER(1,0), 
	"FEMISIO" DATE, 
	"FCADUCA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PER_IDENTIFICA"."SPERSON" IS 'Identificador de Persona';
   COMMENT ON COLUMN "AXIS"."PER_IDENTIFICA"."CTIPIDE" IS 'C�digo del tipo de identificador (v.f. 672)';
   COMMENT ON COLUMN "AXIS"."PER_IDENTIFICA"."NNUMIDE" IS 'N�mero de Identificador';
   COMMENT ON COLUMN "AXIS"."PER_IDENTIFICA"."SWIDEPRI" IS 'Indica si el identificador es el principal';
   COMMENT ON COLUMN "AXIS"."PER_IDENTIFICA"."FEMISIO" IS 'Fecha de emisi�n';
   COMMENT ON COLUMN "AXIS"."PER_IDENTIFICA"."FCADUCA" IS 'Fecha de caducidad';
   COMMENT ON TABLE "AXIS"."PER_IDENTIFICA"  IS 'Tabla que guarda los diferentes identificadores que puede tener una persona';
  GRANT UPDATE ON "AXIS"."PER_IDENTIFICA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_IDENTIFICA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PER_IDENTIFICA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PER_IDENTIFICA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_IDENTIFICA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PER_IDENTIFICA" TO "PROGRAMADORESCSI";
