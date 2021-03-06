--------------------------------------------------------
--  DDL for Table CONTRATOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONTRATOS" 
   (	"SCONTRA" NUMBER(6,0), 
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
	"PDEPOSITO" NUMBER(17,15), 
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
	"IPRIMAESPERADAS" NUMBER(17,5), 
	"CTPREEST" NUMBER(1,0) DEFAULT 1, 
	"PCOMEXT" NUMBER, 
	"FCONFINAUX" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CONTRATOS"."NVERSIO" IS 'N�mero versi�n contrato reas.';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."NPRIORI" IS 'Porcentaje local asumible';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."FCONINI" IS 'Fecha inicial de versi�n';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."NCONREL" IS 'Contrato relacionado';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."FCONFIN" IS 'Fecha final de versi�n';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."IAUTORI" IS 'Importe con autorizaci�n';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."IRETENC" IS 'Importe pleno neto de retenci�n';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."IMINCES" IS 'Imp. m�nimo cesi�n (Pleno Neto Retenci�n)';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."ICAPACI" IS 'Importe capacidad m�xima';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."IPRIOXL" IS 'Porcentaje intereses sobre reserva';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."PPRIOSL" IS 'Prioridad SL';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."TCONTRA" IS 'Descripci�n contrato';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."TOBSERV" IS 'Observaciones varias';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."PRIESGOS" IS 'Porcentaje de riesgos agrabados';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."PDESCUENTO" IS 'Porcentaje de descuentos de selecci�n';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."PGASTOS" IS 'Porcentaje de gastos';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."PPARTBENE" IS 'Porcentaje de participaci�n en beneficios';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."CREAFAC" IS 'C�digo de facultativo';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."PCESEXT" IS 'Porcentaje de cesi�n sobre la extraprima';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."CGARREL" IS 'Te garanties relacionades';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."CFRECUL" IS 'Frecuencia de liquidaci�n con la compa��a';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."SCONQP" IS 'Contrato CP relacionado';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."NVERQP" IS 'Versi�n CP relacionado';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."IAGREGA" IS 'Importe Agregado XL';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."IMAXAGR" IS 'Importe Agregado M�ximo XL (L.A.A.)';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."PDEPOSITO" IS 'Porcentaje deposito reaseguro';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."CDETCES" IS 'Indica si se graba o no a reasegemi';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."CLAVECBR" IS 'F�rmula para el CBR';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."CERCARTERA" IS 'Tipo E/R cartera (cvalor=340)';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."NANYOSLOSS" IS 'A�os Loss-Corridos';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."CBASEXL" IS 'Base para el c�lculo XL (cvalor=341)';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."CLOSSCORRIDOR" IS 'C�digo cl�usula Loss Corridor (Tabla CLAUSULAS_REAS)';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."CCAPPEDRATIO" IS 'C�digo cl�usula Capped Ratio (Tabla CLAUSULAS_REAS)';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."SCONTRAPROT" IS 'Contrato XL protecci�n';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."CESTADO" IS 'Estado de la versi�n';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."NVERSIOPROT" IS 'Versi�n del Contrato XL protecci�n';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."CTPREEST" IS 'Tipo de calculo de prima de reestablecimiento {1- Pro-rata monto, 2- Pro-rata tiempo/monto}';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."PCOMEXT" IS 'Porcentaje comisi�n de la extra prima';
   COMMENT ON COLUMN "AXIS"."CONTRATOS"."FCONFINAUX" IS 'Fecha auxiliar de final de versi�n (solo para efectos visuales)';
  GRANT UPDATE ON "AXIS"."CONTRATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTRATOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONTRATOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONTRATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTRATOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONTRATOS" TO "PROGRAMADORESCSI";
