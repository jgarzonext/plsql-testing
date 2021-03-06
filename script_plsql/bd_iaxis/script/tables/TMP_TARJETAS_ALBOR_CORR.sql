--------------------------------------------------------
--  DDL for Table TMP_TARJETAS_ALBOR_CORR
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_TARJETAS_ALBOR_CORR" 
   (	"STMPALBOR" NUMBER(10,0), 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"NPOLIZA" NUMBER, 
	"POLISSA_INI" VARCHAR2(15 BYTE), 
	"STARJET" NUMBER(10,0), 
	"NTARJETA" VARCHAR2(16 BYTE), 
	"FVENCIM" DATE, 
	"PRODUCTE" NUMBER, 
	"NACCIO" NUMBER(2,0), 
	"TACCIO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."STMPALBOR" IS 'Clau prim�ria';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."SSEGURO" IS 'N�mero seq�encial d''asseguran�a';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."NRIESGO" IS 'N�mero de risc';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."CRAMO" IS 'Ram';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."CMODALI" IS 'Modalitat';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."CTIPSEG" IS 'Tipus';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."CCOLECT" IS 'Col.lectivitat';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."NPOLIZA" IS 'N�mero de p�lissa';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."POLISSA_INI" IS 'N�mero de p�lissa CESGRUP';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."STARJET" IS 'N�mero seq�encial de targeta';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."NTARJETA" IS 'N�mero de targeta';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."FVENCIM" IS 'Data de venciment';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."PRODUCTE" IS 'Producte CESGRUP';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."NACCIO" IS 'Accio realitzada';
   COMMENT ON COLUMN "AXIS"."TMP_TARJETAS_ALBOR_CORR"."TACCIO" IS 'Descripcio de l''accio';
   COMMENT ON TABLE "AXIS"."TMP_TARJETAS_ALBOR_CORR"  IS 'Taula temporal per la renovaci� de targetes (ALBOR)';
  GRANT UPDATE ON "AXIS"."TMP_TARJETAS_ALBOR_CORR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_TARJETAS_ALBOR_CORR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_TARJETAS_ALBOR_CORR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_TARJETAS_ALBOR_CORR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_TARJETAS_ALBOR_CORR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_TARJETAS_ALBOR_CORR" TO "PROGRAMADORESCSI";
