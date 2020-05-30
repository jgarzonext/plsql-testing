--------------------------------------------------------
--  DDL for Table SALDOS_FONDO_ULK
--------------------------------------------------------

  CREATE TABLE "AXIS"."SALDOS_FONDO_ULK" 
   (	"CPROCES" NUMBER(9,0), 
	"SSEGURO" NUMBER, 
	"FONDO" NUMBER(3,0), 
	"FECHA" DATE, 
	"SALDO" NUMBER, 
	"UNIDADES" NUMBER, 
	"TIPO" CHAR(1 BYTE), 
	"IMPORTE" NUMBER, 
	"NORDEN" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON TABLE "AXIS"."SALDOS_FONDO_ULK"  IS 'Saldos por fondo y fecha';
  GRANT UPDATE ON "AXIS"."SALDOS_FONDO_ULK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SALDOS_FONDO_ULK" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SALDOS_FONDO_ULK" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SALDOS_FONDO_ULK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SALDOS_FONDO_ULK" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SALDOS_FONDO_ULK" TO "PROGRAMADORESCSI";