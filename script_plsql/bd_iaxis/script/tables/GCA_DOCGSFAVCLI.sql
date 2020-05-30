--------------------------------------------------------
--  DDL for Table GCA_DOCGSFAVCLI
--------------------------------------------------------

  CREATE TABLE "AXIS"."GCA_DOCGSFAVCLI" 
   (	"SGSFAVCLI" NUMBER, 
	"IDOBS" NUMBER, 
	"IDDOCGEDOX" NUMBER, 
	"CUSUALT" VARCHAR2(150 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(150 BYTE), 
	"FMODIFI" DATE, 
	"FCADUCI" DATE, 
	"TOBSERV" VARCHAR2(1000 BYTE), 
	"CTIPO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."GCA_DOCGSFAVCLI"."SGSFAVCLI" IS 'ID DE GESTI�N SALDO A FAVOR DEL CLIENTE';
   COMMENT ON COLUMN "AXIS"."GCA_DOCGSFAVCLI"."IDOBS" IS 'IDENTIFICADOR OBSERVACIONES';
   COMMENT ON COLUMN "AXIS"."GCA_DOCGSFAVCLI"."IDDOCGEDOX" IS 'ID DE DOCUMENTO GEDOX';
   COMMENT ON COLUMN "AXIS"."GCA_DOCGSFAVCLI"."CUSUALT" IS 'C�DIGO USUARIO DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_DOCGSFAVCLI"."FALTA" IS 'FECHA DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_DOCGSFAVCLI"."CUSUMOD" IS 'C�DIGO USUARIO MODIFICACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_DOCGSFAVCLI"."FMODIFI" IS 'FECHA MODIFICACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_DOCGSFAVCLI"."FCADUCI" IS 'FECHA CADUCI';
  GRANT UPDATE ON "AXIS"."GCA_DOCGSFAVCLI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_DOCGSFAVCLI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GCA_DOCGSFAVCLI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GCA_DOCGSFAVCLI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_DOCGSFAVCLI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GCA_DOCGSFAVCLI" TO "PROGRAMADORESCSI";