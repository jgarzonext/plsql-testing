--------------------------------------------------------
--  DDL for Table DEVBANREC_CODA
--------------------------------------------------------

  CREATE TABLE "AXIS"."DEVBANREC_CODA" 
   (	"SDEVOLU" NUMBER(8,0), 
	"NNUMLIN" NUMBER(10,0), 
	"CBANCAR1" VARCHAR2(50 BYTE), 
	"TNOMFILE" VARCHAR2(100 BYTE), 
	"FPROCES" DATE, 
	"CUSUARIO" VARCHAR2(50 BYTE), 
	"CBANCO" NUMBER(3,0), 
	"TDESTINO" VARCHAR2(26 BYTE), 
	"FULTSALD" DATE, 
	"TTITULAR" VARCHAR2(35 BYTE), 
	"NNUMFILE" NUMBER(4,0), 
	"CSIGNO" NUMBER(1,0), 
	"IIMPORTE" NUMBER(12,3), 
	"FECMOV" DATE, 
	"FEFECTO" DATE, 
	"CBANCAR2" VARCHAR2(37 BYTE), 
	"TPAGADOR" VARCHAR2(35 BYTE), 
	"TDESCRIP" VARCHAR2(105 BYTE), 
	"NNUMREC" NUMBER(10,0), 
	"CTIPOREG" NUMBER(1,0), 
	"FMOVREC" DATE, 
	"NNUMORD" NUMBER(3,0), 
	"IPAGADO" NUMBER(12,3) DEFAULT 0, 
	"REFERENCIA" VARCHAR2(300 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."SDEVOLU" IS 'Proceso de devolucion';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."NNUMLIN" IS 'numero de linea';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."CBANCAR1" IS 'cuenta destinataria';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."TNOMFILE" IS 'nombre del fichero';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."FPROCES" IS 'fecha del proceso';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."CUSUARIO" IS 'usuario de proceso';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."CBANCO" IS 'id. del banco, debe coincidir con e';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."TDESTINO" IS 'nombre destinatario';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."FULTSALD" IS 'fecha �lt. Movimiento (�ltimo saldo)';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."TTITULAR" IS 'titular cuenta';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."NNUMFILE" IS 'numero fichero';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."CSIGNO" IS 'tipo movimiento (debito/credito)';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."IIMPORTE" IS 'importe';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."FECMOV" IS 'fecha de movimiento';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."FEFECTO" IS 'fecha de carga';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."CBANCAR2" IS 'cuenta de contrapartida';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."TPAGADOR" IS 'nombre del tomador';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."TDESCRIP" IS 'informacion ctd.';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."NNUMREC" IS 'numero de recibo';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."CTIPOREG" IS 'tipo de tratamiento (automatico/manual), detvalores 800015';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."FMOVREC" IS 'fecha de tratamiento';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."IPAGADO" IS 'Importe pagado del registro';
   COMMENT ON COLUMN "AXIS"."DEVBANREC_CODA"."REFERENCIA" IS 'Referencia del registro';
   COMMENT ON TABLE "AXIS"."DEVBANREC_CODA"  IS 'Informaci�n correspondiente a los recibos procesados en los ficheros CODA';
  GRANT UPDATE ON "AXIS"."DEVBANREC_CODA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DEVBANREC_CODA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DEVBANREC_CODA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DEVBANREC_CODA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DEVBANREC_CODA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DEVBANREC_CODA" TO "PROGRAMADORESCSI";
