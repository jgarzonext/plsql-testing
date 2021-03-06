--------------------------------------------------------
--  DDL for Table HIS_COMISIONGAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_COMISIONGAR" 
   (	"CRAMO" NUMBER(22,0), 
	"CMODALI" NUMBER(22,0), 
	"CTIPSEG" NUMBER(22,0), 
	"CCOLECT" NUMBER(22,0), 
	"CACTIVI" NUMBER(22,0), 
	"CGARANT" NUMBER(22,0), 
	"CCOMISI" NUMBER, 
	"CMODCOM" NUMBER(22,0), 
	"PCOMISI" NUMBER(22,0), 
	"SPRODUC" NUMBER(22,0), 
	"FINIVIG" DATE, 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"NINIALT" NUMBER(22,0), 
	"NFINALT" NUMBER(22,0), 
	"CCRITERIO" NUMBER(22,0), 
	"NDESDE" NUMBER(22,0), 
	"NHASTA" NUMBER(22,0), 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."SPRODUC" IS 'Codi producte';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."FINIVIG" IS 'Fecha inicio vigencia comisi�n';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."FALTA" IS 'Fecha alta comisi�n';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."CUSUALTA" IS 'Codigo usuario alta comisi�n';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."FMODIFI" IS 'Fecha modificaci�n comision';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."CUSUMOD" IS 'C�digo usuario modificaci�n comisi�n';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."NINIALT" IS 'Inicio de la altura';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."NFINALT" IS 'Fin de la altura';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."CCRITERIO" IS 'Criterio de c�lculo de comisiones';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."NDESDE" IS 'Rango de inicio seg�n el campo criterio';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."NHASTA" IS 'Rango final seg�n el campo criterio';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_COMISIONGAR"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_COMISIONGAR"  IS 'Hist�rico de la tabla COMISIONGAR';
  GRANT UPDATE ON "AXIS"."HIS_COMISIONGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_COMISIONGAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_COMISIONGAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_COMISIONGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_COMISIONGAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_COMISIONGAR" TO "PROGRAMADORESCSI";
