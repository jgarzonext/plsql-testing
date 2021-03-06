--------------------------------------------------------
--  DDL for Table PDS_POST_SUPL
--------------------------------------------------------

  CREATE TABLE "AXIS"."PDS_POST_SUPL" 
   (	"CCONFIG" VARCHAR2(50 BYTE), 
	"NORDEN" NUMBER(2,0), 
	"TFUNCION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PDS_POST_SUPL"."CCONFIG" IS 'Id. de la configuraci� (form+mode+motiu+prod)';
   COMMENT ON COLUMN "AXIS"."PDS_POST_SUPL"."NORDEN" IS 'Orden de ejecuci�n de los procesos';
   COMMENT ON COLUMN "AXIS"."PDS_POST_SUPL"."TFUNCION" IS 'Nombre de la funci�n';
   COMMENT ON TABLE "AXIS"."PDS_POST_SUPL"  IS 'Procesos/funciones de BBDD a lanzar si se ha grabado el suplemento';
  GRANT UPDATE ON "AXIS"."PDS_POST_SUPL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_POST_SUPL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PDS_POST_SUPL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PDS_POST_SUPL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_POST_SUPL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PDS_POST_SUPL" TO "PROGRAMADORESCSI";
