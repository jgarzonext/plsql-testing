--------------------------------------------------------
--  DDL for Table PROD_PRIM_MIN
--------------------------------------------------------

  CREATE TABLE "AXIS"."PROD_PRIM_MIN" 
   (	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(6,0), 
	"CNIVEL" NUMBER(6,0), 
	"CPOSICION" NUMBER(6,0), 
	"FFECINI" DATE, 
	"FFECFIN" DATE, 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PROD_PRIM_MIN"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."PROD_PRIM_MIN"."CACTIVI" IS 'Actividad';
   COMMENT ON COLUMN "AXIS"."PROD_PRIM_MIN"."CNIVEL" IS 'Nivel Aplicaci�n Prima M�nima (VF 1072)';
   COMMENT ON COLUMN "AXIS"."PROD_PRIM_MIN"."CPOSICION" IS 'Posici�n Aplicaci�n Prima M�nima (VF 1073)';
   COMMENT ON COLUMN "AXIS"."PROD_PRIM_MIN"."FFECINI" IS 'Fecha Inicio';
   COMMENT ON COLUMN "AXIS"."PROD_PRIM_MIN"."FFECFIN" IS 'Fecha Fin';
   COMMENT ON COLUMN "AXIS"."PROD_PRIM_MIN"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."PROD_PRIM_MIN"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."PROD_PRIM_MIN"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."PROD_PRIM_MIN"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON TABLE "AXIS"."PROD_PRIM_MIN"  IS 'Indica para un producto - actividad un hist�rico (fechani / fechafin) de aplicaci�n de prima m�nima (por nivel y posici�n).';
  GRANT UPDATE ON "AXIS"."PROD_PRIM_MIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROD_PRIM_MIN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PROD_PRIM_MIN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PROD_PRIM_MIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROD_PRIM_MIN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PROD_PRIM_MIN" TO "PROGRAMADORESCSI";
