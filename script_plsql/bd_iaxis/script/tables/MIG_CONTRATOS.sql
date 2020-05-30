--------------------------------------------------------
--  DDL for Table MIG_CONTRATOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CONTRATOS" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NVERSION" NUMBER, 
	"SCONTRA" NUMBER, 
	"NVERSIO" NUMBER(2,0), 
	"NPRIORI" NUMBER(2,0), 
	"FCONINI" DATE, 
	"NCONREL" NUMBER(6,0), 
	"FCONFIN" DATE, 
	"IAUTORI" NUMBER, 
	"IRETENC" NUMBER, 
	"IMINCES" NUMBER, 
	"ICAPACI" NUMBER, 
	"IPRIOXL" NUMBER, 
	"PPRIOSL" NUMBER, 
	"TCONTRA" VARCHAR2(50 BYTE), 
	"TOBSERV" VARCHAR2(80 BYTE), 
	"PCEDIDO" NUMBER(5,2), 
	"PRIESGOS" NUMBER(5,2), 
	"PDESCUENTO" NUMBER(5,2), 
	"PGASTOS" NUMBER(5,2), 
	"PPARTBENE" NUMBER(5,2), 
	"CREAFAC" NUMBER(1,0), 
	"PCESEXT" NUMBER(5,2), 
	"CGARREL" NUMBER(1,0), 
	"CFRECUL" NUMBER(2,0), 
	"SCONQP" NUMBER(6,0), 
	"NVERQP" NUMBER(2,0), 
	"IAGREGA" NUMBER, 
	"IMAXAGR" NUMBER, 
	"PDEPOSITO" NUMBER(17,0), 
	"CDETCES" NUMBER(1,0), 
	"CLAVECBR" NUMBER(6,0), 
	"CERCARTERA" NUMBER(2,0), 
	"NANYOSLOSS" NUMBER(2,0), 
	"CBASEXL" NUMBER(1,0), 
	"CLOSSCORRIDOR" NUMBER(5,0), 
	"CCAPPEDRATIO" NUMBER(5,0), 
	"SCONTRAPROT" NUMBER(6,0), 
	"CESTADO" NUMBER(2,0), 
	"NVERSIOPROT" NUMBER(2,0), 
	"IPRIMAESPERADAS" NUMBER(17,0), 
	"CTPREEST" NUMBER(1,0), 
	"PCOMEXT" NUMBER, 
	"FCONFINAUX" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."MIG_PK" IS 'Clave �nica de MIG_CONTRATOS';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."MIG_FK" IS 'Clave externa de MIG_CODICONTRATOS';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."NVERSION" IS 'N�mero versi�n contrato reaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."SCONTRA" IS 'C�digo contrato (Cero (Nulo 0) en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."NVERSIO" IS 'N�mero versi�n contrato reas.';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."NPRIORI" IS 'Porcentaje local asumible';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."FCONINI" IS 'Fecha inicial de versi�n';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."NCONREL" IS 'Contrato relacionado';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."FCONFIN" IS 'Fecha final de versi�n (Null para el contrato vigente)';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."IAUTORI" IS 'Importe con autorizaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."IRETENC" IS 'Importe pleno neto de retenci�n';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."IMINCES" IS 'Imp. m�nimo cesi�n (Pleno Neto Retenci�n)';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."ICAPACI" IS 'Importe capacidad m�xima';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."IPRIOXL" IS 'Porcentaje intereses sobre reserva';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."PPRIOSL" IS 'Prioridad SL';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."TCONTRA" IS 'Descripci�n contrato';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."TOBSERV" IS 'Observaciones varias';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."PRIESGOS" IS 'Porcentaje de riesgos agravados';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."PDESCUENTO" IS 'Porcentaje de descuentos de selecci�n';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."PGASTOS" IS 'Porcentaje de gastos';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."PPARTBENE" IS 'Porcentaje de participaci�n en beneficios';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."CREAFAC" IS 'C�digo de facultativo';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."PCESEXT" IS 'Porcentaje de cesi�n sobre la extra prima';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."CGARREL" IS 'Te garanties relacionades';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."CFRECUL" IS 'Frecuencia de liquidaci�n con la compa��a';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."SCONQP" IS 'Contrato CP relacionado';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."NVERQP" IS 'Versi�n CP relacionado';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."IAGREGA" IS 'Importe Agregado XL';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."IMAXAGR" IS 'Importe Agregado M�ximo XL (L.A.A.)';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."PDEPOSITO" IS 'Porcentaje deposito reaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."CDETCES" IS 'Indica si se graba o no a reasegemi';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."CLAVECBR" IS 'F�rmula para el CBR';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."CERCARTERA" IS 'Tipo E/R cartera (cvalor=340)';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."NANYOSLOSS" IS 'A�os Loss-Corridos (Si Null, arrastre para siempre)';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."CBASEXL" IS 'Base para el c�lculo XL (cvalor=341)';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."CLOSSCORRIDOR" IS 'C�digo cl�usula Loss Corridor (Tabla CLAUSULAS_REAS)';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."CCAPPEDRATIO" IS 'C�digo cl�usula Capped Ratio (Tabla CLAUSULAS_REAS)';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."SCONTRAPROT" IS 'Contrato XL protecci�n';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."CESTADO" IS 'Estado de la versi�n';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."NVERSIOPROT" IS 'Versi�n del Contrato XL protecci�n';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."CTPREEST" IS 'Tipo de c�lculo de prima de restablecimiento {1- Pro-rata monto, 2- Pro-rata tiempo/monto}';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."PCOMEXT" IS 'Porcentaje comisi�n de la extra prima';
   COMMENT ON COLUMN "AXIS"."MIG_CONTRATOS"."FCONFINAUX" IS 'Fecha final de versi�n aux. (Si FCONFIN = Null, la FCONFIN debe ir aqu�)';
  GRANT UPDATE ON "AXIS"."MIG_CONTRATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CONTRATOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CONTRATOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_CONTRATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CONTRATOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CONTRATOS" TO "PROGRAMADORESCSI";