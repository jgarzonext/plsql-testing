--------------------------------------------------------
--  DDL for Table HISPAGOSRENTA
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISPAGOSRENTA" 
   (	"SRECREN" NUMBER(8,0), 
	"NUMSEQ" NUMBER(8,0), 
	"FECHA" DATE, 
	"USUARIO" VARCHAR2(10 BYTE), 
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
	"NREMESA" NUMBER(4,0), 
	"FREMESA" DATE, 
	"PROCESO" NUMBER(8,0), 
	"NSINIES" VARCHAR2(14 BYTE), 
	"NTRAMIT" NUMBER(2,0), 
	"CTIPDES" NUMBER(2,0), 
	"CTIPBAN" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."SRECREN" IS 'Clave del recibo de pago de rentas.Ha pasado de number(6) a number(8) por "MIG_RREBUT_RENDES.numrebut".';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."NUMSEQ" IS 'Usuario que cambi� esta configuraci�n';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."FECHA" IS 'Fecha a la que se cambi� esta configuraci�n';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."SSEGURO" IS 'Clave del seguro';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."SPERSON" IS 'Clave del asegurado';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."FFECEFE" IS 'Fecha de efecto';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."FFECPAG" IS 'Fecha de pago';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."FFECANU" IS 'Fecha de anulaci�n del pago';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."CMOTANU" IS 'Motivo de la anulaci�n del pago';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."ISINRET" IS 'Importe bruto de la renta';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."PRETENC" IS 'Porcentaje de retenci�n';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."IRETENC" IS 'Importe de retenci�n';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."ICONRET" IS 'Importe l�quido';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."IBASE" IS 'Importe base';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."PINTGAR" IS '% Inter�s Garantizado';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."PPARBEN" IS '% Participaci�n Beneficios';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."NCTACOR" IS 'Cuenta corriente';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."NREMESA" IS 'N�mero de Remesa';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."FREMESA" IS 'Fecha de Remesa';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."NSINIES" IS 'Siniestro asociado';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."NTRAMIT" IS 'Tr�mite';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."CTIPDES" IS 'C�digo de tipo de destinatario';
   COMMENT ON COLUMN "AXIS"."HISPAGOSRENTA"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
  GRANT UPDATE ON "AXIS"."HISPAGOSRENTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPAGOSRENTA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISPAGOSRENTA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISPAGOSRENTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPAGOSRENTA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISPAGOSRENTA" TO "PROGRAMADORESCSI";
