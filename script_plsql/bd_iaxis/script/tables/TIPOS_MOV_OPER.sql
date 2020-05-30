--------------------------------------------------------
--  DDL for Table TIPOS_MOV_OPER
--------------------------------------------------------

  CREATE TABLE "AXIS"."TIPOS_MOV_OPER" 
   (	"TIPO_OPERACION" NUMBER(2,0), 
	"CMOVIMI" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TIPOS_MOV_OPER"."TIPO_OPERACION" IS 'C�digo del tipo de operaci�n';
   COMMENT ON COLUMN "AXIS"."TIPOS_MOV_OPER"."CMOVIMI" IS 'C�digo de movimiento';
   COMMENT ON TABLE "AXIS"."TIPOS_MOV_OPER"  IS 'Detalle de los c�digos de movimiento que componen una operacion';
  GRANT UPDATE ON "AXIS"."TIPOS_MOV_OPER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TIPOS_MOV_OPER" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TIPOS_MOV_OPER" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TIPOS_MOV_OPER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TIPOS_MOV_OPER" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TIPOS_MOV_OPER" TO "PROGRAMADORESCSI";