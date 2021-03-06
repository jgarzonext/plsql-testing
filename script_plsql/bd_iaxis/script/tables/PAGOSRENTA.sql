--------------------------------------------------------
--  DDL for Table PAGOSRENTA
--------------------------------------------------------

  CREATE TABLE "AXIS"."PAGOSRENTA" 
   (	"SRECREN" NUMBER(8,0), 
	"SSEGURO" NUMBER, 
	"SPERSON" NUMBER(10,0), 
	"FFECEFE" DATE, 
	"FFECPAG" DATE, 
	"FFECANU" DATE, 
	"CMOTANU" NUMBER(2,0), 
	"ISINRET" NUMBER, 
	"PRETENC" NUMBER(5,3), 
	"IRETENC" NUMBER, 
	"ICONRET" NUMBER, 
	"IBASE" NUMBER, 
	"PINTGAR" NUMBER(5,3), 
	"PPARBEN" NUMBER(5,3), 
	"NCTACOR" VARCHAR2(50 BYTE), 
	"NREMESA" NUMBER(10,0), 
	"FREMESA" DATE, 
	"CTIPBAN" NUMBER(3,0), 
	"PROCESO" NUMBER(8,0), 
	"NSINIES" VARCHAR2(14 BYTE), 
	"NTRAMIT" NUMBER(2,0), 
	"CTIPDES" NUMBER(2,0), 
	"ISINRET_MONCON" NUMBER, 
	"IRETENC_MONCON" NUMBER, 
	"ICONRET_MONCON" NUMBER, 
	"IBASE_MONCON" NUMBER, 
	"FCAMBIO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."SRECREN" IS 'Clave del recibo de pago de rentas.Ha pasado de number(6) a number(8) por "MIG_RREBUT_RENDES.numrebut".';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."SSEGURO" IS 'Clave del seguro';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."SPERSON" IS 'Clave del asegurado';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."FFECEFE" IS 'Fecha de efecto';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."FFECPAG" IS 'Fecha de pago';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."FFECANU" IS 'Fecha de anulaci�n del pago';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."CMOTANU" IS 'Motivo de la anulaci�n del pago';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."ISINRET" IS 'Importe bruto de la renta';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."PRETENC" IS 'Porcentaje de retenci�n';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."IRETENC" IS 'Importe de retenci�n';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."ICONRET" IS 'Importe l�quido';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."IBASE" IS 'Importe base';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."PINTGAR" IS '% Inter�s Garantizado';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."PPARBEN" IS '% Participaci�n Beneficios';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."NCTACOR" IS 'Cuenta corriente';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."NREMESA" IS 'N�mero de Remesa';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."FREMESA" IS 'Fecha de Remesa';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."NSINIES" IS 'Siniestro asociado';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."NTRAMIT" IS 'Tr�mite';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."CTIPDES" IS 'C�digo de tipo de destinatario';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."ISINRET_MONCON" IS 'Importe bruto de la renta en la moneda contable';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."IRETENC_MONCON" IS 'Importe de la retenci�n en la moneda contable';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."ICONRET_MONCON" IS 'Importe l�quido en la moneda contable';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."IBASE_MONCON" IS 'Importe base en la moneda contable';
   COMMENT ON COLUMN "AXIS"."PAGOSRENTA"."FCAMBIO" IS 'Fecha empleada para el c�lculo de los contravalores';
  GRANT UPDATE ON "AXIS"."PAGOSRENTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGOSRENTA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PAGOSRENTA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PAGOSRENTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGOSRENTA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PAGOSRENTA" TO "PROGRAMADORESCSI";
