--------------------------------------------------------
--  DDL for Table MIG_DEVBANORDENANTES
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_DEVBANORDENANTES" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"SDEVOLU" NUMBER(6,0), 
	"NNUMNIF" VARCHAR2(50 BYTE), 
	"TSUFIJO" VARCHAR2(3 BYTE), 
	"FREMESA" DATE, 
	"CCOBBAN" NUMBER(3,0), 
	"TORDNOM" VARCHAR2(40 BYTE), 
	"NORDCCC" VARCHAR2(50 BYTE), 
	"NORDREG" NUMBER(10,0), 
	"IORDTOT_R" NUMBER, 
	"IORDTOT_T" NUMBER, 
	"NORDTOT_R" NUMBER(10,0), 
	"NORDTOT_T" NUMBER(10,0), 
	"CTIPBAN" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."CESTMIG" IS 'Estado del registro valor inicial 1';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."MIG_PK" IS 'Clave �nica de MIG_DEVBANORDENANTES';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."SDEVOLU" IS 'Identificador del proceso de carga de devoluciones';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."NNUMNIF" IS 'NIF ordenante';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."TSUFIJO" IS 'Sufijo ordenante';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."FREMESA" IS 'Fecha de cobro del recibo';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."CCOBBAN" IS 'C�digo de cobrador bancario';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."TORDNOM" IS 'Nombre del ordenante';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."NORDCCC" IS 'CCC del ordenante';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."NORDREG" IS 'N�mero de registros en la remesa';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."IORDTOT_R" IS 'Importe total remesa real';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."IORDTOT_T" IS 'Importe total remesa te�rico';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."NORDTOT_R" IS 'N�mero de devoluciones de la remesa real';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."NORDTOT_T" IS 'N�mero de devoluciones de la remesa te�rico';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANORDENANTES"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON TABLE "AXIS"."MIG_DEVBANORDENANTES"  IS 'Devoluciones Ordenantes';
  GRANT UPDATE ON "AXIS"."MIG_DEVBANORDENANTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DEVBANORDENANTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_DEVBANORDENANTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_DEVBANORDENANTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DEVBANORDENANTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_DEVBANORDENANTES" TO "PROGRAMADORESCSI";
