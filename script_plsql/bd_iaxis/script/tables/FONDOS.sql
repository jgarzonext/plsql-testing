--------------------------------------------------------
--  DDL for Table FONDOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."FONDOS" 
   (	"CCODFON" NUMBER(3,0), 
	"TFONABV" VARCHAR2(50 BYTE), 
	"TFONCMP" VARCHAR2(100 BYTE), 
	"CCLSFON" NUMBER(2,0), 
	"CTIPFON" NUMBER(2,0), 
	"CDEPRIA" NUMBER(3,0), 
	"CGESTRA" NUMBER(3,0), 
	"CPROPIO" NUMBER(3,0), 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"IVALINI" NUMBER, 
	"IUNIINI" NUMBER(15,6), 
	"NPARINI" NUMBER(15,6), 
	"NPARACT" NUMBER(15,6), 
	"IUNIACT" NUMBER, 
	"IVALACT" NUMBER, 
	"FULTVAL" DATE, 
	"NPARASI" NUMBER(15,6), 
	"CEMPRES" NUMBER(2,0), 
	"CMONEDA" NUMBER, 
	"CMANAGER" NUMBER, 
	"NMAXUNI" NUMBER, 
	"IGASTTRAN" NUMBER, 
	"IUNIACTCMP" NUMBER, 
	"IUNIACTVTASHW" NUMBER, 
	"IUNIACTCMPSHW" NUMBER, 
	"CMODABO" NUMBER, 
	"NDAYAFT" NUMBER, 
	"NPERIODBON" NUMBER, 
	"CDIVIDEND" NUMBER(1,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" 
   CACHE ;

   COMMENT ON COLUMN "AXIS"."FONDOS"."CCLSFON" IS 'Clase de fondo de inversi�n. (Valor fijo = 899)';
   COMMENT ON COLUMN "AXIS"."FONDOS"."CTIPFON" IS 'Tipo de fondo de inversi�n. (Valor fijo = 898)';
   COMMENT ON COLUMN "AXIS"."FONDOS"."CMONEDA" IS 'Moneda en que se gestiona el fondo';
   COMMENT ON COLUMN "AXIS"."FONDOS"."CMANAGER" IS 'Nuevo detvalores donde se especifique los posibles managers de fondos';
   COMMENT ON COLUMN "AXIS"."FONDOS"."NMAXUNI" IS 'N�mero m�ximo de unidades del fondo';
   COMMENT ON COLUMN "AXIS"."FONDOS"."IGASTTRAN" IS 'Gastos por cada transacci�n del fondo';
   COMMENT ON COLUMN "AXIS"."FONDOS"."IUNIACTCMP" IS 'Valor de compra';
   COMMENT ON COLUMN "AXIS"."FONDOS"."IUNIACTVTASHW" IS 'Valor de venta de la shadow';
   COMMENT ON COLUMN "AXIS"."FONDOS"."IUNIACTCMPSHW" IS 'Valor de compra de la shadow';
   COMMENT ON COLUMN "AXIS"."FONDOS"."CMODABO" IS 'Modo de pago de dividendos y bonos';
   COMMENT ON COLUMN "AXIS"."FONDOS"."NDAYAFT" IS 'D�as posteriores para coger el precio de unidad';
   COMMENT ON COLUMN "AXIS"."FONDOS"."NPERIODBON" IS 'Periodo para rescatar bonus';
   COMMENT ON COLUMN "AXIS"."FONDOS"."CDIVIDEND" IS '�Reparte dividendos el fondo? (0-No, 1-Si)';
  GRANT UPDATE ON "AXIS"."FONDOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FONDOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FONDOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FONDOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FONDOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FONDOS" TO "PROGRAMADORESCSI";
