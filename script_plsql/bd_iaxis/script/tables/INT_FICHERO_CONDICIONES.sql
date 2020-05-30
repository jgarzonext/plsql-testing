--------------------------------------------------------
--  DDL for Table INT_FICHERO_CONDICIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_FICHERO_CONDICIONES" 
   (	"NCONDICION" NUMBER(5,0), 
	"NORDCOND" NUMBER(4,0), 
	"TVALCOND" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_FICHERO_CONDICIONES"."NCONDICION" IS 'N�mero de condici�n de l�nea';
   COMMENT ON COLUMN "AXIS"."INT_FICHERO_CONDICIONES"."NORDCOND" IS 'Orden del campo en el fichero';
   COMMENT ON COLUMN "AXIS"."INT_FICHERO_CONDICIONES"."TVALCOND" IS 'Valor del campo con orden nordcon para que se cumpla la condici�n';
  GRANT UPDATE ON "AXIS"."INT_FICHERO_CONDICIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FICHERO_CONDICIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_FICHERO_CONDICIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_FICHERO_CONDICIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FICHERO_CONDICIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_FICHERO_CONDICIONES" TO "PROGRAMADORESCSI";