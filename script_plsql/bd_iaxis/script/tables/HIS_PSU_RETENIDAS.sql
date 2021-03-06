--------------------------------------------------------
--  DDL for Table HIS_PSU_RETENIDAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PSU_RETENIDAS" 
   (	"SSEGURO" NUMBER, 
	"NVERSION" NUMBER(4,0), 
	"NMOVIMI" NUMBER, 
	"FMOVIMI" DATE, 
	"CMOTRET" NUMBER(4,0), 
	"CNIVELBPM" NUMBER(6,0), 
	"CUSURET" VARCHAR2(200 BYTE), 
	"FFECRET" DATE, 
	"CUSUAUT" VARCHAR2(20 BYTE), 
	"FFECAUT" DATE, 
	"OBSERV" VARCHAR2(4000 BYTE), 
	"CDETMOTREC" NUMBER(6,0), 
	"CSUBESTADO" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."SSEGURO" IS 'Identificativo Seguros';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."NVERSION" IS 'No movimiento en PSU_RETENIDAS';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."NMOVIMI" IS 'Movimiento de Movseguro';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."FMOVIMI" IS 'Fecha Movseguro';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."CMOTRET" IS '0 = Autorizada, 1 = Pendiente Continuar,2 = Pendiente Autorizar, 3 = Bloqueada,4 = Rechazada, 5 = No Aplica por Cambio';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."CNIVELBPM" IS 'Nivel del usuario a los cuales se les enviar�� la incidencia PSU';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."CUSURET" IS 'Usuario grabador';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."FFECRET" IS 'Fecha retencion';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."CUSUAUT" IS 'Usuario autoriza/rechaza';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."FFECAUT" IS 'Fecha autorizacion/rechazo';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."OBSERV" IS 'Observaciones';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."CDETMOTREC" IS 'Codigo de Motmovseg';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_RETENIDAS"."CSUBESTADO" IS 'Sub Estado de la retenci��n(Devalores 8001103)';
  GRANT UPDATE ON "AXIS"."HIS_PSU_RETENIDAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_RETENIDAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PSU_RETENIDAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PSU_RETENIDAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_RETENIDAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PSU_RETENIDAS" TO "PROGRAMADORESCSI";
