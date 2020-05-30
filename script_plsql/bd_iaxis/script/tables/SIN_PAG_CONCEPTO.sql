--------------------------------------------------------
--  DDL for Table SIN_PAG_CONCEPTO
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_PAG_CONCEPTO" 
   (	"CCONPAG" NUMBER, 
	"CCONCEP" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_PAG_CONCEPTO"."CCONPAG" IS 'Concepto de pago. VF 803 ';
   COMMENT ON COLUMN "AXIS"."SIN_PAG_CONCEPTO"."CCONCEP" IS 'Agrupacion fiscal VF 1096';
   COMMENT ON TABLE "AXIS"."SIN_PAG_CONCEPTO"  IS 'Relaciona los conceptos de pago con un el area fiscal';
  GRANT UPDATE ON "AXIS"."SIN_PAG_CONCEPTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PAG_CONCEPTO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_PAG_CONCEPTO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_PAG_CONCEPTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PAG_CONCEPTO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_PAG_CONCEPTO" TO "PROGRAMADORESCSI";