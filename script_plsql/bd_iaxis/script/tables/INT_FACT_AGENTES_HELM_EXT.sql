--------------------------------------------------------
--  DDL for Table INT_FACT_AGENTES_HELM_EXT
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_FACT_AGENTES_HELM_EXT" 
   (	"NITASEGURA" VARCHAR2(200 BYTE), 
	"NOMASEGURA" VARCHAR2(200 BYTE), 
	"NITTOMADOR" VARCHAR2(200 BYTE), 
	"NOMTOMADOR" VARCHAR2(200 BYTE), 
	"NOMCIUDAD" VARCHAR2(200 BYTE), 
	"TIPREC" VARCHAR2(20 BYTE), 
	"COMREC" VARCHAR2(20 BYTE), 
	"NRECIBO" NUMBER, 
	"SECUENCIA" NUMBER, 
	"FPAGO" DATE, 
	"NITRESPON" VARCHAR2(200 BYTE), 
	"NOMRESPON" VARCHAR2(200 BYTE), 
	"CONCEPTO" VARCHAR2(200 BYTE), 
	"TIPO" VARCHAR2(20 BYTE), 
	"COMPROB" VARCHAR2(20 BYTE), 
	"REMISION" VARCHAR2(20 BYTE), 
	"NPOLIZA" VARCHAR2(20 BYTE), 
	"NCERTIF" VARCHAR2(20 BYTE), 
	"VPAGO" NUMBER, 
	"PLACA" VARCHAR2(50 BYTE), 
	"RAMO" VARCHAR2(20 BYTE), 
	"VCOMISI" NUMBER, 
	"VCOMISIADI" NUMBER, 
	"VPRIMA" NUMBER, 
	"VIVA" NUMBER, 
	"VOTROS" NUMBER, 
	"TPRIMA" NUMBER, 
	"VIGPOLINI" DATE, 
	"VIGPOLFIN" DATE, 
	"VIGCERTIFINI" DATE, 
	"VIGCERTIFFIN" DATE, 
	"PORIVA" NUMBER, 
	"PORCENT" NUMBER, 
	"VRCOMIGR" NUMBER, 
	"VRCOMINOGR" NUMBER, 
	"VRIVACOMISI" NUMBER, 
	"VRIVARETEN" NUMBER, 
	"VRTOTCOMISI" NUMBER
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "TABEXT"
      ACCESS PARAMETERS
      ( records delimited by 0x'0A'
                         logfile 'HELMNOV.log'
                         badfile 'HELMNOV.bad'
                         discardfile 'HELMNOV.dis'
                         fields terminated by '|' lrtrim
                         MISSING FIELD VALUES ARE NULL
                         REJECT ROWS WITH ALL NULL FIELDS
                         (  NITASEGURA
                          , NOMASEGURA
                          , NITTOMADOR
                          , NOMTOMADOR
                          , NOMCIUDAD
                          , TIPREC
                          , COMREC
                          , NRECIBO
                          , SECUENCIA
                          , FPAGO DATE  MASK "DD/MM/YYYY"
                          , NITRESPON
                          , NOMRESPON
                          , CONCEPTO
                          , TIPO
                          , COMPROB
                          , REMISION
                          , NPOLIZA
                          , NCERTIF
                          , VPAGO
                          , PLACA
                          , RAMO
                          , VCOMISI
                          , VCOMISIADI
                          , VPRIMA
                          , VIVA
                          , VOTROS
                          , TPRIMA
                          , VIGPOLINI DATE  MASK "DD/MM/YYYY"
                          , VIGPOLFIN DATE  MASK "DD/MM/YYYY"
                          , VIGCERTIFINI DATE  MASK "DD/MM/YYYY"
                          , VIGCERTIFFIN DATE  MASK "DD/MM/YYYY"
                          , PORIVA
                          , PORCENT
                          , VRCOMIGR
                          , VRCOMINOGR
                          , VRIVACOMISI
                          , VRIVARETEN
                          , VRTOTCOMISI
                        )    )
      LOCATION
       ( "TABEXT":'HELMNOV.csv'
       )
    );
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_HELM_EXT" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_HELM_EXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_HELM_EXT" TO "CONF_DWH";
