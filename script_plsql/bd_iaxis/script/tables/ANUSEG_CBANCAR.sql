--------------------------------------------------------
--  DDL for Table ANUSEG_CBANCAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUSEG_CBANCAR" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"FINIEFE" DATE, 
	"FFINEFE" DATE, 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CBANCOB" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUSEG_CBANCAR"."SSEGURO" IS 'Id del seguro';
   COMMENT ON COLUMN "AXIS"."ANUSEG_CBANCAR"."NMOVIMI" IS 'Id. del movimiento de alta de la cuenta bancaria';
   COMMENT ON COLUMN "AXIS"."ANUSEG_CBANCAR"."FINIEFE" IS 'Fecha de inicio de efecto de la cuenta';
   COMMENT ON COLUMN "AXIS"."ANUSEG_CBANCAR"."FFINEFE" IS 'Fecha fin del uso de la cuenta bancaria';
   COMMENT ON COLUMN "AXIS"."ANUSEG_CBANCAR"."CBANCAR" IS 'Cuenta de cargo';
   COMMENT ON TABLE "AXIS"."ANUSEG_CBANCAR"  IS 'Informaci�n cuentas bancarias seguro, guardada antes de anular movimiento';
  GRANT UPDATE ON "AXIS"."ANUSEG_CBANCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUSEG_CBANCAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUSEG_CBANCAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUSEG_CBANCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUSEG_CBANCAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUSEG_CBANCAR" TO "PROGRAMADORESCSI";