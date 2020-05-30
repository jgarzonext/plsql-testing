--------------------------------------------------------
--  DDL for Table PARTRASPRESC
--------------------------------------------------------

  CREATE TABLE "AXIS"."PARTRASPRESC" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CTIPMOV" NUMBER(1,0), 
	"CCODFON" NUMBER(3,0), 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"NCARCIA" NUMBER(2,0), 
	"NMAXANO" NUMBER(3,0), 
	"NGRAANO" NUMBER(2,0), 
	"IIMPPEN" NUMBER(8,2), 
	"CDIVISA" NUMBER(2,0), 
	"PPENAL" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."CRAMO" IS 'C�digo de ramo';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."CMODALI" IS 'C�digo de modalidad';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."CTIPSEG" IS 'C�digo de tipo de seguro';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."CTIPMOV" IS 'Tipo de movimiento (1=traspasos, 2=rescates parciales,3=totales)';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."CCODFON" IS 'C�digo de fondo';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."FINICIO" IS 'Fecha de inicio';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."FFIN" IS 'Fecha de finalizaci�n';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."NCARCIA" IS 'N�mero de meses durante los que no se podr�n hacer traspasos';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."NMAXANO" IS 'N�mero m�ximo de operaciones anuales';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."NGRAANO" IS 'N�mero de operaciones gratuitas anuales';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."IIMPPEN" IS 'Importe de penalizaci�n de las no gratuitas';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."CDIVISA" IS 'C�digo de la divisa';
   COMMENT ON COLUMN "AXIS"."PARTRASPRESC"."PPENAL" IS '% de penalizaci�n de las no gratuitas';
   COMMENT ON TABLE "AXIS"."PARTRASPRESC"  IS 'Almacena par�metros referentes a traspasos / rescates parciales / rescates totales';
  GRANT UPDATE ON "AXIS"."PARTRASPRESC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARTRASPRESC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PARTRASPRESC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PARTRASPRESC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARTRASPRESC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PARTRASPRESC" TO "PROGRAMADORESCSI";