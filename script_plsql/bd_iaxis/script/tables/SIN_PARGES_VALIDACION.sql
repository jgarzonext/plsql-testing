--------------------------------------------------------
--  DDL for Table SIN_PARGES_VALIDACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_PARGES_VALIDACION" 
   (	"CTIPGES" NUMBER, 
	"NORDGES" NUMBER, 
	"NMAXIMO" NUMBER, 
	"CFECHA" NUMBER(1,0), 
	"CGESPRV" NUMBER, 
	"CMODIFI" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_PARGES_VALIDACION"."CTIPGES" IS 'Tipo de gestion. VF 722';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_VALIDACION"."NORDGES" IS 'Numero de orden';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_VALIDACION"."NMAXIMO" IS 'Numero maximo de gestiones en una tramitacion';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_VALIDACION"."CFECHA" IS 'Indica si es obligatorio introducir fecha de gestion. 0-No / 1-Si.';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_VALIDACION"."CGESPRV" IS 'Tipo de gestion que debe haberse creado previamente antes de crear esta gestion';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_VALIDACION"."CMODIFI" IS 'Modificable. 1:Si 0:No';
   COMMENT ON TABLE "AXIS"."SIN_PARGES_VALIDACION"  IS 'Validaciones para gestiones';
  GRANT UPDATE ON "AXIS"."SIN_PARGES_VALIDACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PARGES_VALIDACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_PARGES_VALIDACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_PARGES_VALIDACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PARGES_VALIDACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_PARGES_VALIDACION" TO "PROGRAMADORESCSI";
