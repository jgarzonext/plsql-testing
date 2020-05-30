--------------------------------------------------------
--  DDL for Table CODSUBGRUPREV
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODSUBGRUPREV" 
   (	"CSUBREV" NUMBER(5,0), 
	"CGRPREV" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODSUBGRUPREV"."CSUBREV" IS 'codigo de subgrupo de revisiones';
   COMMENT ON COLUMN "AXIS"."CODSUBGRUPREV"."CGRPREV" IS 'codigo de grupo de revisi�n';
  GRANT UPDATE ON "AXIS"."CODSUBGRUPREV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODSUBGRUPREV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODSUBGRUPREV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODSUBGRUPREV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODSUBGRUPREV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODSUBGRUPREV" TO "PROGRAMADORESCSI";