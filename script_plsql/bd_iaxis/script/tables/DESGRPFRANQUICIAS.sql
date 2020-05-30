--------------------------------------------------------
--  DDL for Table DESGRPFRANQUICIAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESGRPFRANQUICIAS" 
   (	"NGRPFRA" NUMBER(6,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TGRPFRA" VARCHAR2(100 BYTE), 
	"CFRANQ" NUMBER(6,0), 
	"NFRAVER" NUMBER(6,0), 
	"NGRPGARA" NUMBER(6,0), 
	"FMODIF" DATE, 
	"CUSUMODIF" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESGRPFRANQUICIAS"."NGRPFRA" IS 'Codigo grupo de franquicias';
   COMMENT ON COLUMN "AXIS"."DESGRPFRANQUICIAS"."CIDIOMA" IS 'Codigo idioma';
   COMMENT ON COLUMN "AXIS"."DESGRPFRANQUICIAS"."CFRANQ" IS 'C�digo de franquicia';
   COMMENT ON COLUMN "AXIS"."DESGRPFRANQUICIAS"."NFRAVER" IS 'C�digo de versi�n de franquicia';
   COMMENT ON COLUMN "AXIS"."DESGRPFRANQUICIAS"."NGRPGARA" IS 'C�digo grupo de garant�as';
   COMMENT ON COLUMN "AXIS"."DESGRPFRANQUICIAS"."FMODIF" IS 'Fecha modificaci�n';
   COMMENT ON COLUMN "AXIS"."DESGRPFRANQUICIAS"."CUSUMODIF" IS 'Usuario modificaci�n';
   COMMENT ON TABLE "AXIS"."DESGRPFRANQUICIAS"  IS 'Tabla descripci�n GRUPOS de FRANQUICIAS';
  GRANT UPDATE ON "AXIS"."DESGRPFRANQUICIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESGRPFRANQUICIAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESGRPFRANQUICIAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESGRPFRANQUICIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESGRPFRANQUICIAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESGRPFRANQUICIAS" TO "PROGRAMADORESCSI";
