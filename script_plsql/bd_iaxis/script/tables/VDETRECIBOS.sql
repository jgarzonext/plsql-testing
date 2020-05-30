--------------------------------------------------------
--  DDL for Table VDETRECIBOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."VDETRECIBOS" 
   (	"NRECIBO" NUMBER, 
	"IPRINET" NUMBER, 
	"IRECEXT" NUMBER, 
	"ICONSOR" NUMBER, 
	"IRECCON" NUMBER, 
	"IIPS" NUMBER, 
	"IDGS" NUMBER, 
	"IARBITR" NUMBER, 
	"IFNG" NUMBER, 
	"IRECFRA" NUMBER, 
	"IDTOTEC" NUMBER, 
	"IDTOCOM" NUMBER, 
	"ICOMBRU" NUMBER, 
	"ICOMRET" NUMBER, 
	"IDTOOM" NUMBER, 
	"IPRIDEV" NUMBER, 
	"ITOTPRI" NUMBER, 
	"ITOTDTO" NUMBER, 
	"ITOTCON" NUMBER, 
	"ITOTIMP" NUMBER, 
	"ITOTALR" NUMBER, 
	"IDERREG" NUMBER, 
	"ITOTREC" NUMBER, 
	"ICOMDEV" NUMBER, 
	"IRETDEV" NUMBER, 
	"ICEDNET" NUMBER, 
	"ICEDREX" NUMBER, 
	"ICEDCON" NUMBER, 
	"ICEDRCO" NUMBER, 
	"ICEDIPS" NUMBER, 
	"ICEDDGS" NUMBER, 
	"ICEDARB" NUMBER, 
	"ICEDFNG" NUMBER, 
	"ICEDRFR" NUMBER, 
	"ICEDDTE" NUMBER, 
	"ICEDDCO" NUMBER, 
	"ICEDCBR" NUMBER, 
	"ICEDCRT" NUMBER, 
	"ICEDDOM" NUMBER, 
	"ICEDPDV" NUMBER, 
	"ICEDREG" NUMBER, 
	"ICEDCDV" NUMBER, 
	"ICEDRDV" NUMBER, 
	"IT1PRI" NUMBER, 
	"IT1DTO" NUMBER, 
	"IT1CON" NUMBER, 
	"IT1IMP" NUMBER, 
	"IT1REC" NUMBER, 
	"IT1TOTR" NUMBER, 
	"IT2PRI" NUMBER, 
	"IT2DTO" NUMBER, 
	"IT2CON" NUMBER, 
	"IT2IMP" NUMBER, 
	"IT2REC" NUMBER, 
	"IT2TOTR" NUMBER, 
	"ICOMCIA" NUMBER, 
	"ICOMBRUI" NUMBER, 
	"ICOMRETI" NUMBER, 
	"ICOMDEVI" NUMBER, 
	"ICOMDRTI" NUMBER, 
	"ICOMBRUC" NUMBER, 
	"ICOMRETC" NUMBER, 
	"ICOMDEVC" NUMBER, 
	"ICOMDRTC" NUMBER, 
	"IOCOREC" NUMBER, 
	"IIMP_1" NUMBER, 
	"IIMP_2" NUMBER, 
	"IIMP_3" NUMBER, 
	"IIMP_4" NUMBER, 
	"ICONVOLEODUCTO" NUMBER, 
	"IIMP_5" NUMBER, 
	"IIMP_6" NUMBER, 
	"IIMP_7" NUMBER, 
	"IIMP_8" NUMBER, 
	"IIMP_9" NUMBER, 
	"IIMP_10" NUMBER, 
	"IIMP_11" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS"  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."NRECIBO" IS 'N�mero de recibo.';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IPRINET" IS 'Prima Neta';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IRECEXT" IS 'Recergo Externo';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."ICONSOR" IS 'Consorcio';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IRECCON" IS 'Recargo Consorcio';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIPS" IS 'Impuesto IPS';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IDGS" IS 'Impuesto CLEA/DGS';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IARBITR" IS 'Arbitrios (bomberos, ...)';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IFNG" IS 'Impuesto FNG';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IRECFRA" IS 'Recargo Fraccionamiento';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IDTOTEC" IS 'Dto. T�cnico';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IDTOCOM" IS 'Dto. Comercial';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."ICOMBRU" IS 'Comisi�n bruta';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."ICOMRET" IS 'Retenci�n s/Comisi�n';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IDTOOM" IS 'Dto. Orden Ministerial';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IPRIDEV" IS 'Prima Devengada';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."ITOTPRI" IS 'Total Prima Neta';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."ITOTDTO" IS 'Total Descuentos';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."ITOTCON" IS 'Total Consorcio';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."ITOTIMP" IS 'Total Impuestos y Arbitrios';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."ITOTALR" IS 'TOTAL RECIBO';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."ICOMCIA" IS 'Import de la comissi� de la compa��a';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IOCOREC" IS 'Importe otros conceptos recargo';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIMP_1" IS 'Impuesto relacionado con el concepto 32';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIMP_2" IS 'Impuesto relacionado con el concepto 40';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIMP_3" IS 'Impuesto relacionado con el concepto 41';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIMP_4" IS 'Impuesto relacionado con el concepto 42';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."ICONVOLEODUCTO" IS 'Importe sobrecomisi�n convenio';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIMP_5" IS 'Importe IVA sobre comisi�n - cedido';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIMP_6" IS 'Importe Retenci�n en la fuente sobre comisi�n - cedido';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIMP_7" IS 'Importe Retenci�n por ICA sobre comisi�n - cedido';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIMP_8" IS 'Retenci�n por IVA sobre comisi�n - cedido';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIMP_9" IS 'Retenci�n en la fuente sobre comisi�n';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIMP_10" IS 'Retenci�n por IVA sobre comisi�n';
   COMMENT ON COLUMN "AXIS"."VDETRECIBOS"."IIMP_11" IS 'Retenci�n por ICA sobre comisi�n';
  GRANT UPDATE ON "AXIS"."VDETRECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VDETRECIBOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VDETRECIBOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VDETRECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VDETRECIBOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VDETRECIBOS" TO "PROGRAMADORESCSI";