--------------------------------------------------------
--  DDL for Table SIN_IMP_DESIMPUESTO
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_IMP_DESIMPUESTO" 
   (	"CCODIMP" NUMBER, 
	"CIDIOMA" NUMBER, 
	"TDESIMP" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_IMP_DESIMPUESTO"."CCODIMP" IS 'Tipo de servicio en SIN_DETTARIFA';
   COMMENT ON COLUMN "AXIS"."SIN_IMP_DESIMPUESTO"."CIDIOMA" IS 'Codigo de idoma';
   COMMENT ON COLUMN "AXIS"."SIN_IMP_DESIMPUESTO"."TDESIMP" IS 'Descripcion del impuesto';
   COMMENT ON TABLE "AXIS"."SIN_IMP_DESIMPUESTO"  IS 'Definicion de impuestos para siniestros';
  GRANT UPDATE ON "AXIS"."SIN_IMP_DESIMPUESTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_IMP_DESIMPUESTO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_IMP_DESIMPUESTO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_IMP_DESIMPUESTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_IMP_DESIMPUESTO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_IMP_DESIMPUESTO" TO "PROGRAMADORESCSI";