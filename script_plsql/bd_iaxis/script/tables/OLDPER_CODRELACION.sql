--------------------------------------------------------
--  DDL for Table OLDPER_CODRELACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."OLDPER_CODRELACION" 
   (	"CRELACI" NUMBER(4,0), 
	"CTIPREL" NUMBER(2,0), 
	"NGRADO" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."OLDPER_CODRELACION"."CRELACI" IS 'CODIGO RELACION';
   COMMENT ON COLUMN "AXIS"."OLDPER_CODRELACION"."CTIPREL" IS 'TIPO RELACION. VALOR FIJO xxxxx';
   COMMENT ON COLUMN "AXIS"."OLDPER_CODRELACION"."NGRADO" IS 'GRADO DE LA RELACION';
   COMMENT ON TABLE "AXIS"."OLDPER_CODRELACION"  IS 'DESCRIPCION';
  GRANT UPDATE ON "AXIS"."OLDPER_CODRELACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."OLDPER_CODRELACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."OLDPER_CODRELACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."OLDPER_CODRELACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."OLDPER_CODRELACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."OLDPER_CODRELACION" TO "PROGRAMADORESCSI";