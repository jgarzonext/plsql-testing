--------------------------------------------------------
--  DDL for Table IR_ORDENES
--------------------------------------------------------

  CREATE TABLE "AXIS"."IR_ORDENES" 
   (	"CEMPRES" NUMBER(5,0), 
	"SORDEN" NUMBER, 
	"FSOLICITUD" DATE, 
	"CTIPORIESGO" NUMBER(3,0), 
	"CESTADO" NUMBER(3,0), 
	"CCLASE" NUMBER(3,0), 
	"SPRODUC" NUMBER(6,0), 
	"CTIPMAT" NUMBER(6,0), 
	"CMATRIC" VARCHAR2(12 BYTE), 
	"CODMOTOR" VARCHAR2(100 BYTE), 
	"CCHASIS" VARCHAR2(100 BYTE), 
	"NBASTID" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE), 
	"NORDENEXT" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."SORDEN" IS 'N�mero consecutivo de orden de inspecci�n asignado autom�ticamente';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."FSOLICITUD" IS 'Fecha de solicitud de la orden';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."CTIPORIESGO" IS 'Tipo de riesgo a inspeccionar VF 754';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."CESTADO" IS 'Estado de la orden de inspecci�n VF 750';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."CCLASE" IS 'Clase de inspecci�n VF 751';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."CTIPMAT" IS 'Tipo de matr�cula. Valor fijo 290';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."CMATRIC" IS 'Matr�cula veh�culo';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."CODMOTOR" IS 'C�digo Motor';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."CCHASIS" IS 'C�digo de Chasis';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."NBASTID" IS 'N�mero de Bastidor VIN';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."FMODIFI" IS 'Fecha de modificacion';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."CUSUMOD" IS 'Usuario de modificacion';
   COMMENT ON COLUMN "AXIS"."IR_ORDENES"."NORDENEXT" IS 'N�mero de orden de inspecci�n en el sistema externo';
   COMMENT ON TABLE "AXIS"."IR_ORDENES"  IS 'Tabla de �rdenes de inspecci�n de riesgo';
  GRANT UPDATE ON "AXIS"."IR_ORDENES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IR_ORDENES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IR_ORDENES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IR_ORDENES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IR_ORDENES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IR_ORDENES" TO "PROGRAMADORESCSI";
