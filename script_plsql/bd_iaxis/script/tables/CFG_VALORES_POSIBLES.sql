--------------------------------------------------------
--  DDL for Table CFG_VALORES_POSIBLES
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_VALORES_POSIBLES" 
   (	"CTABLA" VARCHAR2(150 BYTE), 
	"CCAMPO" VARCHAR2(150 BYTE), 
	"CVALOR_ACT" NUMBER(8,0), 
	"CVALOR_DEST" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_VALORES_POSIBLES"."CTABLA" IS 'Nombre de la tabla';
   COMMENT ON COLUMN "AXIS"."CFG_VALORES_POSIBLES"."CCAMPO" IS 'Campo de la tabla del que se definen los valores posibles';
   COMMENT ON COLUMN "AXIS"."CFG_VALORES_POSIBLES"."CVALOR_ACT" IS 'Valor actual del campo';
   COMMENT ON COLUMN "AXIS"."CFG_VALORES_POSIBLES"."CVALOR_DEST" IS 'Valor posible del campo que puede tomar en funcion del cvalor_act';
   COMMENT ON TABLE "AXIS"."CFG_VALORES_POSIBLES"  IS 'Tabla que define los valores posibles que puede tomar un campo en funci�n de su estado actual';
  GRANT UPDATE ON "AXIS"."CFG_VALORES_POSIBLES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_VALORES_POSIBLES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_VALORES_POSIBLES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_VALORES_POSIBLES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_VALORES_POSIBLES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_VALORES_POSIBLES" TO "PROGRAMADORESCSI";
