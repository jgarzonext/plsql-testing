--------------------------------------------------------
--  DDL for Table MIG_TIPOS_INDICADORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_TIPOS_INDICADORES" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"TINDICA" VARCHAR2(200 BYTE), 
	"CAREA" NUMBER, 
	"CTIPREG" NUMBER, 
	"CIMPRET" NUMBER, 
	"CCINDID" VARCHAR2(10 BYTE), 
	"CINDSAP" VARCHAR2(4 BYTE), 
	"PORCENT" NUMBER, 
	"CCLAING" VARCHAR2(1 BYTE), 
	"IBASMIN" NUMBER, 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"FVIGOR" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."MIG_PK" IS 'Clave �nica de MIG_TIPOS_INDICADORES';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."TINDICA" IS 'Si   Descripci�n del indicador';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."CAREA" IS '�rea. 1-Reaseguro 2-Intermediarios 3-Siniestros 4-Producci�n';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."CTIPREG" IS '1-Impuesto 2-Retenci�n';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."CIMPRET" IS '1-IVA 2-Retefuente 3-ReteIVA 4-ReteICA';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."CCINDID" IS 'C�digo del tipo de retenci�n SAP';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."CINDSAP" IS 'C�digo del indicador de retenci�n SAP';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."PORCENT" IS 'Porcentaje de retenci�n';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."CCLAING" IS 'Clase de ingreso. B-Bienes S-Servicios';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."IBASMIN" IS 'Importe base m�nima';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."CPROVIN" IS 'C�digo de provincia';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."CPOBLAC" IS 'C�digo de poblaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_TIPOS_INDICADORES"."FVIGOR" IS 'Fecha entrada en vigor';
  GRANT UPDATE ON "AXIS"."MIG_TIPOS_INDICADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_TIPOS_INDICADORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_TIPOS_INDICADORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_TIPOS_INDICADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_TIPOS_INDICADORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_TIPOS_INDICADORES" TO "PROGRAMADORESCSI";