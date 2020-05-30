--------------------------------------------------------
--  DDL for Table PENALISEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."PENALISEG" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"CTIPMOV" NUMBER(1,0), 
	"NINIRAN" NUMBER(3,0), 
	"NFINRAN" NUMBER(3,0), 
	"IPENALI" NUMBER, 
	"PPENALI" NUMBER, 
	"CLAVE" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PENALISEG"."SSEGURO" IS 'C�digo Identificativo �nico de P�liza';
   COMMENT ON COLUMN "AXIS"."PENALISEG"."NMOVIMI" IS 'Movimiento de seguro';
   COMMENT ON COLUMN "AXIS"."PENALISEG"."CTIPMOV" IS 'Tipo de movimiento penalizacions (1- Traspasos, 2- Rescates parciales, 3- Rescates totales, 4- Aportaciones)';
   COMMENT ON COLUMN "AXIS"."PENALISEG"."NINIRAN" IS 'Inicio del rango expresado en a�os';
   COMMENT ON COLUMN "AXIS"."PENALISEG"."NFINRAN" IS 'Fin del rango expresado en a�os';
   COMMENT ON COLUMN "AXIS"."PENALISEG"."IPENALI" IS 'Importe de penalizaci�n';
   COMMENT ON COLUMN "AXIS"."PENALISEG"."PPENALI" IS 'Porcentaje de penalizaci�n';
   COMMENT ON COLUMN "AXIS"."PENALISEG"."CLAVE" IS 'Clave de la f�rmula';
   COMMENT ON TABLE "AXIS"."PENALISEG"  IS 'Tabla de parametrizaci�n de % de penalizaci�n para una p�liza';
  GRANT UPDATE ON "AXIS"."PENALISEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PENALISEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PENALISEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PENALISEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PENALISEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PENALISEG" TO "PROGRAMADORESCSI";
