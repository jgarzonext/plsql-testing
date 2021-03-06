--------------------------------------------------------
--  DDL for Table HIS_CONTAB_ASIENT
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_CONTAB_ASIENT" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCONTA" DATE, 
	"NASIENT" NUMBER(4,0), 
	"CCUENTA" VARCHAR2(50 BYTE), 
	"TDESCRI" VARCHAR2(100 BYTE), 
	"DEBE" NUMBER, 
	"HABER" NUMBER, 
	"CPAIS" NUMBER(3,0), 
	"NLINEA" NUMBER(6,0), 
	"OTROS" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_CONTAB_ASIENT"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."HIS_CONTAB_ASIENT"."FCONTA" IS 'Fecha en la que se envia a contabilidad';
   COMMENT ON COLUMN "AXIS"."HIS_CONTAB_ASIENT"."NASIENT" IS 'N�mero de asiento contable';
   COMMENT ON COLUMN "AXIS"."HIS_CONTAB_ASIENT"."CCUENTA" IS 'C�digo de cuenta';
   COMMENT ON COLUMN "AXIS"."HIS_CONTAB_ASIENT"."TDESCRI" IS 'Descripci�n de la cuenta';
   COMMENT ON COLUMN "AXIS"."HIS_CONTAB_ASIENT"."DEBE" IS 'Importe en el Debe';
   COMMENT ON COLUMN "AXIS"."HIS_CONTAB_ASIENT"."HABER" IS 'Importe en el Haber';
   COMMENT ON COLUMN "AXIS"."HIS_CONTAB_ASIENT"."CPAIS" IS 'Pais de residencia';
   COMMENT ON COLUMN "AXIS"."HIS_CONTAB_ASIENT"."NLINEA" IS 'Numero de Linea';
   COMMENT ON COLUMN "AXIS"."HIS_CONTAB_ASIENT"."OTROS" IS 'Contenido de variable espec�fica para cada cuenta';
  GRANT UPDATE ON "AXIS"."HIS_CONTAB_ASIENT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CONTAB_ASIENT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_CONTAB_ASIENT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_CONTAB_ASIENT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CONTAB_ASIENT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_CONTAB_ASIENT" TO "PROGRAMADORESCSI";
