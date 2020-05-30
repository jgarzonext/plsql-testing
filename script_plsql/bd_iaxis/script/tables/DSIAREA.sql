--------------------------------------------------------
--  DDL for Table DSIAREA
--------------------------------------------------------

  CREATE TABLE "AXIS"."DSIAREA" 
   (	"CAREA" VARCHAR2(3 BYTE), 
	"TDESCR" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DSIAREA"."CAREA" IS 'C�digo del area / m�dulo';
   COMMENT ON COLUMN "AXIS"."DSIAREA"."TDESCR" IS 'Descripci�n del area / m�dulo';
   COMMENT ON TABLE "AXIS"."DSIAREA"  IS 'Tabla de clientes / areas';
  GRANT UPDATE ON "AXIS"."DSIAREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DSIAREA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DSIAREA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DSIAREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DSIAREA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DSIAREA" TO "PROGRAMADORESCSI";