--------------------------------------------------------
--  DDL for Table MIG_VINCULOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_VINCULOS" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"CVINCLO" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_VINCULOS"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_VINCULOS"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_VINCULOS"."MIG_PK" IS 'Clave �nica de MIG_REGIMENFISCAL';
   COMMENT ON COLUMN "AXIS"."MIG_VINCULOS"."MIG_FK" IS 'Clave externa para la persona (MIG_PERSONAS)';
   COMMENT ON COLUMN "AXIS"."MIG_VINCULOS"."CVINCLO" IS 'C�digo v�nculo';
   COMMENT ON TABLE "AXIS"."MIG_VINCULOS"  IS 'Tabla Intermedia migraci�n de regimen fiscal de personas';
  GRANT UPDATE ON "AXIS"."MIG_VINCULOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_VINCULOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_VINCULOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_VINCULOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_VINCULOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_VINCULOS" TO "PROGRAMADORESCSI";
