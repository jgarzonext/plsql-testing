--------------------------------------------------------
--  DDL for Table COD_CLAUSULAS_REAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."COD_CLAUSULAS_REAS" 
   (	"CCODIGO" NUMBER(5,0), 
	"CTIPO" NUMBER(3,0), 
	"FEFECTO" DATE, 
	"FVENCIM" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."COD_CLAUSULAS_REAS"."CCODIGO" IS 'C�digo de cl�usula';
   COMMENT ON COLUMN "AXIS"."COD_CLAUSULAS_REAS"."CTIPO" IS 'Tipo Cl�usula (cvalor = 346)';
   COMMENT ON COLUMN "AXIS"."COD_CLAUSULAS_REAS"."FEFECTO" IS 'Fecha Efecto';
   COMMENT ON COLUMN "AXIS"."COD_CLAUSULAS_REAS"."FVENCIM" IS 'Fecha Vencimiento';
   COMMENT ON TABLE "AXIS"."COD_CLAUSULAS_REAS"  IS 'C�digo identificador de la cl�usula';
  GRANT UPDATE ON "AXIS"."COD_CLAUSULAS_REAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COD_CLAUSULAS_REAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COD_CLAUSULAS_REAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."COD_CLAUSULAS_REAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COD_CLAUSULAS_REAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COD_CLAUSULAS_REAS" TO "PROGRAMADORESCSI";
