--------------------------------------------------------
--  DDL for Table INT_FACT_AGENTES_WILLIS_EXT
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_FACT_AGENTES_WILLIS_EXT" 
   (	"RECIBO" NUMBER, 
	"FRECAU" DATE, 
	"MONRECAU" NUMBER, 
	"NFACTURA" NUMBER, 
	"FFACT" DATE, 
	"PENDPAG" VARCHAR2(20 BYTE), 
	"TOTTRANSAC" NUMBER, 
	"PORCOMISI" NUMBER, 
	"PORPARTICI" NUMBER, 
	"PRIMA" NUMBER, 
	"IVAPRIMA" NUMBER, 
	"VRCOMISI" NUMBER, 
	"IVACOMISI" NUMBER, 
	"COMISIVA" NUMBER, 
	"NITTOMAD" NUMBER, 
	"NOMTOMAD" VARCHAR2(200 BYTE), 
	"REGTOMAD" VARCHAR2(50 BYTE), 
	"NREFER" VARCHAR2(50 BYTE), 
	"NCARAT" NUMBER, 
	"NVERSION" NUMBER, 
	"NITASEGUR" NUMBER, 
	"NOMASEGUR" VARCHAR2(200 BYTE), 
	"NRAMO" VARCHAR2(20 BYTE), 
	"NPOLIZA" VARCHAR2(20 BYTE), 
	"NCERTIF" VARCHAR2(20 BYTE), 
	"TIPRECAUD" VARCHAR2(20 BYTE), 
	"NOMUSU" VARCHAR2(20 BYTE), 
	"NETPAG" NUMBER
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "TABEXT"
      ACCESS PARAMETERS
      ( records delimited by 0x'0A'
                         logfile 'WILLISNOV.log'
                         badfile 'WILLISNOV.bad'
                         discardfile 'WILLISNOV.dis'
                         fields terminated by '|' lrtrim
                         MISSING FIELD VALUES ARE NULL
                         REJECT ROWS WITH ALL NULL FIELDS
                         (  RECIBO
                          , FRECAU DATE  MASK "DD/MM/YYYY"
                          , MONRECAU
                          , NFACTURA
                          , FFACT DATE  MASK "DD/MM/YYYY"
                          , PENDPAG
                          , TOTTRANSAC
                          , PORCOMISI
                          , PORPARTICI
                          , PRIMA
                          , IVAPRIMA
                          , VRCOMISI
                          , IVACOMISI
                          , COMISIVA
                          , NITTOMAD
                          , NOMTOMAD
                          , REGTOMAD
                          , NREFER
                          , NCARAT
                          , NVERSION
                          , NITASEGUR
                          , NOMASEGUR
                          , NRAMO
                          , NPOLIZA
                          , NCERTIF
                          , TIPRECAUD
                          , NOMUSU
                          , NETPAG
                        )    )
      LOCATION
       ( "TABEXT":'WILLISNOV.csv'
       )
    );
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_WILLIS_EXT" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_WILLIS_EXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_WILLIS_EXT" TO "CONF_DWH";
