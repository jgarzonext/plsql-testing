--------------------------------------------------------
--  DDL for Table TF_DOCUADMIN
--------------------------------------------------------

  CREATE TABLE "AXIS"."TF_DOCUADMIN" 
   (	"TCLAVE" VARCHAR2(50 BYTE), 
	"TVALOR" VARCHAR2(150 BYTE), 
	"CUSUARIO" VARCHAR2(10 BYTE), 
	"FMODIF" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TF_DOCUADMIN"."TCLAVE" IS 'Clave alias del documento';
   COMMENT ON COLUMN "AXIS"."TF_DOCUADMIN"."TVALOR" IS 'URL del documento';
   COMMENT ON COLUMN "AXIS"."TF_DOCUADMIN"."CUSUARIO" IS 'Usuario que definio por ultima vez el alias';
   COMMENT ON COLUMN "AXIS"."TF_DOCUADMIN"."FMODIF" IS 'Fecha de creacion/modificacion de documento-alias';
   COMMENT ON TABLE "AXIS"."TF_DOCUADMIN"  IS 'Alias para documentos estaticos, para terminal financiero';
  GRANT UPDATE ON "AXIS"."TF_DOCUADMIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TF_DOCUADMIN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TF_DOCUADMIN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TF_DOCUADMIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TF_DOCUADMIN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TF_DOCUADMIN" TO "PROGRAMADORESCSI";
