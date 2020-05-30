--------------------------------------------------------
--  DDL for Table PREGUNPROACTIVITAB
--------------------------------------------------------

  CREATE TABLE "AXIS"."PREGUNPROACTIVITAB" 
   (	"CPREGUN" NUMBER(4,0), 
	"SPRODUC" NUMBER(8,0), 
	"CACTIVI" NUMBER(4,0), 
	"COLUMNA" VARCHAR2(100 BYTE), 
	"TVALIDA" VARCHAR2(100 BYTE), 
	"CTIPDATO" VARCHAR2(250 BYTE), 
	"COBLIGA" NUMBER(1,0), 
	"CREVALORIZA" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVITAB"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVITAB"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVITAB"."COLUMNA" IS 'Identificador de la columna';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVITAB"."TVALIDA" IS 'Funci�n de validaci�n';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVITAB"."CTIPDATO" IS 'Tipo de DATO Nuevo DETVALOR';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVITAB"."COBLIGA" IS 'Indica si la columna es obligatoria dentro del atributo';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVITAB"."CREVALORIZA" IS 'Revaloriza si/no . Detvalores 108';
   COMMENT ON TABLE "AXIS"."PREGUNPROACTIVITAB"  IS 'Parametrizaci�n pregunta tabla por actividad y producto';
  GRANT UPDATE ON "AXIS"."PREGUNPROACTIVITAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPROACTIVITAB" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PREGUNPROACTIVITAB" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PREGUNPROACTIVITAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPROACTIVITAB" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PREGUNPROACTIVITAB" TO "PROGRAMADORESCSI";