--------------------------------------------------------
--  DDL for Table PRIM_MIN
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRIM_MIN" 
   (	"IDPM" NUMBER(6,0), 
	"CTIPO" NUMBER(6,0), 
	"CMODOCALC" NUMBER(6,0), 
	"CMODOREPARTO" NUMBER(6,0), 
	"CLAVE" NUMBER(6,0), 
	"IMPORTE" NUMBER(14,3), 
	"CGARPRI" NUMBER(6,0), 
	"CMODOACCESO" NUMBER(6,0), 
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

   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."IDPM" IS 'Identificador de Prima M�nima';
   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."CTIPO" IS 'Tipo de aplicaci�n Prima M�nima (VF 1074)';
   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."CMODOCALC" IS 'Modo C�lculo Prima M�nima (VF 1075)';
   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."CMODOREPARTO" IS 'Modo Reparto Prima M�nima (VF 1076)';
   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."CLAVE" IS 'F�mula';
   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."IMPORTE" IS 'Importe';
   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."CGARPRI" IS 'Garant�a de aplicaci�n para el caso de reparto a una garant�a';
   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."CMODOACCESO" IS 'Indica el modo de acceso a las f�rmulas (VF 1077)';
   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."PRIM_MIN"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON TABLE "AXIS"."PRIM_MIN"  IS 'Indica los diferentes tipos de prima m�nima';
  GRANT UPDATE ON "AXIS"."PRIM_MIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRIM_MIN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRIM_MIN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRIM_MIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRIM_MIN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRIM_MIN" TO "PROGRAMADORESCSI";
