--------------------------------------------------------
--  DDL for Table PDS_SUPL_CONFIG
--------------------------------------------------------

  CREATE TABLE "AXIS"."PDS_SUPL_CONFIG" 
   (	"CCONFIG" VARCHAR2(50 BYTE), 
	"CMOTMOV" NUMBER, 
	"SPRODUC" NUMBER, 
	"CMODO" VARCHAR2(50 BYTE), 
	"CTIPFEC" NUMBER(1,0), 
	"TFECREC" VARCHAR2(100 BYTE), 
	"SUPLCOLEC" NUMBER DEFAULT NULL, 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CONFIG"."CCONFIG" IS 'Id. de la configuraci� del suplement';
   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CONFIG"."CMOTMOV" IS 'Motivo del suplemento';
   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CONFIG"."SPRODUC" IS 'Id. del producto';
   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CONFIG"."CMODO" IS 'Modo de ejecuci�n';
   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CONFIG"."CTIPFEC" IS '0 No importa fecha o no hay, 1-debe ser una concreta';
   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CONFIG"."TFECREC" IS 'funci�n que nos devuelve la fecha del recibo para el supl.';
   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CONFIG"."SUPLCOLEC" IS 'Suplemento colec (v.f. 8000918)';
   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CONFIG"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CONFIG"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CONFIG"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CONFIG"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."PDS_SUPL_CONFIG"  IS 'Tabla de configuraci�n de un suplemento ';
  GRANT UPDATE ON "AXIS"."PDS_SUPL_CONFIG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_SUPL_CONFIG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PDS_SUPL_CONFIG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PDS_SUPL_CONFIG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_SUPL_CONFIG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PDS_SUPL_CONFIG" TO "PROGRAMADORESCSI";