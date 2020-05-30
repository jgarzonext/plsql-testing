--------------------------------------------------------
--  DDL for Table TMP_CLIENTS_PATRIMONI
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_CLIENTS_PATRIMONI" 
   (	"CPERHOS" NUMBER(8,0), 
	"DNIFHOS" VARCHAR2(13 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TMP_CLIENTS_PATRIMONI"."CPERHOS" IS 'Codi de persona HOST';
   COMMENT ON COLUMN "AXIS"."TMP_CLIENTS_PATRIMONI"."DNIFHOS" IS 'Nif del HOST';
   COMMENT ON TABLE "AXIS"."TMP_CLIENTS_PATRIMONI"  IS 'Taula de clients interficie amb patrimonis';
  GRANT UPDATE ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "PROGRAMADORESCSI";