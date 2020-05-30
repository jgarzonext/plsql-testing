--------------------------------------------------------
--  DDL for Table SALDODEUTORSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."SALDODEUTORSEG" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"ICAPMAX" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SALDODEUTORSEG"."SSEGURO" IS 'Identificador del seguro';
   COMMENT ON COLUMN "AXIS"."SALDODEUTORSEG"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."SALDODEUTORSEG"."ICAPMAX" IS 'Importe Capital m�ximo por p�lizas';
   COMMENT ON TABLE "AXIS"."SALDODEUTORSEG"  IS 'Informaci�n del Saldo Deutor por p�liza';
  GRANT UPDATE ON "AXIS"."SALDODEUTORSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SALDODEUTORSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SALDODEUTORSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SALDODEUTORSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SALDODEUTORSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SALDODEUTORSEG" TO "PROGRAMADORESCSI";
