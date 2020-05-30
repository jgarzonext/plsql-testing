--------------------------------------------------------
--  DDL for Table CAJA_DATMEDIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."CAJA_DATMEDIO" 
   (	"SEQCAJA" NUMBER(10,0), 
	"NCHEQUE" VARCHAR2(20 BYTE), 
	"CESTCHQ" NUMBER(4,0), 
	"FESTCHQ" DATE, 
	"CBANCO" NUMBER(4,0), 
	"CCC" VARCHAR2(20 BYTE), 
	"CTIPTAR" NUMBER(4,0), 
	"NTARGET" VARCHAR2(20 BYTE), 
	"FCADTAR" VARCHAR2(4 BYTE), 
	"NNUMLIN" NUMBER(10,0), 
	"CMEDMOV" NUMBER(4,0), 
	"IMOVIMI" NUMBER, 
	"IIMPINS" NUMBER, 
	"NREFDEPOSITO" NUMBER(15,0), 
	"CAUTORIZA" NUMBER(10,0), 
	"NULTDIGTAR" NUMBER(4,0), 
	"NCUOTAS" NUMBER(4,0), 
	"CCOMERCIO" NUMBER(10,0), 
	"DSBANCO" VARCHAR2(25 BYTE), 
	"CTIPCHE" NUMBER, 
	"CTIPCHED" NUMBER, 
	"CRAZON" NUMBER, 
	"DSMOP" VARCHAR2(125 BYTE), 
	"FAUTORI" DATE, 
	"CESTADO" NUMBER, 
	"SSEGURO" NUMBER, 
	"SSEGURO_D" NUMBER, 
	"SEQCAJA_O" NUMBER, 
	"TDESCCHK" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."SEQCAJA" IS 'Clave movto de caja';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."NCHEQUE" IS 'Numero de cheque';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."CESTCHQ" IS 'Estado del Cheque. cvalor=483';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."FESTCHQ" IS 'Fecha de estado del cheque';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."CBANCO" IS 'Banco de origen cheque o transfer';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."CCC" IS 'Cuenta a la que se va a realizar el cargo/abono';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."CTIPTAR" IS 'Tipo de Targeta Credito. Visa/masterCard/etc. cvalor=484';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."NTARGET" IS 'Nro de targeta Credito';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."FCADTAR" IS 'Fecha caducidad targeta';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."NNUMLIN" IS 'Nro movimiento';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."CMEDMOV" IS 'Forma Pago del movimiento. cvalor=481';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."IMOVIMI" IS 'Importe de la operaci�n';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."IIMPINS" IS 'Importe de moneda instalaci�n';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."NREFDEPOSITO" IS 'N�mero de referencia del dep�sito bancario';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."CAUTORIZA" IS 'C�digo autorizaci�n (pago Tarjeta POS/Internet)';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."NULTDIGTAR" IS 'Cuatro �ltimos d�gitos tarjeta';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."NCUOTAS" IS 'N�mero de cuotas';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."CCOMERCIO" IS 'C�digo de comercio';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."DSBANCO" IS 'Banco que no esta en el listado- desconocido';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."CTIPCHE" IS 'Tipos de cheque (detvalores.cvalor= 1902)';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."CTIPCHED" IS 'Tipos de cheque draft';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."CRAZON" IS 'Tipos de razones (detvalores.cvalor= 1903)';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."DSMOP" IS 'Texto libre';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."FAUTORI" IS 'Fecha en que se autoriza o se deniega el pago de un cheque a un cliente';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."CESTADO" IS 'Estado Reembolso en CajaMov';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."SSEGURO" IS 'Numero de seguro para asociacion de reembolosos';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."SSEGURO_D" IS 'Numero de seguro para asociacion destino de dineros';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."SEQCAJA_O" IS 'Secuencia de caja origen de reembolso';
   COMMENT ON COLUMN "AXIS"."CAJA_DATMEDIO"."TDESCCHK" IS 'Tipo desc del cheque';
   COMMENT ON TABLE "AXIS"."CAJA_DATMEDIO"  IS 'Seg�n Medio. Detalle del medio de pago caja';
  GRANT UPDATE ON "AXIS"."CAJA_DATMEDIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAJA_DATMEDIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CAJA_DATMEDIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CAJA_DATMEDIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAJA_DATMEDIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CAJA_DATMEDIO" TO "PROGRAMADORESCSI";
