--------------------------------------------------------
--  DDL for Table INT_FACTURAS_AGENTES_EXT
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_FACTURAS_AGENTES_EXT" 
   (	"CEMPRES" NUMBER, 
	"CAGENTE" NUMBER, 
	"NRECIBO" NUMBER, 
	"FCOBRO" DATE, 
	"CORTECUENTA" NUMBER, 
	"CMONEDA" NUMBER, 
	"ITOTALR" NUMBER, 
	"ICOMISION" NUMBER, 
	"IVA" NUMBER, 
	"IRETEFUENTE" NUMBER, 
	"IRETEIVA" NUMBER, 
	"IRETEICA" NUMBER
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "TABEXT"
      ACCESS PARAMETERS
      ( records delimited by 0x'0A'
                         logfile 'MAR COR PROD.log'
                         badfile 'MAR COR PROD.bad'
                         discardfile 'MAR COR PROD.dis'
                         fields terminated by '|' lrtrim
                         MISSING FIELD VALUES ARE NULL
                         REJECT ROWS WITH ALL NULL FIELDS
                         ( CAGENTE,
                           NRECIBO,
                           FCOBRO DATE  MASK "DDMMYYYY",
                           CORTECUENTA,
                           CMONEDA,
                           ITOTALR,
                           ICOMISION,
                           IVA,
                           IRETEFUENTE,
                           IRETEIVA,
                           IRETEICA
                        )        )
      LOCATION
       ( "TABEXT":'MAR COR PROD.csv'
       )
    );
  GRANT SELECT ON "AXIS"."INT_FACTURAS_AGENTES_EXT" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."INT_FACTURAS_AGENTES_EXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FACTURAS_AGENTES_EXT" TO "CONF_DWH";
