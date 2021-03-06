--------------------------------------------------------
--  DDL for Table INTERESREA
--------------------------------------------------------

  CREATE TABLE "AXIS"."INTERESREA" 
   (	"CINTRES" NUMBER(2,0), 
	"FINTRES" DATE, 
	"PINTRES" NUMBER(7,5)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INTERESREA"."CINTRES" IS 'Codi de Interes de reasseguranša';
   COMMENT ON COLUMN "AXIS"."INTERESREA"."FINTRES" IS 'Data de Interes de reasseguranša';
   COMMENT ON COLUMN "AXIS"."INTERESREA"."PINTRES" IS 'Porcentatge de Interes de reasseguranša';
  GRANT UPDATE ON "AXIS"."INTERESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INTERESREA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INTERESREA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INTERESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INTERESREA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INTERESREA" TO "PROGRAMADORESCSI";
