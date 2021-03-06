--------------------------------------------------------
--  DDL for Table REMUNERACION_CANAL_SIN
--------------------------------------------------------

  CREATE TABLE "AXIS"."REMUNERACION_CANAL_SIN" 
   (	"SREMCANAL" NUMBER(6,0), 
	"NSINIES" VARCHAR2(14 BYTE), 
	"SPROCES" NUMBER, 
	"IIMPSIN" NUMBER, 
	"LAE" NUMBER, 
	"IPRIDEV" NUMBER, 
	"CAGEPROM" NUMBER, 
	"CTIPPER" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_SIN"."SREMCANAL" IS 'Id. de la Remuneraci�n';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_SIN"."NSINIES" IS 'Id. del siniestro';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_SIN"."SPROCES" IS 'Id. del proceso';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_SIN"."IIMPSIN" IS 'Importe del siniestro';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_SIN"."LAE" IS 'Gastos por atenci�n a siniestros';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_SIN"."IPRIDEV" IS 'Prima devengada del siniestro';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_SIN"."CAGEPROM" IS 'C�digo del Gestor/Vicepresidente/Gerente/Director/Promotor/Coordinador';
   COMMENT ON COLUMN "AXIS"."REMUNERACION_CANAL_SIN"."CTIPPER" IS 'Tipo de Persona (1-Promotor,  2-Gestor, 3-Vicepresidente, 4-Gerente, 5-Director, 6-Coordinador)';
   COMMENT ON TABLE "AXIS"."REMUNERACION_CANAL_SIN"  IS 'Tabla para registrar los siniestros que participan en la remuneraci�n del canal';
  GRANT UPDATE ON "AXIS"."REMUNERACION_CANAL_SIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REMUNERACION_CANAL_SIN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REMUNERACION_CANAL_SIN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REMUNERACION_CANAL_SIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REMUNERACION_CANAL_SIN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REMUNERACION_CANAL_SIN" TO "PROGRAMADORESCSI";
