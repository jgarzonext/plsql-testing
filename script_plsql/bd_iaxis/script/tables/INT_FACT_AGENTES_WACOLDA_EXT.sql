--------------------------------------------------------
--  DDL for Table INT_FACT_AGENTES_WACOLDA_EXT
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_FACT_AGENTES_WACOLDA_EXT" 
   (	"RAMPROD" VARCHAR2(200 BYTE), 
	"CODRAM" VARCHAR2(20 BYTE), 
	"NPOLIZA" VARCHAR2(20 BYTE), 
	"NDOCUM" VARCHAR2(200 BYTE), 
	"PORCOMISI" NUMBER, 
	"VRRECAU" NUMBER, 
	"VRCOMISI" NUMBER, 
	"PRIMAS" NUMBER, 
	"IVAGASTOS" NUMBER, 
	"IVACOM" NUMBER, 
	"NETO" NUMBER, 
	"REMISI" NUMBER, 
	"FECHA" DATE, 
	"RC" NUMBER, 
	"FPAGO" DATE, 
	"PIVACOM" NUMBER
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "TABEXT"
      ACCESS PARAMETERS
      ( records delimited by 0x'0A'
                         logfile 'WACOL.log'
                         badfile 'WACOL.bad'
                         discardfile 'WACOL.dis'
                         fields terminated by '|' lrtrim
                         MISSING FIELD VALUES ARE NULL
                         REJECT ROWS WITH ALL NULL FIELDS
                         (  RAMPROD
                          , CODRAM
                          , NPOLIZA
                          , NDOCUM
                          , PORCOMISI
                          , VRRECAU
                          , VRCOMISI
                          , PRIMAS
                          , IVAGASTOS
                          , IVACOM
                          , NETO
                          , REMISI
                          , FECHA DATE  MASK "DD/MM/YYYY"
                          , RC
                          , FPAGO DATE  MASK "DD/MM/YYYY"
                          , PIVACOM
                        )    )
      LOCATION
       ( "TABEXT":'WACOL.csv'
       )
    );
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_WACOLDA_EXT" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_WACOLDA_EXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_WACOLDA_EXT" TO "CONF_DWH";
