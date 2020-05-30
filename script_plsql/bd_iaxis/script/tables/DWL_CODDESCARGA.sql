--------------------------------------------------------
--  DDL for Table DWL_CODDESCARGA
--------------------------------------------------------

  CREATE TABLE "AXIS"."DWL_CODDESCARGA" 
   (	"CCODDES" NUMBER, 
	"CCOMPANI" NUMBER, 
	"CTIPPET" NUMBER(2,0), 
	"CTIPFCH" NUMBER(2,0), 
	"THOST" VARCHAR2(200 BYTE), 
	"CMETDES" NUMBER(2,0), 
	"CINTERF" VARCHAR2(4 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DWL_CODDESCARGA"."CCODDES" IS 'C�digo descarga';
   COMMENT ON COLUMN "AXIS"."DWL_CODDESCARGA"."CCOMPANI" IS 'C�digo Compa��a';
   COMMENT ON COLUMN "AXIS"."DWL_CODDESCARGA"."CTIPPET" IS 'Tipo petici�n VF:1048';
   COMMENT ON COLUMN "AXIS"."DWL_CODDESCARGA"."CTIPFCH" IS 'Tipo fichero VF:1049';
   COMMENT ON COLUMN "AXIS"."DWL_CODDESCARGA"."THOST" IS 'Direcci�n del HOST';
   COMMENT ON COLUMN "AXIS"."DWL_CODDESCARGA"."CMETDES" IS 'M�todo descarga VF:1050';
   COMMENT ON COLUMN "AXIS"."DWL_CODDESCARGA"."CINTERF" IS 'C�digo del servicio';
   COMMENT ON TABLE "AXIS"."DWL_CODDESCARGA"  IS 'Tabla que contiene los distintos tipos de descargas';
  GRANT UPDATE ON "AXIS"."DWL_CODDESCARGA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DWL_CODDESCARGA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DWL_CODDESCARGA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DWL_CODDESCARGA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DWL_CODDESCARGA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DWL_CODDESCARGA" TO "PROGRAMADORESCSI";