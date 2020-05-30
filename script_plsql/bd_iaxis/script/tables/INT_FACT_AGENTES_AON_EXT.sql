--------------------------------------------------------
--  DDL for Table INT_FACT_AGENTES_AON_EXT
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_FACT_AGENTES_AON_EXT" 
   (	"NOMCLIENTE" VARCHAR2(50 BYTE), 
	"NITCLIENTE" VARCHAR2(50 BYTE), 
	"NOMSUCUR" VARCHAR2(200 BYTE), 
	"NOMTOMAD" VARCHAR2(200 BYTE), 
	"NITTOMAD" VARCHAR2(50 BYTE), 
	"FCORTE" DATE, 
	"NLIQUIDACION" NUMBER, 
	"NOMASEGURA" VARCHAR2(200 BYTE), 
	"DESCRAMO" VARCHAR2(200 BYTE), 
	"NPOLIZA" VARCHAR2(20 BYTE), 
	"NANEXO" NUMBER, 
	"NORDEN" NUMBER, 
	"NCOMPROB" NUMBER, 
	"TCOBRANZA" VARCHAR2(20 BYTE), 
	"NFACT" VARCHAR2(20 BYTE), 
	"CTAMON" NUMBER, 
	"PMAPROP" NUMBER, 
	"IMPPAGO" NUMBER, 
	"TCML" NUMBER, 
	"PAGOML" NUMBER, 
	"IVAPRIMA" NUMBER, 
	"COMFIJA" NUMBER, 
	"NCERTIF" VARCHAR2(20 BYTE), 
	"PORCOMISI" NUMBER, 
	"COMTOTAL" NUMBER, 
	"COMML" NUMBER, 
	"IVACOMISI" NUMBER, 
	"IVACOMML" NUMBER, 
	"NETOREMI" NUMBER, 
	"NETOREMIML" NUMBER
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "TABEXT"
      ACCESS PARAMETERS
      ( records delimited by 0x'0A'
                         logfile 'AONNOV.log'
                         badfile 'AONNOV.bad'
                         discardfile 'AONNOV.dis'
                         fields terminated by '|' lrtrim
                         MISSING FIELD VALUES ARE NULL
                         REJECT ROWS WITH ALL NULL FIELDS
                         (  NOMCLIENTE
                          , NITCLIENTE
                          , NOMSUCUR
                                  , NOMTOMAD
                                , NITTOMAD
                          , FCORTE DATE  MASK "DD/MM/YYYY"
                          , NLIQUIDACION
                          , NOMASEGURA
                          , DESCRAMO
                          , NPOLIZA
                          , NANEXO
                          , NORDEN
                          , NCOMPROB
                          , TCOBRANZA
                          , NFACT
                          , CTAMON
                          , PMAPROP
                          , IMPPAGO
                          , TCML
                          , PAGOML
                          , IVAPRIMA
                          , COMFIJA
                          , NCERTIF
                          , PORCOMISI
                          , COMTOTAL
                          , COMML
                          , IVACOMISI
                          , IVACOMML
                          , NETOREMI
                          , NETOREMIML
                        )    )
      LOCATION
       ( "TABEXT":'AONNOV.csv'
       )
    )
   REJECT LIMIT UNLIMITED ;
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_AON_EXT" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_AON_EXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_AON_EXT" TO "CONF_DWH";
