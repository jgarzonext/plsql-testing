--------------------------------------------------------
--  DDL for Table MIG_SIN_TRAMITA_PAGO_GAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SIDEPAG" NUMBER(8,0), 
	"CTIPRES" NUMBER(2,0), 
	"NMOVRES" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"FPERINI" DATE, 
	"FPERFIN" DATE, 
	"CMONRES" VARCHAR2(3 BYTE), 
	"ISINRET" NUMBER, 
	"IRETENC" NUMBER, 
	"IIVA" NUMBER, 
	"ISUPLID" NUMBER, 
	"IFRANQ" NUMBER, 
	"IRESRCM" NUMBER, 
	"IRESRED" NUMBER, 
	"CMONPAG" VARCHAR2(3 BYTE), 
	"ISINRETPAG" NUMBER, 
	"IIVAPAG" NUMBER, 
	"ISUPLIDPAG" NUMBER, 
	"IRETENCPAG" NUMBER, 
	"IFRANQPAG" NUMBER, 
	"IRESRCMPAG" NUMBER, 
	"IRESREDPAG" NUMBER, 
	"FCAMBIO" DATE, 
	"PRETENC" NUMBER(6,3), 
	"PIVA" NUMBER(6,3), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"CCONPAG" NUMBER, 
	"NORDEN" NUMBER(4,0), 
	"IICA" NUMBER, 
	"IRETEIVA" NUMBER, 
	"IRETEICA" NUMBER, 
	"PICA" NUMBER(6,3), 
	"PRETEIVA" NUMBER, 
	"PRETEICA" NUMBER, 
	"CAPLFRA" NUMBER(1,0), 
	"IICAPAG" NUMBER, 
	"IRETEIVAPAG" NUMBER, 
	"IRETEICAPAG" NUMBER, 
	"IDRES" NUMBER, 
	"CRESTARESERVA" NUMBER(1,0), 
	"IOTROSGAS" NUMBER, 
	"IOTROSGASPAG" NUMBER, 
	"IBASEIPOC" NUMBER, 
	"IBASEIPOCPAG" NUMBER, 
	"PIPOCONSUMO" NUMBER(6,3), 
	"IIPOCONSUMO" NUMBER, 
	"IIPOCONSUMOPAG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."MIG_PK" IS 'Clave �nica';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."MIG_FK" IS 'Clave externa';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."SIDEPAG" IS 'Secuencia Identificador Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."CTIPRES" IS 'C�digo Tipo Reserva';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."NMOVRES" IS 'N�mero Movimiento Reserva';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."FPERINI" IS 'Fecha Periodo Inicio';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."FPERFIN" IS 'Fecha Periodo Fin';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."CMONRES" IS 'C�digo Moneda Reserva';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."ISINRET" IS 'Importe Sin Retenci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IRETENC" IS 'Importe Retenci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IIVA" IS 'Importe IVA';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."ISUPLID" IS 'Importe Suplido';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IFRANQ" IS 'Importe Franquicia Pagada';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IRESRCM" IS 'Importe Rendimiento (Vida)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IRESRED" IS 'Importe Rendimiento Reducido (Vida)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."CMONPAG" IS 'C�digo Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IIVAPAG" IS 'Importe IVA Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."ISUPLIDPAG" IS 'Importe Suplido Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IRETENCPAG" IS 'Importe Retenci�n Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IFRANQPAG" IS 'Importe Franquicia Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IRESRCMPAG" IS 'Importe Rendimiento (Vida) Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IRESREDPAG" IS 'Importe Rendimiento Reducido (Vida) Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."FCAMBIO" IS 'Fecha de cambio';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."PRETENC" IS 'Porcentaje Retenci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."PIVA" IS 'Porcentaje IVA';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."CCONPAG" IS 'C�digo de concepto';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."NORDEN" IS 'Orden del detalle de pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IICA" IS 'Importe ICA';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IRETEIVA" IS 'Importe de retenci�n sobre el IVA';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IRETEICA" IS 'Importe de retenci�n sobre el ICA';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."PICA" IS 'Porcentaje ICA';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."PRETEIVA" IS 'Porcentaje de retenci�n sobre el IVA';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."PRETEICA" IS 'Porcentaje de retenci�n sobre el ICA';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."CAPLFRA" IS 'Aplica franquicia 0=No, 1=S�';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IICAPAG" IS 'Importe ICA Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IRETEIVAPAG" IS 'Importe de retenci�n sobre el IVA Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IRETEICAPAG" IS 'Importe de retenci�n sobre el ICA Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IDRES" IS 'Identificador de reserva';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."CRESTARESERVA" IS 'Resta reserva? 0 - no 1 -Si. Default 0';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IOTROSGAS" IS 'Importe otros gastos';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IOTROSGASPAG" IS 'Importe otros gastos Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IBASEIPOC" IS 'Importe base impuesto Ipoconsumo';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IBASEIPOCPAG" IS 'Importe base impuesto Ipoconsumo Moneda Pago';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."PIPOCONSUMO" IS 'Porcentaje  impuesto Ipoconsumo';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IIPOCONSUMO" IS 'Importe Impuesto Ipoconsumo';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"."IIPOCONSUMOPAG" IS 'Importe Impuesto Ipoconsumo Moneda Pago';
   COMMENT ON TABLE "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR"  IS 'Tabla para la migraci�n de mig_sin_tramita_pago.';
  GRANT UPDATE ON "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_PAGO_GAR" TO "PROGRAMADORESCSI";
