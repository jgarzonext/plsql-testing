--------------------------------------------------------
--  DDL for Table SALDOS_POLIZA_ULK
--------------------------------------------------------

  CREATE TABLE "AXIS"."SALDOS_POLIZA_ULK" 
   (	"CPROCES" NUMBER(9,0), 
	"SSEGURO" NUMBER, 
	"FECHA" DATE, 
	"SALDO" NUMBER, 
	"UNIDADES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON TABLE "AXIS"."SALDOS_POLIZA_ULK"  IS 'Saldos temporales por poliza';
  GRANT UPDATE ON "AXIS"."SALDOS_POLIZA_ULK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SALDOS_POLIZA_ULK" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SALDOS_POLIZA_ULK" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SALDOS_POLIZA_ULK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SALDOS_POLIZA_ULK" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SALDOS_POLIZA_ULK" TO "PROGRAMADORESCSI";