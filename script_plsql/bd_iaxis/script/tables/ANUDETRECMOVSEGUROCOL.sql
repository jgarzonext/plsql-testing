--------------------------------------------------------
--  DDL for Table ANUDETRECMOVSEGUROCOL
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUDETRECMOVSEGUROCOL" 
   (	"SSEGURO_0" NUMBER, 
	"NMOVIMI_0" NUMBER(4,0), 
	"SSEGURO_CERT" NUMBER, 
	"NMOVIMI_CERT" NUMBER(4,0), 
	"NRECIBO" NUMBER, 
	"SPROCES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUDETRECMOVSEGUROCOL"."SSEGURO_0" IS 'Identificador del seguro del certificado 0';
   COMMENT ON COLUMN "AXIS"."ANUDETRECMOVSEGUROCOL"."NMOVIMI_0" IS 'N�mero de movimiento del seguro del certificado 0';
   COMMENT ON COLUMN "AXIS"."ANUDETRECMOVSEGUROCOL"."SSEGURO_CERT" IS 'Identificador del seguro del certificado';
   COMMENT ON COLUMN "AXIS"."ANUDETRECMOVSEGUROCOL"."NMOVIMI_CERT" IS 'N�mero de movimiento del seguro del certificado';
   COMMENT ON COLUMN "AXIS"."ANUDETRECMOVSEGUROCOL"."NRECIBO" IS 'N�mero de recibo generado';
   COMMENT ON COLUMN "AXIS"."ANUDETRECMOVSEGUROCOL"."SPROCES" IS 'N�mero de proceso en el que se gener� el recibo';
   COMMENT ON TABLE "AXIS"."ANUDETRECMOVSEGUROCOL"  IS 'Tabla con los recibos de las p�lizas colectivas administradas';
  GRANT UPDATE ON "AXIS"."ANUDETRECMOVSEGUROCOL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUDETRECMOVSEGUROCOL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUDETRECMOVSEGUROCOL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUDETRECMOVSEGUROCOL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUDETRECMOVSEGUROCOL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUDETRECMOVSEGUROCOL" TO "PROGRAMADORESCSI";
