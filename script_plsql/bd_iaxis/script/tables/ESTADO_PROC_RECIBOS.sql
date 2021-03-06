--------------------------------------------------------
--  DDL for Table ESTADO_PROC_RECIBOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTADO_PROC_RECIBOS" 
   (	"CEMPRES" NUMBER(4,0), 
	"CTIPOPAGO" NUMBER(2,0), 
	"NPAGO" NUMBER(20,0), 
	"NMOV" NUMBER(8,0), 
	"SPROCES" NUMBER, 
	"CTIPOMOV" NUMBER(1,0), 
	"CESTADO" NUMBER(1,0), 
	"FEC_ALTA" DATE, 
	"USU_ALTA" VARCHAR2(20 BYTE), 
	"FEC_PROCESO" DATE, 
	"USU_PROC" VARCHAR2(20 BYTE), 
	"TERROR" VARCHAR2(2000 BYTE), 
	"SINTERF" NUMBER, 
	"SSEGURO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."CTIPOPAGO" IS 'Tipo recibo: 1 pagos, 2 y 3 rentas, 4 recibos';
   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."NPAGO" IS 'N�mero recibo/pago';
   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."NMOV" IS 'N�mero de movimiento del recibo/pago';
   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."CTIPOMOV" IS 'Tipo mov.: 1 Emisi�n/ 2 Anulaci�n';
   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."CESTADO" IS 'Estado: 0 Pdte.Procesar/ 1 Procesado/ 2 Error';
   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."FEC_ALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."USU_ALTA" IS 'Usuario Alta';
   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."FEC_PROCESO" IS 'Fecha modificaci�n';
   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."USU_PROC" IS 'Usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."TERROR" IS 'Texto error';
   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."SINTERF" IS 'Secuencia para la interfaz';
   COMMENT ON COLUMN "AXIS"."ESTADO_PROC_RECIBOS"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente';
   COMMENT ON TABLE "AXIS"."ESTADO_PROC_RECIBOS"  IS 'Estado env�o a SAP de recibos de procesos masivos';
  GRANT UPDATE ON "AXIS"."ESTADO_PROC_RECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTADO_PROC_RECIBOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTADO_PROC_RECIBOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTADO_PROC_RECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTADO_PROC_RECIBOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTADO_PROC_RECIBOS" TO "PROGRAMADORESCSI";
