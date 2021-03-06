--------------------------------------------------------
--  DDL for Table PARMOTMOV
--------------------------------------------------------

  CREATE TABLE "AXIS"."PARMOTMOV" 
   (	"CMOTMOV" NUMBER, 
	"CPARMOT" VARCHAR2(50 BYTE), 
	"CVALPAR" NUMBER, 
	"SPRODUC" NUMBER, 
	"TVALPAR" VARCHAR2(50 BYTE), 
	"FVALPAR" DATE, 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PARMOTMOV"."CMOTMOV" IS 'codi de motivo de movimiento';
   COMMENT ON COLUMN "AXIS"."PARMOTMOV"."CPARMOT" IS 'codigo de parametro por motivo';
   COMMENT ON COLUMN "AXIS"."PARMOTMOV"."CVALPAR" IS 'valor del parametro';
   COMMENT ON COLUMN "AXIS"."PARMOTMOV"."SPRODUC" IS 'Producto, opcional si es generico de la instlación el producto es nulo';
   COMMENT ON COLUMN "AXIS"."PARMOTMOV"."TVALPAR" IS 'Valor Texto del parámetro';
   COMMENT ON COLUMN "AXIS"."PARMOTMOV"."FVALPAR" IS 'Valor Fecha del parámetro';
   COMMENT ON COLUMN "AXIS"."PARMOTMOV"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."PARMOTMOV"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."PARMOTMOV"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."PARMOTMOV"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."PARMOTMOV"  IS 'Tabla de configuración de los motivos  de movimiento. CMOTMOV';
  GRANT UPDATE ON "AXIS"."PARMOTMOV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARMOTMOV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PARMOTMOV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PARMOTMOV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARMOTMOV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PARMOTMOV" TO "PROGRAMADORESCSI";
