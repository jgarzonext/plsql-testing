--------------------------------------------------------
--  DDL for Table PAR_PARAMS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PAR_PARAMS" 
   (	"PARAMETRO" VARCHAR2(30 BYTE), 
	"VALOR" NUMBER, 
	"DESCRIPCION" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PAR_PARAMS"."PARAMETRO" IS 'Nombre del par�metro';
   COMMENT ON COLUMN "AXIS"."PAR_PARAMS"."VALOR" IS 'Valor actual del par�metro';
   COMMENT ON TABLE "AXIS"."PAR_PARAMS"  IS 'Datos de paramaetrizaci�n de la Pol�tica de Aceptaci�n de Riesgos';
  GRANT UPDATE ON "AXIS"."PAR_PARAMS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAR_PARAMS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PAR_PARAMS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PAR_PARAMS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAR_PARAMS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PAR_PARAMS" TO "PROGRAMADORESCSI";