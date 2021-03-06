--------------------------------------------------------
--  DDL for Table PARLIBRETATEXT
--------------------------------------------------------

  CREATE TABLE "AXIS"."PARLIBRETATEXT" 
   (	"TIPOLINEA" VARCHAR2(15 BYTE), 
	"SPRODUC" NUMBER(6,0), 
	 CONSTRAINT "PARLIBRETADET_PK" PRIMARY KEY ("TIPOLINEA", "SPRODUC") ENABLE
   ) ORGANIZATION INDEX NOCOMPRESS PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" 
 PCTTHRESHOLD 50;

   COMMENT ON COLUMN "AXIS"."PARLIBRETATEXT"."TIPOLINEA" IS 'Tipo de linea : CAB, DAT, PAD, POR';
   COMMENT ON COLUMN "AXIS"."PARLIBRETATEXT"."SPRODUC" IS 'Identificador del producto';
  GRANT UPDATE ON "AXIS"."PARLIBRETATEXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARLIBRETATEXT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PARLIBRETATEXT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PARLIBRETATEXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARLIBRETATEXT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PARLIBRETATEXT" TO "PROGRAMADORESCSI";
