--------------------------------------------------------
--  DDL for Table CODICOMISIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODICOMISIO" 
   (	"CCOMISI" NUMBER, 
	"CTIPO" NUMBER(2,0), 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODICOMISIO"."CCOMISI" IS 'C�digo comisi�n';
   COMMENT ON COLUMN "AXIS"."CODICOMISIO"."CTIPO" IS 'Tipo comisi�n';
   COMMENT ON COLUMN "AXIS"."CODICOMISIO"."FALTA" IS 'Fecha alta comisi�n';
   COMMENT ON COLUMN "AXIS"."CODICOMISIO"."CUSUALTA" IS 'Usuario alta comisi�n';
   COMMENT ON COLUMN "AXIS"."CODICOMISIO"."FMODIFI" IS 'Fecha modificaci�n comisi�n';
   COMMENT ON COLUMN "AXIS"."CODICOMISIO"."CUSUMOD" IS 'Usuario modificaci�n comisi�n';
  GRANT UPDATE ON "AXIS"."CODICOMISIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODICOMISIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODICOMISIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODICOMISIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODICOMISIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODICOMISIO" TO "PROGRAMADORESCSI";