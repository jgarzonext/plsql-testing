--------------------------------------------------------
--  DDL for Table PDS_FECHARECIBO
--------------------------------------------------------

  CREATE TABLE "AXIS"."PDS_FECHARECIBO" 
   (	"CMOTMOV" NUMBER(3,0), 
	"SPRODUC" NUMBER(6,0), 
	"CTIPO" NUMBER(1,0), 
	"TFECREC" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PDS_FECHARECIBO"."CMOTMOV" IS 'Motivo de suplemento';
   COMMENT ON COLUMN "AXIS"."PDS_FECHARECIBO"."SPRODUC" IS 'Id. del producto';
   COMMENT ON COLUMN "AXIS"."PDS_FECHARECIBO"."CTIPO" IS '0 No importa fecha o no hay, 1-debe ser una concreta';
   COMMENT ON COLUMN "AXIS"."PDS_FECHARECIBO"."TFECREC" IS 'funci�n que nos devuelve la fecha del recibo para el supl.';
   COMMENT ON TABLE "AXIS"."PDS_FECHARECIBO"  IS 'Tabla de tipos de suplemento posibles';
  GRANT UPDATE ON "AXIS"."PDS_FECHARECIBO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_FECHARECIBO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PDS_FECHARECIBO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PDS_FECHARECIBO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_FECHARECIBO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PDS_FECHARECIBO" TO "PROGRAMADORESCSI";
