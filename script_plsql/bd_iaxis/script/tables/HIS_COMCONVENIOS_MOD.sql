--------------------------------------------------------
--  DDL for Table HIS_COMCONVENIOS_MOD
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_COMCONVENIOS_MOD" 
   (	"CEMPRES" NUMBER(5,0), 
	"SCOMCONV" NUMBER(8,0), 
	"FINIVIG" DATE, 
	"CMODCOM" NUMBER(1,0), 
	"PCOMISI" NUMBER(5,2), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE), 
	"FHIST" DATE, 
	"CUSUHIST" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_COMCONVENIOS_MOD"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."HIS_COMCONVENIOS_MOD"."SCOMCONV" IS 'C�digo sobrecomisi�n convenio';
   COMMENT ON COLUMN "AXIS"."HIS_COMCONVENIOS_MOD"."FINIVIG" IS 'Fecha inicio vigencia convenio';
   COMMENT ON COLUMN "AXIS"."HIS_COMCONVENIOS_MOD"."CMODCOM" IS 'Modalidad de comisi�n';
   COMMENT ON COLUMN "AXIS"."HIS_COMCONVENIOS_MOD"."PCOMISI" IS 'Porcentaje de comisi�n';
   COMMENT ON COLUMN "AXIS"."HIS_COMCONVENIOS_MOD"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."HIS_COMCONVENIOS_MOD"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."HIS_COMCONVENIOS_MOD"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_COMCONVENIOS_MOD"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_COMCONVENIOS_MOD"."FHIST" IS 'Fecha de paso a hist�rico';
   COMMENT ON COLUMN "AXIS"."HIS_COMCONVENIOS_MOD"."CUSUHIST" IS 'Usuario de paso a hist�rico';
   COMMENT ON TABLE "AXIS"."HIS_COMCONVENIOS_MOD"  IS 'Sobrecomisiones convenio - modalidades';
  GRANT UPDATE ON "AXIS"."HIS_COMCONVENIOS_MOD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_COMCONVENIOS_MOD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_COMCONVENIOS_MOD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_COMCONVENIOS_MOD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_COMCONVENIOS_MOD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_COMCONVENIOS_MOD" TO "PROGRAMADORESCSI";
