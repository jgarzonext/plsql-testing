--------------------------------------------------------
--  DDL for Table MIG_PARPERSONAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PARPERSONAS" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"CPARAM" VARCHAR2(20 BYTE), 
	"TIPVAL" NUMBER(1,0), 
	"VALVAL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_PARPERSONAS"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_PARPERSONAS"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_PARPERSONAS"."MIG_PK" IS 'Clave �nica de MIG_PARPERSONAS';
   COMMENT ON COLUMN "AXIS"."MIG_PARPERSONAS"."MIG_FK" IS 'Clave externa para la persona (MIG_PERSONAS)';
   COMMENT ON COLUMN "AXIS"."MIG_PARPERSONAS"."CPARAM" IS 'C�digo par�metro';
   COMMENT ON COLUMN "AXIS"."MIG_PARPERSONAS"."TIPVAL" IS 'Tipo valor : 1-Number, 2-Varchar y 3-Date. Si 3 formato YYYYMMDD.';
   COMMENT ON COLUMN "AXIS"."MIG_PARPERSONAS"."VALVAL" IS 'Valor par�metro';
   COMMENT ON TABLE "AXIS"."MIG_PARPERSONAS"  IS 'Tabla Intermedia migraci�n de par�metros de personas';
  GRANT UPDATE ON "AXIS"."MIG_PARPERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PARPERSONAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PARPERSONAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_PARPERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PARPERSONAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PARPERSONAS" TO "PROGRAMADORESCSI";