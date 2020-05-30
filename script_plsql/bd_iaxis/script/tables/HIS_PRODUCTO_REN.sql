--------------------------------------------------------
--  DDL for Table HIS_PRODUCTO_REN
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PRODUCTO_REN" 
   (	"SPRODUC" NUMBER(22,0), 
	"CTIPREN" NUMBER(22,0), 
	"CCLAREN" NUMBER(22,0), 
	"NNUMREN" NUMBER(22,0), 
	"CPARBEN" NUMBER(22,0), 
	"CLIGACT" NUMBER(22,0), 
	"CPA1REN" NUMBER(22,0), 
	"NPA1REN" NUMBER(22,0), 
	"NRECREN" NUMBER(22,0), 
	"CMUNREC" NUMBER(22,0), 
	"CESTMRE" NUMBER(22,0), 
	"CPCTREV" NUMBER(22,0), 
	"NPCTREV" NUMBER(22,0), 
	"NPCTREVMIN" NUMBER(22,0), 
	"NPCTREVMAX" NUMBER(22,0), 
	"NMESEXTRA" VARCHAR2(26 BYTE), 
	"CMODEXTRA" NUMBER(22,0), 
	"CPCTFALL" NUMBER(22,0), 
	"NPCTFALL" NUMBER(22,0), 
	"NPCTFALLMIN" NUMBER(22,0), 
	"NPCTFALLMAX" NUMBER(22,0), 
	"IMESEXTRA" VARCHAR2(2000 BYTE), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."SPRODUC" IS 'Secuencia del producto';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CTIPREN" IS 'Ind.Tipo Renta 0-Diferida, 1-Inmediata. VALORES=200';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CCLAREN" IS 'Ind.clase Renta 0-Vitalicia, 1-Temp. Anual, 2-Temp. Mensual. VALORES=201';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."NNUMREN" IS 'Nro. de años o meses según la temporalidad de CCLAREN';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CPARBEN" IS 'Indicador de participación en Beneficios';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CLIGACT" IS 'Ind. pólizas están ligadas a un activo 0-No 1-Si';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CPA1REN" IS 'Ind. cuando se paga la 1era renta. VALORES=210. 0-Al vto.,1-al vto+1dia, etc';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."NPA1REN" IS 'Nro. De años, meses o días a sumar a la fecha que se indique en CPA1REN';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."NRECREN" IS 'Nro. de recibos a generar de renta. VALORES=870. 0-Por aseg. 1-Primer Aseg.';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CMUNREC" IS 'Ind. Prod.2 cab. Si muere uno,la parte del muerto en que recibo. 0-Uno nuevo, 1-Acumul. al vivo';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CESTMRE" IS 'Ind. el estado del recibos si cmunrec=0.';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CPCTREV" IS 'Tipo pct reversión (1 fijo,2 variable)';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."NPCTREV" IS 'Valor si tipo pct reversion vale 1';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."NPCTREVMIN" IS 'Valor mínimo  si tipo pct reversion vale 2';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."NPCTREVMAX" IS 'Valor máximo  si tipo pct reversion vale 2';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."NMESEXTRA" IS 'Campo con la estructura: 1|2|3|4|5|6|7|8|9|10|11|12, si el mes esta informado en su posición significa que hay paga extra para ese mes';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CMODEXTRA" IS 'Indicador de si a nivel de póliza se podrán modificar los meses con paga extra';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CPCTFALL" IS 'Tipo pct fallecimiento (1 fijo,2 variable,3 tabla)';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."NPCTFALL" IS 'Valor si tipo pct fallecimiento vale 1';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."NPCTFALLMIN" IS 'Valor mínimo  si tipo pct fallecimiento vale 2';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."NPCTFALLMAX" IS 'Valor máximo  si tipo pct fallecimiento vale 2';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."CUSUHIST" IS 'Usuario que realiza la acción';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."FCREAHIST" IS 'Fecha en que se realiza la acción';
   COMMENT ON COLUMN "AXIS"."HIS_PRODUCTO_REN"."ACCION" IS 'Acción realizada';
   COMMENT ON TABLE "AXIS"."HIS_PRODUCTO_REN"  IS 'Histórico de la tabla PRODUCTO_REN';
  GRANT UPDATE ON "AXIS"."HIS_PRODUCTO_REN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PRODUCTO_REN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PRODUCTO_REN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PRODUCTO_REN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PRODUCTO_REN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PRODUCTO_REN" TO "PROGRAMADORESCSI";
