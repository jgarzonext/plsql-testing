--------------------------------------------------------
--  DDL for Table OLDPER_DESCODRELACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."OLDPER_DESCODRELACION" 
   (	"CRELACI" NUMBER(4,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TREL_1_2" VARCHAR2(40 BYTE), 
	"TREL_2_1" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."OLDPER_DESCODRELACION"."CRELACI" IS 'CODIGO RELACION';
   COMMENT ON COLUMN "AXIS"."OLDPER_DESCODRELACION"."CIDIOMA" IS 'CODIGO IDIOMA';
   COMMENT ON COLUMN "AXIS"."OLDPER_DESCODRELACION"."TREL_1_2" IS 'DESCR. RELACION PERSONA2 > PERSONA1';
   COMMENT ON TABLE "AXIS"."OLDPER_DESCODRELACION"  IS 'DESCRIPCION';
  GRANT UPDATE ON "AXIS"."OLDPER_DESCODRELACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."OLDPER_DESCODRELACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."OLDPER_DESCODRELACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."OLDPER_DESCODRELACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."OLDPER_DESCODRELACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."OLDPER_DESCODRELACION" TO "PROGRAMADORESCSI";
