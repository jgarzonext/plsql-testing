--------------------------------------------------------
--  DDL for Table MIG_CUADROCES
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CUADROCES" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"NVERSIO" NUMBER(2,0), 
	"SCONTRA" NUMBER(6,0), 
	"CTRAMO" NUMBER(2,0), 
	"CCOMREA" NUMBER(2,0), 
	"PCESION" NUMBER(8,0), 
	"NPLENOS" NUMBER(5,0), 
	"ICESFIJ" NUMBER, 
	"ICOMFIJ" NUMBER, 
	"ISCONTA" NUMBER, 
	"PRESERV" NUMBER(5,2), 
	"PINTRES" NUMBER(7,2), 
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
	"PCTGASTOS" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."NCARGA" IS 'Número de carga';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."CESTMIG" IS 'Estado del registro valor inicial 1';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."MIG_PK" IS 'Clave única de MIG_CUADROCES';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."MIG_FK" IS 'Clave externa de MIG_CONTRATOS';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."MIG_FK2" IS 'Clave externa para MIG_COMPANIAS';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."NVERSIO" IS 'Número versión contrato reas. (0 en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."SCONTRA" IS 'Secuencia de contrato (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."CTRAMO" IS 'Código del tramo';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."CCOMREA" IS 'Código de comisión en contratos de reaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."PCESION" IS 'Porcentaje de cesión';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."NPLENOS" IS 'Nº de plenos';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."ICESFIJ" IS 'Importe de cesión fijo';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."ICOMFIJ" IS 'Importe de comisión fijo';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."ISCONTA" IS 'Importe límite pago siniestros al contado';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."PRESERV" IS '% reserva sobre cesión - % depósito';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."PINTRES" IS '% interés sobre reserva - % depósito';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."ILIACDE" IS 'Importe límite acumulación deducible(XLoss)';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."PPAGOSL" IS '% a pagar por el reasegurador sobre el % que ha asumido';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."CCORRED" IS 'Indicador corredor (Cia que agrupamos)';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."CINTRES" IS 'Codi de Interes de reassegurança';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."CINTREF" IS 'Código de interés referenciado';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."CRESREF" IS 'Código de reserva referenciada';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."IRESERV" IS 'Importe fijo de la reserva';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."PTASAJ" IS 'Tasa de ajuste de la reserva';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."FULTLIQ" IS 'Última liquidación reservas';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."IAGREGA" IS 'Importe Agregado XL';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."IMAXAGR" IS 'Importe Agregado Máximo XL(L.A.A.)';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."CTIPCOMIS" IS 'Tipo Comisión (cvalor=345)';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."PCTCOMIS" IS '% Comisión fija / provisional';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."CTRAMOCOMISION" IS 'Tramo comisión variable (Tabla CLAUSULAS_REAS)';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."CFRERES" IS 'Código frecuencia liberación/reembolso de Reservas VF:113';
   COMMENT ON COLUMN "AXIS"."MIG_CUADROCES"."PCTGASTOS" IS 'Porcentaje de gastos por Cia y Contrato';
   COMMENT ON TABLE "AXIS"."MIG_CUADROCES"  IS 'Ficheros con la información de las cesiones del contrato de reaseguro:';
  GRANT DELETE ON "AXIS"."MIG_CUADROCES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CUADROCES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CUADROCES" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_CUADROCES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CUADROCES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CUADROCES" TO "PROGRAMADORESCSI";
