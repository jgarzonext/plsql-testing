--------------------------------------------------------
--  DDL for Table CODMORTALIDAD_PAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODMORTALIDAD_PAR" 
   (	"SCODMORPAR" NUMBER, 
	"CTABLA" NUMBER(2,0), 
	"PDTO" NUMBER(5,2), 
	"PINT" NUMBER(5,2), 
	"PREV" NUMBER(3,2), 
	"NMENSUALES" NUMBER(1,0), 
	"FINI" DATE, 
	"FFIN" DATE, 
	"NDESPLAZAMIENTO" NUMBER(3,0), 
	"NSEXO" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODMORTALIDAD_PAR"."SCODMORPAR" IS 'Sequence clave primaria, sustituye la pk (ctabla,pdto,pint,prev,nmensuales,fini)';
   COMMENT ON COLUMN "AXIS"."CODMORTALIDAD_PAR"."CTABLA" IS 'Código de tabla de mortalidad';
   COMMENT ON COLUMN "AXIS"."CODMORTALIDAD_PAR"."PDTO" IS 'Porcentaje de descuento(ratio de corrección del año en curso respecto al que se hizo la muestra)';
   COMMENT ON COLUMN "AXIS"."CODMORTALIDAD_PAR"."PINT" IS 'Porcentaje de interés(lo que renta al cabo de un año por ejemplo)';
   COMMENT ON COLUMN "AXIS"."CODMORTALIDAD_PAR"."PREV" IS 'Porcentaje de Revalorizacion(lo que aumenta la cuota al cabo de un año por ejemplo)';
   COMMENT ON COLUMN "AXIS"."CODMORTALIDAD_PAR"."NMENSUALES" IS '0=Anuales; 1=Mensuales(normalmente implica que las cantidades anuales se dividen por 12).';
   COMMENT ON COLUMN "AXIS"."CODMORTALIDAD_PAR"."FINI" IS 'Fecha de inicio';
   COMMENT ON COLUMN "AXIS"."CODMORTALIDAD_PAR"."FFIN" IS 'Fecha de fin';
   COMMENT ON COLUMN "AXIS"."CODMORTALIDAD_PAR"."NDESPLAZAMIENTO" IS 'Años a restar al valor de las LX generacionales(Codmortalidad.ntipo_tabla=0).Por ejemplo para las mujeres se toma el lx de los hombres de 5 ó 7 años atrás(éste 5 ó 7 es el ndesplazamiento).';
   COMMENT ON COLUMN "AXIS"."CODMORTALIDAD_PAR"."NSEXO" IS 'A que valores de LX afecta el desplzto, para tablas no generacionales(Codmortalidad.ntipo_tabla=0):0=a Ambos;1=Sólo a Hombre;2=Sólo a Mujer.';
   COMMENT ON TABLE "AXIS"."CODMORTALIDAD_PAR"  IS 'Parametros Tablas Mortalidad';
  GRANT UPDATE ON "AXIS"."CODMORTALIDAD_PAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODMORTALIDAD_PAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODMORTALIDAD_PAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODMORTALIDAD_PAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODMORTALIDAD_PAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODMORTALIDAD_PAR" TO "PROGRAMADORESCSI";
