--------------------------------------------------------
--  DDL for Table MIG_DEVBANPRESENTADORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_DEVBANPRESENTADORES" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"SDEVOLU" NUMBER(6,0), 
	"CEMPRES" NUMBER(2,0), 
	"CDOMENT" NUMBER(4,0), 
	"CDOMSUC" NUMBER(4,0), 
	"FSOPORT" DATE, 
	"NNUMNIF" VARCHAR2(50 BYTE), 
	"TSUFIJO" VARCHAR2(3 BYTE), 
	"TPRENOM" VARCHAR2(40 BYTE), 
	"FCARGA" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"TFICHER" VARCHAR2(200 BYTE), 
	"NPREREG" NUMBER(10,0), 
	"IPRETOT_R" NUMBER, 
	"IPRETOT_T" NUMBER, 
	"NPRETOT_R" NUMBER(10,0), 
	"NPRETOT_T" NUMBER(10,0), 
	"SPROCES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."CESTMIG" IS 'Estado del registro valor inicial 1';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."MIG_PK" IS 'Clave �nica de MIG_DEVBANPRESENTADORES';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."SDEVOLU" IS 'Identificador del proceso de carga de devoluciones';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."CDOMENT" IS 'Entidad en la que se present� el soporte y lo devuelve';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."CDOMSUC" IS 'Oficina en la que se present� el soporte y ahora lo devuelve';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."FSOPORT" IS 'Fecha de confecci�n del soporte';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."NNUMNIF" IS 'NIF presentador';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."TSUFIJO" IS 'Sufijo del presentador';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."TPRENOM" IS 'Nombre del presentador';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."FCARGA" IS 'Fecha en la que se carga el soporte';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."CUSUARI" IS 'Usuario que realiza la carga';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."TFICHER" IS 'Nombre del fichero que se carga';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."NPREREG" IS 'N�mero total de registros en el soporte';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."IPRETOT_R" IS 'Total importes devoluci�n reales';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."IPRETOT_T" IS 'Total importes devoluci�n reales te�ricos';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."NPRETOT_R" IS 'N�mero total de devoluciones reales';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."NPRETOT_T" IS 'N�mero total de devoluciones te�ricos';
   COMMENT ON COLUMN "AXIS"."MIG_DEVBANPRESENTADORES"."SPROCES" IS 'Identificador del proc�s on consten els errors';
   COMMENT ON TABLE "AXIS"."MIG_DEVBANPRESENTADORES"  IS 'Devoluciones Presentadores';
  GRANT UPDATE ON "AXIS"."MIG_DEVBANPRESENTADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DEVBANPRESENTADORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_DEVBANPRESENTADORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_DEVBANPRESENTADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DEVBANPRESENTADORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_DEVBANPRESENTADORES" TO "PROGRAMADORESCSI";
