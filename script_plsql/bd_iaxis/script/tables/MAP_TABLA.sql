--------------------------------------------------------
--  DDL for Table MAP_TABLA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MAP_TABLA" 
   (	"CTABLA" NUMBER(8,0), 
	"TFROM" VARCHAR2(4000 BYTE), 
	"TDESCRIP" VARCHAR2(256 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MAP_TABLA"."CTABLA" IS 'C�digo de la tabla o cl�usula FROM';
   COMMENT ON COLUMN "AXIS"."MAP_TABLA"."TFROM" IS 'Nombre de la tabla o cl�usula FROM';
   COMMENT ON COLUMN "AXIS"."MAP_TABLA"."TDESCRIP" IS 'Descripci�n de la clausula FROM';
   COMMENT ON TABLE "AXIS"."MAP_TABLA"  IS 'Nombre de la tabla o estructura del FROM a aplicar para gestionar ficheros';
  GRANT UPDATE ON "AXIS"."MAP_TABLA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MAP_TABLA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MAP_TABLA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MAP_TABLA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MAP_TABLA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MAP_TABLA" TO "PROGRAMADORESCSI";
