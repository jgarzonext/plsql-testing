--------------------------------------------------------
--  DDL for Table PRODUCTO_REN
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRODUCTO_REN" 
   (	"SPRODUC" NUMBER(6,0), 
	"CTIPREN" NUMBER(1,0), 
	"CCLAREN" NUMBER(1,0), 
	"NNUMREN" NUMBER(2,0), 
	"CPARBEN" NUMBER(1,0), 
	"CLIGACT" NUMBER(1,0), 
	"CPA1REN" NUMBER(2,0), 
	"NPA1REN" NUMBER(2,0), 
	"NRECREN" NUMBER(1,0), 
	"CMUNREC" NUMBER(1,0), 
	"CESTMRE" NUMBER(1,0), 
	"CPCTREV" NUMBER(1,0), 
	"NPCTREV" NUMBER(5,2), 
	"NPCTREVMIN" NUMBER(5,2), 
	"NPCTREVMAX" NUMBER(5,2), 
	"NMESEXTRA" VARCHAR2(26 BYTE), 
	"CMODEXTRA" NUMBER, 
	"CPCTFALL" NUMBER(1,0), 
	"NPCTFALL" NUMBER(5,2), 
	"NPCTFALLMIN" NUMBER(5,2), 
	"NPCTFALLMAX" NUMBER(5,2), 
	"IMESEXTRA" VARCHAR2(2000 BYTE), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."SPRODUC" IS 'Secuencia del producto';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CTIPREN" IS 'Ind.Tipo Renta 0-Diferida, 1-Inmediata. VALORES=200';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CCLAREN" IS 'Ind.clase Renta 0-Vitalicia, 1-Temp. Anual, 2-Temp. Mensual. VALORES=201';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."NNUMREN" IS 'Nro. de a�os o meses seg�n la temporalidad de CCLAREN';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CPARBEN" IS 'Indicador de participaci�n en Beneficios';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CLIGACT" IS 'Ind. p�lizas est�n ligadas a un activo 0-No 1-Si';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CPA1REN" IS 'Ind. cuando se paga la 1era renta. VALORES=210. 0-Al vto.,1-al vto+1dia, etc';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."NPA1REN" IS 'Nro. De a�os, meses o d�as a sumar a la fecha que se indique en CPA1REN';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."NRECREN" IS 'Nro. de recibos a generar de renta. VALORES=870. 0-Por aseg. 1-Primer Aseg.';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CMUNREC" IS 'Ind. Prod.2 cab. Si muere uno,la parte del muerto en que recibo. 0-Uno nuevo, 1-Acumul. al vivo';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CESTMRE" IS 'Ind. el estado del recibos si cmunrec=0.';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CPCTREV" IS 'Tipo pct reversi�n (1 fijo,2 variable)';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."NPCTREV" IS 'Valor si tipo pct reversion vale 1';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."NPCTREVMIN" IS 'Valor m�nimo  si tipo pct reversion vale 2';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."NPCTREVMAX" IS 'Valor m�ximo  si tipo pct reversion vale 2';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."NMESEXTRA" IS 'Campo con la estructura: 1|2|3|4|5|6|7|8|9|10|11|12, si el mes esta informado en su posici�n significa que hay paga extra para ese mes';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CMODEXTRA" IS 'Indicador de si a nivel de p�liza se podr�n modificar los meses con paga extra';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CPCTFALL" IS 'Tipo pct fallecimiento (1 fijo,2 variable,3 tabla)';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."NPCTFALL" IS 'Valor si tipo pct fallecimiento vale 1';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."NPCTFALLMIN" IS 'Valor m�nimo  si tipo pct fallecimiento vale 2';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."NPCTFALLMAX" IS 'Valor m�ximo  si tipo pct fallecimiento vale 2';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_REN"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."PRODUCTO_REN"  IS 'Param. productos con Prestaci�n Rentas';
  GRANT UPDATE ON "AXIS"."PRODUCTO_REN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODUCTO_REN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRODUCTO_REN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRODUCTO_REN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODUCTO_REN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRODUCTO_REN" TO "PROGRAMADORESCSI";
