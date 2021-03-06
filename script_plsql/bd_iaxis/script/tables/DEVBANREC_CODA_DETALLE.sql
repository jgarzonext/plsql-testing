--------------------------------------------------------
--  DDL for Table DEVBANREC_CODA_DETALLE
--------------------------------------------------------

  CREATE TABLE "AXIS"."DEVBANREC_CODA_DETALLE" 
   (	"SDEVOLU" NUMBER(8,0), 
	"NNUMLIN" NUMBER(10,0), 
	"CBANCAR1" VARCHAR2(50 BYTE), 
	"NNUMORD" NUMBER(3,0), 
	"FULTSALD" DATE, 
	"NORDEN" NUMBER(10,0) DEFAULT 1, 
	"CSIGNO" NUMBER(1,0), 
	"NRECIBO" NUMBER, 
	"ICODA" NUMBER(12,3), 
	"IPAGADO" NUMBER(12,3) DEFAULT 0, 
	"IPENDIENTE" NUMBER(12,3) DEFAULT 0, 
	"FMOVREC" DATE, 
	"CTIPOREG" NUMBER(5,0), 
	"CUSUARIO" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."SDEVOLU" IS 'Proceso de devolucion';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."NNUMLIN" IS 'numero de linea';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."CBANCAR1" IS 'cuenta destinataria';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."NNUMORD" IS 'Orden que pertenece el registro';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."FULTSALD" IS 'fecha �lt. Movimiento (�ltimo saldo)';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."NORDEN" IS 'Numeraci�n de movimientos del registro coda';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."CSIGNO" IS 'tipo movimiento (debito/credito)';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."NRECIBO" IS 'numero de recibo';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."ICODA" IS 'Importe  CODA';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."IPAGADO" IS 'Importe pagado del registro';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."IPENDIENTE" IS 'Importe pendiente del registro CODA';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."FMOVREC" IS 'fecha de movimiento';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."CTIPOREG" IS 'tipo de tratamiento (automatico/manual), detvalores 800015';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA_DETALLE"."CUSUARIO" IS 'usuario de proceso';
   COMMENT ON TABLE "AXIS"."DEVBANREC_CODA_DETALLE"  IS 'Detalle de la informaci�n correspondiente a los recibos procesados en los ficheros CODA';
  GRANT UPDATE ON "AXIS"."DEVBANREC_CODA_DETALLE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DEVBANREC_CODA_DETALLE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DEVBANREC_CODA_DETALLE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DEVBANREC_CODA_DETALLE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DEVBANREC_CODA_DETALLE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DEVBANREC_CODA_DETALLE" TO "PROGRAMADORESCSI";
