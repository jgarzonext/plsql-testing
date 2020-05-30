--------------------------------------------------------
--  DDL for Table PRODUCTO_AGENTE
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRODUCTO_AGENTE" 
   (	"SPRODUC" NUMBER(6,0), 
	"CAGENTE" NUMBER, 
	"SUBAGEN" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRODUCTO_AGENTE"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_AGENTE"."CAGENTE" IS 'C�digo del agente';
   COMMENT ON COLUMN "AXIS"."PRODUCTO_AGENTE"."SUBAGEN" IS '1.-Incluye los agentes en caso de cagente ser una delegaci�n';
   COMMENT ON TABLE "AXIS"."PRODUCTO_AGENTE"  IS 'Productos activados para el agente';
  GRANT UPDATE ON "AXIS"."PRODUCTO_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODUCTO_AGENTE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRODUCTO_AGENTE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRODUCTO_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODUCTO_AGENTE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRODUCTO_AGENTE" TO "PROGRAMADORESCSI";
