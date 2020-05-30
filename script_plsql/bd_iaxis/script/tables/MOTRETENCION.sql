--------------------------------------------------------
--  DDL for Table MOTRETENCION
--------------------------------------------------------

  CREATE TABLE "AXIS"."MOTRETENCION" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"CMOTRET" NUMBER, 
	"CUSURET" VARCHAR2(40 BYTE), 
	"FRETEN" DATE, 
	"NMOTRET" NUMBER, 
	"CESTGEST" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MOTRETENCION"."SSEGURO" IS 'c�digo del seguro';
   COMMENT ON COLUMN "AXIS"."MOTRETENCION"."NRIESGO" IS 'n�mero del riesgo';
   COMMENT ON COLUMN "AXIS"."MOTRETENCION"."NMOVIMI" IS 'n�mero del movimiento';
   COMMENT ON COLUMN "AXIS"."MOTRETENCION"."CMOTRET" IS 'c�digo del motivo de retenci�n (1.- Cuestionario Salud, 2.- L�mites Capital)';
   COMMENT ON COLUMN "AXIS"."MOTRETENCION"."CUSURET" IS 'c�digo del usuario que retiene la p�liza';
   COMMENT ON COLUMN "AXIS"."MOTRETENCION"."FRETEN" IS 'fecha/hora de la retenci�n de la p�liza';
   COMMENT ON COLUMN "AXIS"."MOTRETENCION"."CESTGEST" IS 'Estado gesti�n de la retenci�n. VF (800016)';
   COMMENT ON TABLE "AXIS"."MOTRETENCION"  IS 'En esta tabla se informar�n los motivos de la retenci�n de una p�liza.';
  GRANT UPDATE ON "AXIS"."MOTRETENCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MOTRETENCION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MOTRETENCION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MOTRETENCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MOTRETENCION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MOTRETENCION" TO "PROGRAMADORESCSI";