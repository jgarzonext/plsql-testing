--------------------------------------------------------
--  DDL for Table PLANHISTORICO
--------------------------------------------------------

  CREATE TABLE "AXIS"."PLANHISTORICO" 
   (	"CCODPLA" NUMBER(6,0), 
	"FHISTORICO" DATE, 
	"CMOVIMI" NUMBER(2,0), 
	"NOPERA" NUMBER(6,0), 
	"NPARTI" NUMBER(15,6), 
	"IMOVIMI" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PLANHISTORICO"."CCODPLA" IS 'C�digo del plan';
   COMMENT ON COLUMN "AXIS"."PLANHISTORICO"."FHISTORICO" IS 'Fecha de los movimientos';
   COMMENT ON COLUMN "AXIS"."PLANHISTORICO"."CMOVIMI" IS 'Tipo de movimiento Valor fijo 83';
   COMMENT ON COLUMN "AXIS"."PLANHISTORICO"."NOPERA" IS 'total operaciones del movimiento';
   COMMENT ON COLUMN "AXIS"."PLANHISTORICO"."NPARTI" IS 'N�mero de participaciones';
  GRANT UPDATE ON "AXIS"."PLANHISTORICO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PLANHISTORICO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PLANHISTORICO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PLANHISTORICO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PLANHISTORICO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PLANHISTORICO" TO "PROGRAMADORESCSI";
