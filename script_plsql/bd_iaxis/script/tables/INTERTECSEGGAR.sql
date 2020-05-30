--------------------------------------------------------
--  DDL for Table INTERTECSEGGAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."INTERTECSEGGAR" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"CTIPO" NUMBER(1,0), 
	"NRIESGO" NUMBER(6,0), 
	"FEFEMOV" DATE, 
	"PINTTEC" NUMBER(12,8), 
	"NDESDE" NUMBER, 
	"NHASTA" NUMBER, 
	"NINNTEC" NUMBER(7,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INTERTECSEGGAR"."SSEGURO" IS 'IDENTIFICADOR �NICO DEL SEGURO';
   COMMENT ON COLUMN "AXIS"."INTERTECSEGGAR"."NMOVIMI" IS 'N�MERO DE MOVIMIENTO DE SEGURO';
   COMMENT ON COLUMN "AXIS"."INTERTECSEGGAR"."CGARANT" IS 'IDENTIFICADOR �NICO DE LA GARANT�A';
   COMMENT ON COLUMN "AXIS"."INTERTECSEGGAR"."CTIPO" IS 'C�DIGO TIPO DE INTER�S VF.848';
   COMMENT ON COLUMN "AXIS"."INTERTECSEGGAR"."NRIESGO" IS 'N�MERO DE RIESGO';
   COMMENT ON COLUMN "AXIS"."INTERTECSEGGAR"."PINTTEC" IS 'PORCENTAJE DE INTER�S T�CNICO.SOLO ESTAR� INFORMADO SI ES DIFERENTE AL DEL PRODUCTO';
   COMMENT ON COLUMN "AXIS"."INTERTECSEGGAR"."NDESDE" IS 'Inicio tramo';
   COMMENT ON COLUMN "AXIS"."INTERTECSEGGAR"."NHASTA" IS 'Fin tramo';
   COMMENT ON COLUMN "AXIS"."INTERTECSEGGAR"."NINNTEC" IS 'Porcentaje de inter�s parametrizado en el momento de la inserci�n.';
   COMMENT ON TABLE "AXIS"."INTERTECSEGGAR"  IS 'INTER�S T�CNICO ASOCIADO A LA GARANT�A DE LA PROMOCI�N EN LA P�LIZA';
  GRANT UPDATE ON "AXIS"."INTERTECSEGGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INTERTECSEGGAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INTERTECSEGGAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INTERTECSEGGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INTERTECSEGGAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INTERTECSEGGAR" TO "PROGRAMADORESCSI";
