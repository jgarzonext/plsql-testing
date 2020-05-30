--------------------------------------------------------
--  DDL for Table INT_MV_POL_ERROR
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_MV_POL_ERROR" 
   (	"SINTERF" NUMBER, 
	"SSEGURO" NUMBER, 
	"NRECIBO" NUMBER, 
	"CTIPERR" NUMBER(1,0), 
	"CENVIAR" NUMBER(1,0), 
	"FENVIO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_MV_POL_ERROR"."SINTERF" IS 'Secuencia de la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_MV_POL_ERROR"."SSEGURO" IS 'Seguro';
   COMMENT ON COLUMN "AXIS"."INT_MV_POL_ERROR"."NRECIBO" IS 'Si el error se produce en la interfaz de alta este campo estará a NULL';
   COMMENT ON COLUMN "AXIS"."INT_MV_POL_ERROR"."CTIPERR" IS '0: error transacción (adeudo); 1: denegado por host (adeudo); 2: denegado por usuario (host); 3: error axis (adeudo); 4: error transacción (alta contrato); 5: error axis (alta contrato)';
   COMMENT ON COLUMN "AXIS"."INT_MV_POL_ERROR"."CENVIAR" IS 'Indica si la poliza se envia en el proceso batch de cuadre de altas. 0: no se envía; 1: se envía';
   COMMENT ON COLUMN "AXIS"."INT_MV_POL_ERROR"."FENVIO" IS 'Fecha del envío del cuadre';
  GRANT DELETE ON "AXIS"."INT_MV_POL_ERROR" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."INT_MV_POL_ERROR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_MV_POL_ERROR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_MV_POL_ERROR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_MV_POL_ERROR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_MV_POL_ERROR" TO "PROGRAMADORESCSI";
