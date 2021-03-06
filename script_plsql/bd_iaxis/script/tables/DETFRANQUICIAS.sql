--------------------------------------------------------
--  DDL for Table DETFRANQUICIAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETFRANQUICIAS" 
   (	"CFRANQ" NUMBER(6,0), 
	"NFRAVER" NUMBER(6,0), 
	"NGRPFRA" NUMBER(6,0), 
	"NGRPGARA" NUMBER(6,0), 
	"NORDEN" NUMBER(6,0), 
	"CTIPFRA" VARCHAR2(1 BYTE), 
	"IFRANQ" NUMBER(15,4), 
	"PFRANQ" NUMBER(7,4), 
	"NDFRANQ" NUMBER(4,0), 
	"PDTOFRA" NUMBER(7,4), 
	"NRGMIN" NUMBER(15,4), 
	"NRGMAX" NUMBER(15,4)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DETFRANQUICIAS"."CFRANQ" IS 'Codigo de FRANQUICIAS';
   COMMENT ON COLUMN "AXIS"."DETFRANQUICIAS"."NFRAVER" IS 'Numero de version de FRANQUICIAS';
   COMMENT ON COLUMN "AXIS"."DETFRANQUICIAS"."NGRPFRA" IS 'Codigo Grupo de Franquicias';
   COMMENT ON COLUMN "AXIS"."DETFRANQUICIAS"."NGRPGARA" IS 'Grupo de garant�as';
   COMMENT ON COLUMN "AXIS"."DETFRANQUICIAS"."CTIPFRA" IS 'Codigo Tipo Franquicia: Fijo, importe o dias';
   COMMENT ON COLUMN "AXIS"."DETFRANQUICIAS"."IFRANQ" IS 'Importe franquicia';
   COMMENT ON COLUMN "AXIS"."DETFRANQUICIAS"."PFRANQ" IS 'Porcentaje franquicia';
   COMMENT ON COLUMN "AXIS"."DETFRANQUICIAS"."NDFRANQ" IS 'Dias franquicia';
   COMMENT ON COLUMN "AXIS"."DETFRANQUICIAS"."PDTOFRA" IS 'Descuento franquicia';
   COMMENT ON COLUMN "AXIS"."DETFRANQUICIAS"."NRGMIN" IS 'Rango minimo';
   COMMENT ON COLUMN "AXIS"."DETFRANQUICIAS"."NRGMAX" IS 'Rango maximo';
   COMMENT ON TABLE "AXIS"."DETFRANQUICIAS"  IS 'Tabla detalle de FRANQUICIAS';
  GRANT UPDATE ON "AXIS"."DETFRANQUICIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETFRANQUICIAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETFRANQUICIAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETFRANQUICIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETFRANQUICIAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETFRANQUICIAS" TO "PROGRAMADORESCSI";
