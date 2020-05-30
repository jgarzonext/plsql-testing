--------------------------------------------------------
--  DDL for Table MIG_PREGUNSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PREGUNSEG" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NRIESGO" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"CPREGUN" NUMBER(4,0), 
	"CRESPUE" VARCHAR2(2000 BYTE), 
	"NMOVIMI" NUMBER(4,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_PREGUNSEG"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_PREGUNSEG"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_PREGUNSEG"."MIG_PK" IS 'Clave �nica de MIG_PREGUNSEG';
   COMMENT ON COLUMN "AXIS"."MIG_PREGUNSEG"."MIG_FK" IS 'Clave externa para la p�liza (MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_PREGUNSEG"."NRIESGO" IS 'N�mero de riesgo, si NULL pregunta a nivel de p�liza';
   COMMENT ON COLUMN "AXIS"."MIG_PREGUNSEG"."SSEGURO" IS 'N�mero de secuencia de seguro, valor=0, lo calcula el proceso de migraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_PREGUNSEG"."CPREGUN" IS 'C�digo Pregunta';
   COMMENT ON COLUMN "AXIS"."MIG_PREGUNSEG"."CRESPUE" IS 'Valor de la respuesta';
   COMMENT ON COLUMN "AXIS"."MIG_PREGUNSEG"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON TABLE "AXIS"."MIG_PREGUNSEG"  IS 'Tabla Intermedia migraci�n Preguntas';
  GRANT UPDATE ON "AXIS"."MIG_PREGUNSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PREGUNSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PREGUNSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_PREGUNSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PREGUNSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PREGUNSEG" TO "PROGRAMADORESCSI";
