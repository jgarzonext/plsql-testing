--------------------------------------------------------
--  DDL for Table INT_FICHERO_TABLA
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_FICHERO_TABLA" 
   (	"CTABLA" NUMBER(4,0), 
	"TFROM" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_FICHERO_TABLA"."CTABLA" IS 'C�digo de la tabla o cl�usula FROM';
   COMMENT ON COLUMN "AXIS"."INT_FICHERO_TABLA"."TFROM" IS 'Nombre de la tabla o cl�usula FROM';
   COMMENT ON TABLE "AXIS"."INT_FICHERO_TABLA"  IS 'Nombre de la tabla o estructura del FROM a aplicar para gestionar ficheros';
  GRANT UPDATE ON "AXIS"."INT_FICHERO_TABLA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FICHERO_TABLA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_FICHERO_TABLA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_FICHERO_TABLA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FICHERO_TABLA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_FICHERO_TABLA" TO "PROGRAMADORESCSI";
