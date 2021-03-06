--------------------------------------------------------
--  DDL for Table SIN_TRANSICIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_TRANSICIONES" 
   (	"CEMPRES" NUMBER(2,0), 
	"CNIVPER" NUMBER(3,0), 
	"CNORDEN" NUMBER(3,0), 
	"CTIPTRA" NUMBER(2,0), 
	"CESTANT" NUMBER(1,0), 
	"CSUBANT" NUMBER(1,0), 
	"CESTSIG" NUMBER(1,0), 
	"CSUBSIG" NUMBER(1,0), 
	"COTROS" NUMBER(1,0), 
	"CVISIBLE" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_TRANSICIONES"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."SIN_TRANSICIONES"."CNIVPER" IS 'Nivel o perfil de usuario';
   COMMENT ON COLUMN "AXIS"."SIN_TRANSICIONES"."CNORDEN" IS 'N�mero de la transici�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRANSICIONES"."CTIPTRA" IS 'Tipo de transici�n VF.: 1046';
   COMMENT ON COLUMN "AXIS"."SIN_TRANSICIONES"."CESTANT" IS 'Estado anterior';
   COMMENT ON COLUMN "AXIS"."SIN_TRANSICIONES"."CSUBANT" IS 'Subestado anterior';
   COMMENT ON COLUMN "AXIS"."SIN_TRANSICIONES"."CESTSIG" IS 'Siguiente estado';
   COMMENT ON COLUMN "AXIS"."SIN_TRANSICIONES"."CSUBSIG" IS 'Siguiente subestado';
   COMMENT ON COLUMN "AXIS"."SIN_TRANSICIONES"."COTROS" IS 'Otro criterio de control';
   COMMENT ON COLUMN "AXIS"."SIN_TRANSICIONES"."CVISIBLE" IS 'Transici�n visible por pantalla 0=no 1=S�';
   COMMENT ON TABLE "AXIS"."SIN_TRANSICIONES"  IS 'Tabla de Transiciones de Siniestros';
  GRANT UPDATE ON "AXIS"."SIN_TRANSICIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRANSICIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_TRANSICIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_TRANSICIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRANSICIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_TRANSICIONES" TO "PROGRAMADORESCSI";
