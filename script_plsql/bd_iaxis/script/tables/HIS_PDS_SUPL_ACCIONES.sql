--------------------------------------------------------
--  DDL for Table HIS_PDS_SUPL_ACCIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PDS_SUPL_ACCIONES" 
   (	"CMOTMOV" NUMBER(22,0), 
	"SPRODUC" NUMBER(22,0), 
	"NORDEN" NUMBER(22,0), 
	"ORDENACC" NUMBER(22,0), 
	"DINACCION" VARCHAR2(1 BYTE), 
	"TTABLE" VARCHAR2(50 BYTE), 
	"TCAMPO" VARCHAR2(500 BYTE), 
	"TWHERE" VARCHAR2(500 BYTE), 
	"TACCION" VARCHAR2(100 BYTE), 
	"NACCION" NUMBER(22,0), 
	"VACCION" VARCHAR2(500 BYTE), 
	"TTARIFA" NUMBER(22,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."CMOTMOV" IS 'C�digo de movimiento';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."SPRODUC" IS 'Identificador de producto';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."NORDEN" IS 'Orden de suplemento autom�tico';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."ORDENACC" IS 'Acci�n a realizar en orden';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."DINACCION" IS 'Tipo de acci�n din�mica a realizar: ''U'' (Update) / ''I'' (Insert) / ''F'' (Funci�n)';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."TTABLE" IS 'Identificador de tabla suplemento';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."TCAMPO" IS 'Identificador de campo';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."TWHERE" IS 'Condicion where de la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."TACCION" IS 'Tipo de acci�n a realizar';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."NACCION" IS 'Importe/Valor numerico en acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."VACCION" IS 'Importe/Valor textual en acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."TTARIFA" IS 'Indicador de si debe o no tarifar tras la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_SUPL_ACCIONES"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_PDS_SUPL_ACCIONES"  IS 'Hist�rico de la tabla PDS_SUPL_ACCIONES';
  GRANT UPDATE ON "AXIS"."HIS_PDS_SUPL_ACCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PDS_SUPL_ACCIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PDS_SUPL_ACCIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PDS_SUPL_ACCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PDS_SUPL_ACCIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PDS_SUPL_ACCIONES" TO "PROGRAMADORESCSI";