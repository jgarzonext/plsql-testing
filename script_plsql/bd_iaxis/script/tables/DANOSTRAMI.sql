--------------------------------------------------------
--  DDL for Table DANOSTRAMI
--------------------------------------------------------

  CREATE TABLE "AXIS"."DANOSTRAMI" 
   (	"NSINIES" NUMBER(8,0), 
	"NTRAMIT" NUMBER(4,0), 
	"NDANO" NUMBER(3,0), 
	"CTIPDAN" NUMBER(1,0), 
	"TDANO" VARCHAR2(1000 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUBAJ" VARCHAR2(20 BYTE), 
	"FBAJA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DANOSTRAMI"."NSINIES" IS 'Numero de siniestro';
   COMMENT ON COLUMN "AXIS"."DANOSTRAMI"."NTRAMIT" IS 'Numero de tramitacion';
   COMMENT ON COLUMN "AXIS"."DANOSTRAMI"."NDANO" IS 'Numero de tramitacion';
   COMMENT ON COLUMN "AXIS"."DANOSTRAMI"."CTIPDAN" IS 'Tipo de informe de da�os';
   COMMENT ON COLUMN "AXIS"."DANOSTRAMI"."TDANO" IS 'Numero de tramitacion';
   COMMENT ON TABLE "AXIS"."DANOSTRAMI"  IS 'Informes de los da�os producidos';
  GRANT UPDATE ON "AXIS"."DANOSTRAMI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DANOSTRAMI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DANOSTRAMI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DANOSTRAMI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DANOSTRAMI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DANOSTRAMI" TO "PROGRAMADORESCSI";
