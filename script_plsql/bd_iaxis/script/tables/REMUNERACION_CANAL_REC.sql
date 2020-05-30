--------------------------------------------------------
--  DDL for Table REMUNERACION_CANAL_REC
--------------------------------------------------------

  CREATE TABLE "AXIS"."REMUNERACION_CANAL_REC" 
   (	"SREMCANAL" NUMBER(6,0), 
	"NRECIBO" NUMBER, 
	"CTIPO" NUMBER(2,0), 
	"SPROCES" NUMBER, 
	"IPRINET" NUMBER, 
	"ITOTALR" NUMBER, 
	"CAGEPROM" NUMBER, 
	"CTIPPER" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_REC"."SREMCANAL" IS 'Id. de la Remuneraci�n';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_REC"."NRECIBO" IS 'Id. del recibo';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_REC"."CTIPO" IS 'Tipo de Recibo:
 1 - Prima Emitida
 2 - Prima por cobrar > 90 d�as
 3 - Prima por cobrar > 180 d�as
 4 - Tiempo corrido
 5 - Retenedor de prima
 6 - Cartera castigada
 7 - Cartera negativa > 90 d�as
 8 - Cartera negativa > 180 d�as
 9 - Prima cedida
 10 - Prima recaudada';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_REC"."SPROCES" IS 'Id. del proceso';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_REC"."IPRINET" IS 'Prima neta del recibo';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_REC"."ITOTALR" IS 'Prima total del recibo';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_REC"."CAGEPROM" IS 'C�digo del Gestor/Vicepresidente/Gerente/Director/Promotor/Coordinador';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_REC"."CTIPPER" IS 'Tipo de Persona (1-Promotor,  2-Gestor, 3-Vicepresidente, 4-Gerente, 5-Director, 6-Coordinador)';
   COMMENT ON TABLE "AXIS"."REMUNERACION_CANAL_REC"  IS 'Tabla para registrar los recibos que participan en la remuneraci�n del canal';
  GRANT UPDATE ON "AXIS"."REMUNERACION_CANAL_REC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REMUNERACION_CANAL_REC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REMUNERACION_CANAL_REC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REMUNERACION_CANAL_REC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REMUNERACION_CANAL_REC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REMUNERACION_CANAL_REC" TO "PROGRAMADORESCSI";