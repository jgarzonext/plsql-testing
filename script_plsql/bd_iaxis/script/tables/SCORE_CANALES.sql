--------------------------------------------------------
--  DDL for Table SCORE_CANALES
--------------------------------------------------------

  CREATE TABLE "AXIS"."SCORE_CANALES" 
   (	"CCANAL" NUMBER(3,0), 
	"NCALRIE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SCORE_CANALES"."CCANAL" IS 'Campo para la  descripcion del canal cvalor =  8001185';
   COMMENT ON COLUMN "AXIS"."SCORE_CANALES"."NCALRIE" IS 'Calificaci�n de riesgo';
  GRANT UPDATE ON "AXIS"."SCORE_CANALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SCORE_CANALES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SCORE_CANALES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SCORE_CANALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SCORE_CANALES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SCORE_CANALES" TO "PROGRAMADORESCSI";
