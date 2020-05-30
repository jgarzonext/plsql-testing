--------------------------------------------------------
--  DDL for Table PDS_BLOQUE
--------------------------------------------------------

  CREATE TABLE "AXIS"."PDS_BLOQUE" 
   (	"CCAMPCON" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PDS_BLOQUE"."CCAMPCON" IS 'NOMBRE DEL BLOQUE';
   COMMENT ON TABLE "AXIS"."PDS_BLOQUE"  IS 'Tabla de  de bloques ';
  GRANT UPDATE ON "AXIS"."PDS_BLOQUE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_BLOQUE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PDS_BLOQUE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PDS_BLOQUE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_BLOQUE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PDS_BLOQUE" TO "PROGRAMADORESCSI";
