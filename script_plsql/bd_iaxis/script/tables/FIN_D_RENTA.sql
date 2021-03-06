--------------------------------------------------------
--  DDL for Table FIN_D_RENTA
--------------------------------------------------------

  CREATE TABLE "AXIS"."FIN_D_RENTA" 
   (	"SFINANCI" NUMBER, 
	"FCORTE" DATE, 
	"CESVALOR" NUMBER, 
	"IPATRILIQ" NUMBER, 
	"IRENTA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FIN_D_RENTA"."SFINANCI" IS 'Fecha c�mara de comercio';
   COMMENT ON COLUMN "AXIS"."FIN_D_RENTA"."FCORTE" IS 'Fecha de corte de declaraci�n de renta';
   COMMENT ON COLUMN "AXIS"."FIN_D_RENTA"."CESVALOR" IS 'Valores en � V.F. 8001075';
   COMMENT ON COLUMN "AXIS"."FIN_D_RENTA"."IPATRILIQ" IS 'Patrimonio liquido';
   COMMENT ON COLUMN "AXIS"."FIN_D_RENTA"."IRENTA" IS 'Renta liquida Gravable';
  GRANT UPDATE ON "AXIS"."FIN_D_RENTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIN_D_RENTA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FIN_D_RENTA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FIN_D_RENTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIN_D_RENTA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FIN_D_RENTA" TO "PROGRAMADORESCSI";
