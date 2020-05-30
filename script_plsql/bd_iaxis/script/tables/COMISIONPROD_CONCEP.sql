--------------------------------------------------------
--  DDL for Table COMISIONPROD_CONCEP
--------------------------------------------------------

  CREATE TABLE "AXIS"."COMISIONPROD_CONCEP" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CCOMISI" NUMBER, 
	"CMODCOM" NUMBER(1,0), 
	"FINIVIG" DATE, 
	"NINIALT" NUMBER, 
	"CCONCEPTO" NUMBER, 
	"PCOMISI" NUMBER(5,2), 
	"SPRODUC" NUMBER(6,0), 
	"NFINALT" NUMBER, 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."CRAMO" IS 'C�digo del ramo';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."CMODALI" IS 'C�digo de la modalidad';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."CTIPSEG" IS 'C�digo del tipo de seguro';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."CCOMISI" IS 'C�digo comisi�n';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."CMODCOM" IS 'C�digo de la modalidad de comisi�n';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."FINIVIG" IS 'Fecha inicio vigencia comisi�n';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."NINIALT" IS 'Inicio de la altura';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."CCONCEPTO" IS 'C�digo concepto';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."PCOMISI" IS 'Porcentaje de comisi�n';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."SPRODUC" IS 'Codi producte';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."NFINALT" IS 'Fin de la altura';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."FALTA" IS 'Fecha alta comisi�n';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."CUSUALTA" IS 'Codigo usuario alta comisi�n';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."FMODIFI" IS 'Fecha modificaci�n comision';
   COMMENT ON COLUMN "AXIS"."COMISIONPROD_CONCEP"."CUSUMOD" IS 'C�digo usuario modificaci�n comisi�n';
   COMMENT ON TABLE "AXIS"."COMISIONPROD_CONCEP"  IS 'tabla que contiene los conceptos desglosados de la comisi�n a nivel de producto';
  GRANT UPDATE ON "AXIS"."COMISIONPROD_CONCEP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMISIONPROD_CONCEP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COMISIONPROD_CONCEP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."COMISIONPROD_CONCEP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMISIONPROD_CONCEP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COMISIONPROD_CONCEP" TO "PROGRAMADORESCSI";
