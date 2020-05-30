--------------------------------------------------------
--  DDL for Table MIG_CTACOASEGURO
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CTACOASEGURO" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"SMOVCOA" NUMBER(8,0), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"CIMPORT" NUMBER(2,0), 
	"CTIPCOA" NUMBER(2,0), 
	"CMOVIMI" NUMBER(2,0), 
	"IMOVIMI" NUMBER, 
	"FMOVIMI" DATE, 
	"FCONTAB" DATE, 
	"CDEBHAB" NUMBER(1,0), 
	"FLIQCIA" DATE, 
	"PCESCOA" NUMBER(5,2), 
	"SIDEPAG" NUMBER(8,0), 
	"NRECIBO" NUMBER, 
	"SMOVREC" NUMBER, 
	"CEMPRES" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"CESTADO" NUMBER(2,0), 
	"CTIPMOV" NUMBER(1,0), 
	"TDESCRI" VARCHAR2(2000 BYTE), 
	"TDOCUME" VARCHAR2(2000 BYTE), 
	"IMOVIMI_MONCON" NUMBER, 
	"FCAMBIO" DATE, 
	"NSINIES" VARCHAR2(14 BYTE), 
	"CCOMPAPR" NUMBER(3,0), 
	"CMONEDA" NUMBER(3,0), 
	"SPAGCOA" NUMBER(10,0), 
	"CTIPGAS" NUMBER(3,0), 
	"FCIERRE" DATE, 
	"NTRAMIT" NUMBER(3,0), 
	"NMOVRES" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"MIG_FK3" VARCHAR2(50 BYTE), 
	"MIG_FK4" VARCHAR2(50 BYTE), 
	"MIG_FK5" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."MIG_PK" IS 'Clave �nica de MIG_COACEDIDO';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."SMOVCOA" IS 'Identificador del movimiento (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."MIG_FK2" IS 'C�digo compa��a (MIG_PK � MIG_COMPANIAS)';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."CIMPORT" IS 'C�digo de importe (4 - Comisi�n gastos, 2 � Gastos, 1 � Prima)';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."CTIPCOA" IS 'Tipo de coaseguro (VF 59)';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."CMOVIMI" IS 'C�digo de movimiento -Tipo de recibo (VALOR FIJO:8)';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."IMOVIMI" IS 'Importe del movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."FMOVIMI" IS 'Fecha movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."FCONTAB" IS 'Fecha contabilizaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."CDEBHAB" IS '1 Debe/ 2 Haber';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."FLIQCIA" IS 'Liquidaci�n mov. a/de la Compa��a';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."PCESCOA" IS 'Porcentaje cedido/aceptado';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."SIDEPAG" IS 'N�mero secuencial del pago';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."NRECIBO" IS 'N�mero de recibo.';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente. (NULO)';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."SPRODUC" IS 'Secuencia del producto';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."CESTADO" IS 'Estado del movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."CTIPMOV" IS 'Tipo de movimiento manual-1 o autom�tica-0';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."TDESCRI" IS 'Descripci�n';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."TDOCUME" IS 'Documento';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."IMOVIMI_MONCON" IS 'Importe del movimiento en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."FCAMBIO" IS 'Fecha empleada para el c�lculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."NSINIES" IS 'Numero Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."CCOMPAPR" IS 'C�digo compa��a propia (CCOMPANI de SEGUROS) � Nulo en este caso';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."CMONEDA" IS 'Moneda Pago (por ser diferente a la de la p�liza)';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."SPAGCOA" IS 'Campo secuencial del pago coaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."CTIPGAS" IS 'Tipo de reserva de gastos (VF 1047)';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."FCIERRE" IS 'Fecha cierre';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."NTRAMIT" IS 'N�mero Tramitaci�n Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."NMOVRES" IS 'N�mero Movimiento Reserva';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."MIG_FK3" IS 'C�digo seguro (MIG_PK � MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."MIG_FK4" IS 'N�mero de recibo (MIG_PK � MIG_RECIBOS)';
   COMMENT ON COLUMN "AXIS"."MIG_CTACOASEGURO"."MIG_FK5" IS 'N�mero de siniestro (MIG_PK � MIG_SINIESTROS)';
  GRANT DELETE ON "AXIS"."MIG_CTACOASEGURO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CTACOASEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTACOASEGURO" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_CTACOASEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTACOASEGURO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CTACOASEGURO" TO "PROGRAMADORESCSI";