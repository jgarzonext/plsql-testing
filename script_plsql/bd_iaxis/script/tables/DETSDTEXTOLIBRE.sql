--------------------------------------------------------
--  DDL for Table DETSDTEXTOLIBRE
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETSDTEXTOLIBRE" 
   (	"SDDOCUMENT" NUMBER(6,0), 
	"STEXTOLBRE" NUMBER(6,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TTEXTO" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DETSDTEXTOLIBRE"."SDDOCUMENT" IS 'Identificador del report';
   COMMENT ON COLUMN "AXIS"."DETSDTEXTOLIBRE"."STEXTOLBRE" IS 'Identificado del texto libre';
   COMMENT ON COLUMN "AXIS"."DETSDTEXTOLIBRE"."TTEXTO" IS 'texto';
   COMMENT ON TABLE "AXIS"."DETSDTEXTOLIBRE"  IS 'Taula que cont� el text lliure que es pot introduir en un report';
  GRANT UPDATE ON "AXIS"."DETSDTEXTOLIBRE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETSDTEXTOLIBRE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETSDTEXTOLIBRE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETSDTEXTOLIBRE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETSDTEXTOLIBRE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETSDTEXTOLIBRE" TO "PROGRAMADORESCSI";