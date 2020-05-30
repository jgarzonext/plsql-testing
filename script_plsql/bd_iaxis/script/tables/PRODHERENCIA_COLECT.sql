--------------------------------------------------------
--  DDL for Table PRODHERENCIA_COLECT
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRODHERENCIA_COLECT" 
   (	"SPRODUC" NUMBER(6,0), 
	"CAGENTE" NUMBER(1,0), 
	"CFORPAG" NUMBER(1,0), 
	"RECFRA" NUMBER(1,0), 
	"CCLAUSU" NUMBER(1,0), 
	"CGARANT" NUMBER(1,0), 
	"FRENOVA" NUMBER(1,0), 
	"CDURACI" NUMBER(1,0), 
	"CCORRET" NUMBER(1,0), 
	"CCOMPANI" NUMBER(1,0), 
	"CRETORNO" NUMBER(1,0), 
	"CREVALI" NUMBER(1,0), 
	"PIREVALI" NUMBER(1,0), 
	"CTIPCOM" NUMBER(1,0), 
	"CCOA" NUMBER(1,0), 
	"CTIPCOB" NUMBER(1,0), 
	"CBANCAR" NUMBER(1,0), 
	"CCOBBAN" NUMBER(1,0), 
	"CDOCREQ" NUMBER, 
	"CASEGURADO" NUMBER(2,0), 
	"CBENEFICIARIO" NUMBER(2,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CVERSCONV" NUMBER, 
	"CAGENDA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."SPRODUC" IS 'Código de producto';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CAGENTE" IS 'Si hereda el agente del certificado 0. - 1:Sí/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CFORPAG" IS 'Si hereda la forma de pago del certificado. - 2:Sí por defecto/1:Sí exclusivo/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."RECFRA" IS 'Si hereda el recargo por fraccionamiento del certificado 0. - 1:Sí/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CCLAUSU" IS 'Si hereda cláusulas del certificado 0. - 0:No / 1:Sí, solo las de producto / 2:Sí, las de producto y específicas / 3:Sí, solo las específicas';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CGARANT" IS 'Si hereda las garantias del certificado 0. - 1:Sí/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."FRENOVA" IS 'Hereda fecha de renovación de la póliza';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CDURACI" IS 'Hereda tipo de duración. 0-No hereda; 1-Hereda estricto;  2-Hereda como temporal renovable.';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CCORRET" IS 'Si hereda el co-corretaje del certificado 0. - 1:Sí/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CCOMPANI" IS 'Si hereda la compañia del certificado 0. 1:Si/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CRETORNO" IS 'Si hereda el retorno del certificado 0. - 1:Sí/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CREVALI" IS 'Si hereda el tipo de revalorización del certificado 0. - 1:Sí/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."PIREVALI" IS 'Si hereda el Porcentaje/Importe de revalorización del certificado 0. - 1:Sí/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CTIPCOM" IS 'Si hereda el tipo de comisión del certificado 0. - 1:Sí/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CCOA" IS 'Si hereda la comisión del certificado 0. - 1:Sí/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CTIPCOB" IS 'Si hereda el tipo de cobro. - 2:Sí por defecto/1:Sí exclusivo/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CBANCAR" IS 'Si hereda la cuenta bancaria/tarjeta. - 1:Sí/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CCOBBAN" IS 'Si hereda el cobrador bancario. - 1:Sí/0:No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CDOCREQ" IS 'Si hereda documentación requerida o no. 1:Sí / 0: No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CASEGURADO" IS 'Si hereda el asegurado o no. 1:Sí / 0: No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CBENEFICIARIO" IS 'Si hereda los beneficiarios definidos en la caratula o no. 1:Sí / 0: No';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."PRODHERENCIA_COLECT"."CAGENDA" IS 'Si hereda la agenda o no. 1:Sí / 0: No';
   COMMENT ON TABLE "AXIS"."PRODHERENCIA_COLECT"  IS 'Definición de Herencia del certificado 0 por producto';
  GRANT UPDATE ON "AXIS"."PRODHERENCIA_COLECT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODHERENCIA_COLECT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRODHERENCIA_COLECT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRODHERENCIA_COLECT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODHERENCIA_COLECT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRODHERENCIA_COLECT" TO "PROGRAMADORESCSI";
