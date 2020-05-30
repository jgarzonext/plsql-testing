--------------------------------------------------------
--  DDL for Table INT_FACT_AGENTES_CORRECOL_EXT
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_FACT_AGENTES_CORRECOL_EXT" 
   (	"TIPOPAG" NUMBER, 
	"NDOCUMEN" NUMBER, 
	"FRECI" DATE, 
	"CODCLIE" NUMBER, 
	"CODCLIE2" NUMBER, 
	"VTOTAL" NUMBER, 
	"VDESCAR" NUMBER, 
	"DEPOSITO" NUMBER, 
	"ESPRIMA" VARCHAR2(50 BYTE), 
	"ESINGRESO" VARCHAR2(20 BYTE), 
	"ESPECIAL" VARCHAR2(20 BYTE), 
	"TIPODESC" VARCHAR2(20 BYTE), 
	"CODCIA" NUMBER, 
	"SIGLA" VARCHAR2(20 BYTE), 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"NCTA" NUMBER, 
	"SALPRIMA" NUMBER, 
	"SALGASTOS" NUMBER, 
	"SALIVA" NUMBER, 
	"SALTOTAL" NUMBER, 
	"PORCOMI" NUMBER, 
	"SALCOMISI" NUMBER, 
	"DSCTOCOMI" VARCHAR2(20 BYTE), 
	"FABONO" NUMBER, 
	"NOTAPAGO" VARCHAR2(200 BYTE), 
	"NCORTE" NUMBER, 
	"SEQFACT" NUMBER, 
	"CERRADO" VARCHAR2(20 BYTE), 
	"TECNICO" NUMBER, 
	"SOCIO" NUMBER, 
	"COMERCIAL" NUMBER, 
	"ESTADO" VARCHAR2(20 BYTE), 
	"FESTADO" DATE, 
	"NOMTOMAD" VARCHAR2(200 BYTE), 
	"NOMASEGURA" VARCHAR2(200 BYTE), 
	"NOMCIA" VARCHAR2(200 BYTE), 
	"USUARIO" VARCHAR2(20 BYTE), 
	"FECINTE" DATE, 
	"PORPARTI" NUMBER, 
	"PJEINT" NUMBER, 
	"NPLAGE" NUMBER, 
	"NCOMP" VARCHAR2(200 BYTE), 
	"FCOMP" VARCHAR2(200 BYTE), 
	"VCOMP" NUMBER, 
	"PLACA" VARCHAR2(100 BYTE), 
	"TIPNEG" VARCHAR2(200 BYTE), 
	"DEVEFEC" VARCHAR2(200 BYTE), 
	"SOCIORI" NUMBER, 
	"CORPORATIVO" NUMBER, 
	"RAMOCIA" VARCHAR2(20 BYTE), 
	"CMONEDA" VARCHAR2(20 BYTE), 
	"PRIDOLAR" NUMBER, 
	"TRMCIA" NUMBER, 
	"INNOCORR" VARCHAR2(200 BYTE), 
	"VEFEC" NUMBER, 
	"VCHEQ" NUMBER, 
	"VPAGARE" NUMBER, 
	"NPAGARE" VARCHAR2(20 BYTE), 
	"NCHEQ" NUMBER, 
	"BANCO" NUMBER, 
	"NTARJE" VARCHAR2(50 BYTE), 
	"ENTITARJE" NUMBER, 
	"VOTROS" NUMBER, 
	"VAPLICA" NUMBER, 
	"SAP" VARCHAR2(50 BYTE), 
	"FSAP" VARCHAR2(200 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "TABEXT"
      ACCESS PARAMETERS
      ( records delimited by 0x'0A'
                         logfile 'CORRECOLNOV.log'
                         badfile 'CORRECOLNOV.bad'
                         discardfile 'CORRECOLNOV.dis'
                         fields terminated by '|' lrtrim
                         MISSING FIELD VALUES ARE NULL
                         REJECT ROWS WITH ALL NULL FIELDS
                         (  TIPOPAG
                          , NDOCUMEN
                          , FRECI DATE  MASK "DD/MM/YYYY"
                          , CODCLIE
                          , CODCLIE2
                          , VTOTAL
                          , VDESCAR
                          , DEPOSITO
                          , ESPRIMA
                          , ESINGRESO
                          , ESPECIAL
                          , TIPODESC
                          , CODCIA
                          , SIGLA
                          , NPOLIZA
                          , NCERTIF
                          , NCTA
                          , SALPRIMA
                          , SALGASTOS
                          , SALIVA
                          , SALTOTAL
                          , PORCOMI
                          , SALCOMISI
                          , DSCTOCOMI
                          , FABONO
                          , NOTAPAGO
                          , NCORTE
                          , SEQFACT
                          , CERRADO
                          , TECNICO
                          , SOCIO
                          , COMERCIAL
                          , ESTADO
                          , FESTADO DATE  MASK "DD/MM/YYYY"
                          , NOMTOMAD
                          , NOMASEGURA
                          , NOMCIA
                          , USUARIO
                          , FECINTE DATE  MASK "DD/MM/YYYY"
                          , PORPARTI
                          , PJEINT
                          , NPLAGE
                          , NCOMP
                          , FCOMP
                          , VCOMP
                          , PLACA
                          , TIPNEG
                          , DEVEFEC
                          , SOCIORI
                          , CORPORATIVO
                          , RAMOCIA
                          , CMONEDA
                          , PRIDOLAR
                          , TRMCIA
                          , INNOCORR
                          , VEFEC
                          , VCHEQ
                          , VPAGARE
                          , NPAGARE
                          , NCHEQ
                          , BANCO
                          , NTARJE
                          , ENTITARJE
                          , VOTROS
                          , VAPLICA
                          , SAP
                          , FSAP
                        )    )
      LOCATION
       ( "TABEXT":'CORRECOLNOV.csv'
       )
    );
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_CORRECOL_EXT" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_CORRECOL_EXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FACT_AGENTES_CORRECOL_EXT" TO "CONF_DWH";
