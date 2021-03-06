--------------------------------------------------------
--  DDL for Table AUT_DIGITVERIF_MATRIC
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_DIGITVERIF_MATRIC" 
   (	"CSERIE" VARCHAR2(2 BYTE), 
	"CEQUIVAL" VARCHAR2(3 BYTE), 
	"CEMPRES" NUMBER(2,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUT_DIGITVERIF_MATRIC"."CSERIE" IS 'Cod. serie';
   COMMENT ON COLUMN "AXIS"."AUT_DIGITVERIF_MATRIC"."CEQUIVAL" IS 'Equivalencia';
   COMMENT ON COLUMN "AXIS"."AUT_DIGITVERIF_MATRIC"."CEMPRES" IS 'Cod. empresa';
   COMMENT ON TABLE "AXIS"."AUT_DIGITVERIF_MATRIC"  IS 'Equivalencias para calculo de d�gito verificador en matr�culas';
  GRANT UPDATE ON "AXIS"."AUT_DIGITVERIF_MATRIC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_DIGITVERIF_MATRIC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUT_DIGITVERIF_MATRIC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_DIGITVERIF_MATRIC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_DIGITVERIF_MATRIC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_DIGITVERIF_MATRIC" TO "PROGRAMADORESCSI";
