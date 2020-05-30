--------------------------------------------------------
--  DDL for Table MATCHING
--------------------------------------------------------

  CREATE TABLE "AXIS"."MATCHING" 
   (	"CMATCHING" NUMBER(2,0), 
	"INTERES" NUMBER(6,2), 
	"FECHA" DATE, 
	"FINICIAL" DATE, 
	"FFINAL" DATE, 
	 CONSTRAINT "MATCHING_PK" PRIMARY KEY ("CMATCHING", "FINICIAL") ENABLE
   ) ORGANIZATION INDEX NOCOMPRESS PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" 
 PCTTHRESHOLD 50;

   COMMENT ON COLUMN "AXIS"."MATCHING"."CMATCHING" IS 'Codi de MATCHING';
   COMMENT ON COLUMN "AXIS"."MATCHING"."INTERES" IS 'Interes a partir del qual incloure a les estad�stiques';
   COMMENT ON COLUMN "AXIS"."MATCHING"."FECHA" IS 'Data a partir de la qual incloure a les estad�stiques';
   COMMENT ON COLUMN "AXIS"."MATCHING"."FINICIAL" IS 'Data d''inici vig�ncia';
   COMMENT ON COLUMN "AXIS"."MATCHING"."FFINAL" IS 'Data final de vig�ncia';
  GRANT UPDATE ON "AXIS"."MATCHING" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MATCHING" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MATCHING" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MATCHING" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MATCHING" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MATCHING" TO "PROGRAMADORESCSI";
