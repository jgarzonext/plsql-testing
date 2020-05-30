--------------------------------------------------------
--  DDL for Table HIS_PDS_SUPLFECHARECIBO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PDS_SUPLFECHARECIBO" 
   (	"CMOTMOV" NUMBER(22,0), 
	"SPRODUC" NUMBER(22,0), 
	"CTIPO" NUMBER(22,0), 
	"TFECREC" VARCHAR2(100 BYTE), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPLFECHARECIBO"."CMOTMOV" IS 'Motivo de suplemento';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPLFECHARECIBO"."SPRODUC" IS 'Id. del producto';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPLFECHARECIBO"."CTIPO" IS '0 No importa fecha o no hay, 1-debe ser una concreta';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPLFECHARECIBO"."TFECREC" IS 'funci�n que nos devuelve la fecha del recibo para el supl.';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPLFECHARECIBO"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPLFECHARECIBO"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPLFECHARECIBO"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPLFECHARECIBO"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPLFECHARECIBO"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPLFECHARECIBO"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPLFECHARECIBO"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_PDS_SUPLFECHARECIBO"  IS 'Hist�rico de la tabla PDS_SUPLFECHARECIBO';
  GRANT UPDATE ON "AXIS"."HIS_PDS_SUPLFECHARECIBO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PDS_SUPLFECHARECIBO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PDS_SUPLFECHARECIBO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PDS_SUPLFECHARECIBO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PDS_SUPLFECHARECIBO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PDS_SUPLFECHARECIBO" TO "PROGRAMADORESCSI";
