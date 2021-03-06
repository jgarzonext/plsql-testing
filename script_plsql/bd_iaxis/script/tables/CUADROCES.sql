--------------------------------------------------------
--  DDL for Table CUADROCES
--------------------------------------------------------

  CREATE TABLE "AXIS"."CUADROCES" 
   (	"CCOMPANI" NUMBER(3,0), 
	"NVERSIO" NUMBER(2,0), 
	"SCONTRA" NUMBER(6,0), 
	"CTRAMO" NUMBER(2,0), 
	"CCOMREA" NUMBER(2,0), 
	"PCESION" NUMBER(8,5), 
	"NPLENOS" NUMBER(5,2), 
	"ICESFIJ" NUMBER, 
	"ICOMFIJ" NUMBER, 
	"ISCONTA" NUMBER, 
	"PRESERV" NUMBER(5,2), 
	"PINTRES" NUMBER(7,5), 
	"ILIACDE" NUMBER, 
	"PPAGOSL" NUMBER(5,2), 
	"CCORRED" NUMBER(4,0), 
	"CINTRES" NUMBER(2,0), 
	"CINTREF" NUMBER(3,0), 
	"CRESREF" NUMBER(3,0), 
	"IRESERV" NUMBER, 
	"PTASAJ" NUMBER(5,2), 
	"FULTLIQ" DATE, 
	"IAGREGA" NUMBER, 
	"IMAXAGR" NUMBER, 
	"CTIPCOMIS" NUMBER(1,0), 
	"PCTCOMIS" NUMBER(5,2), 
	"CTRAMOCOMISION" NUMBER(5,0), 
	"CFRERES" NUMBER(2,0), 
	"PCTGASTOS" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CUADROCES"."CCOMPANI" IS 'C�digo de compa�ia';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."NVERSIO" IS 'N�mero versi�n contrato reas.';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."CTRAMO" IS 'C�digo del tramo';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."CCOMREA" IS 'C�digo de comisi�n en contratos de reaseguro';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."PCESION" IS 'Porcentaje de cesi�n';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."NPLENOS" IS 'N� de plenos';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."ICESFIJ" IS 'Importe de cesi�n fijo';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."ICOMFIJ" IS 'Importe de comisi�n fijo';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."ISCONTA" IS 'Importe l�mite pago siniestros al contado';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."PRESERV" IS '% reserva sobre cesi�n - % dep�sito';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."PINTRES" IS '% inter�s sobre reserva - % dep�sito';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."ILIACDE" IS 'Importe l�mite acumulaci�n deducible(XLoss)';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."PPAGOSL" IS '% a pagar por el reasegurador sobre el % que ha asumido';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."CCORRED" IS 'Indicador corredor (Cia que agrupamos)';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."CINTRES" IS 'Codi de Interes de reasseguran�a';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."CINTREF" IS 'C�digo de inter�s referenciado';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."CRESREF" IS 'C�digo de reserva referenciada';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."IRESERV" IS 'Importe fijo de la reserva';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."PTASAJ" IS 'Tassa de ajuste de la reserva';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."FULTLIQ" IS '�ltima liquidaci�n reservas';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."IAGREGA" IS 'Importe Agregado XL';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."IMAXAGR" IS 'Importe Agregado M�ximo XL(L.A.A.)';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."CTIPCOMIS" IS 'Tipo Comisi�n (cvalor=345)';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."PCTCOMIS" IS '% Comisi�n fija / provisional';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."CTRAMOCOMISION" IS 'Tramo comisi�n variable (Tabla CLAUSULAS_REAS)';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."CFRERES" IS 'Código frecuencia liberación/reembolso de Reservas VF:113';
   COMMENT ON COLUMN "AXIS"."CUADROCES"."PCTGASTOS" IS 'Porcentaje de gastos';
  GRANT UPDATE ON "AXIS"."CUADROCES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUADROCES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CUADROCES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CUADROCES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUADROCES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CUADROCES" TO "PROGRAMADORESCSI";
