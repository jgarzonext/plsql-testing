--------------------------------------------------------
--  DDL for Table MEDCOBPRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."MEDCOBPRO" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CTIPCOB" NUMBER(3,0), 
	"DIASNOTI" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MEDCOBPRO"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."MEDCOBPRO"."CMODALI" IS 'C�digo modalidad';
   COMMENT ON COLUMN "AXIS"."MEDCOBPRO"."CTIPSEG" IS 'C�digo tipo de seguro';
   COMMENT ON COLUMN "AXIS"."MEDCOBPRO"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."MEDCOBPRO"."CTIPCOB" IS 'Medida de cobro (det.val 552)';
   COMMENT ON COLUMN "AXIS"."MEDCOBPRO"."DIASNOTI" IS 'Cantidad de dias para notificar con antelacion a la renovacion.';
   COMMENT ON TABLE "AXIS"."MEDCOBPRO"  IS 'Tabla para definir medios de pago por producto';
  GRANT UPDATE ON "AXIS"."MEDCOBPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MEDCOBPRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MEDCOBPRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MEDCOBPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MEDCOBPRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MEDCOBPRO" TO "PROGRAMADORESCSI";
