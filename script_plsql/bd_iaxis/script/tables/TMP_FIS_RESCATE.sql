--------------------------------------------------------
--  DDL for Table TMP_FIS_RESCATE
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_FIS_RESCATE" 
   (	"SSEGURO" NUMBER, 
	"FRESCAT" DATE, 
	"NRIESGO" NUMBER(6,0), 
	"IVALORA" NUMBER, 
	"ISUM_PRIMAS" NUMBER, 
	"IRENDIM" NUMBER, 
	"IREDUC" NUMBER, 
	"IREG_TRANS" NUMBER, 
	"IRCM" NUMBER, 
	"IRETENC" NUMBER, 
	"NPMP" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TMP_FIS_RESCATE"."SSEGURO" IS 'Identificador de la p�liza';
   COMMENT ON COLUMN "AXIS"."TMP_FIS_RESCATE"."FRESCAT" IS 'Fecha del rescate';
   COMMENT ON COLUMN "AXIS"."TMP_FIS_RESCATE"."NRIESGO" IS 'Numero de riesgo';
   COMMENT ON COLUMN "AXIS"."TMP_FIS_RESCATE"."IVALORA" IS 'Valoraci�n';
   COMMENT ON COLUMN "AXIS"."TMP_FIS_RESCATE"."ISUM_PRIMAS" IS 'Suma de primas con posibilidad de consumir en este rescate';
   COMMENT ON COLUMN "AXIS"."TMP_FIS_RESCATE"."IRENDIM" IS 'Rendimiento bruto';
   COMMENT ON COLUMN "AXIS"."TMP_FIS_RESCATE"."IREDUC" IS 'Reducci�n';
   COMMENT ON COLUMN "AXIS"."TMP_FIS_RESCATE"."IREG_TRANS" IS 'Reducci�n por r�gimen transitorio';
   COMMENT ON COLUMN "AXIS"."TMP_FIS_RESCATE"."IRCM" IS 'Rendimiento Capital Mobiliario';
   COMMENT ON COLUMN "AXIS"."TMP_FIS_RESCATE"."IRETENC" IS 'Retenci�n';
   COMMENT ON COLUMN "AXIS"."TMP_FIS_RESCATE"."NPMP" IS 'Periodo Medio de Permanencia';
  GRANT UPDATE ON "AXIS"."TMP_FIS_RESCATE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_FIS_RESCATE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_FIS_RESCATE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_FIS_RESCATE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_FIS_RESCATE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_FIS_RESCATE" TO "PROGRAMADORESCSI";
