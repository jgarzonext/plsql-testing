--------------------------------------------------------
--  DDL for Table INT_CARGA_OUTSOURCING
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_CARGA_OUTSOURCING" 
   (	"SUCURSAL" VARCHAR2(200 BYTE), 
	"PROVEEDOR" VARCHAR2(200 BYTE), 
	"NIT_CLIENTE" VARCHAR2(200 BYTE), 
	"NOMBRE_CLIENTE" VARCHAR2(200 BYTE), 
	"POLIZA" VARCHAR2(200 BYTE), 
	"CERTIF" VARCHAR2(200 BYTE), 
	"FGESTI" VARCHAR2(200 BYTE), 
	"CODGES" VARCHAR2(200 BYTE), 
	"USU_PROV" VARCHAR2(200 BYTE), 
	"DIRECCION" VARCHAR2(200 BYTE), 
	"TELEFONO" VARCHAR2(200 BYTE), 
	"VALOR_POLIZA" VARCHAR2(200 BYTE), 
	"VIGENCIA_POL" VARCHAR2(200 BYTE), 
	"NOM_USER" VARCHAR2(200 BYTE), 
	"CAGENTE" VARCHAR2(200 BYTE), 
	"CONCEPTO" VARCHAR2(200 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "TABEXT"
      ACCESS PARAMETERS
      ( records delimited by 0x'0A'
                         logfile 'CARGA_FACTURARAS_MEDIADOR.txt.log'
                         badfile 'CARGA_FACTURARAS_MEDIADOR.txt.bad'
                         discardfile 'CARGA_FACTURARAS_MEDIADOR.txt.dis'
                         fields terminated by ',' LRTRIM
                         MISSING FIELD VALUES ARE NULL
                         REJECT ROWS WITH ALL NULL FIELDS
                         (  SUCURSAL       ,
								    PROVEEDOR      ,
								    NIT_CLIENTE    ,
									 NOMBRE_CLIENTE ,
									 POLIZA         ,
									 CERTIF         ,
									 FGESTI         ,
									 CODGES         ,
									 USU_PROV       ,
									 DIRECCION      ,
									 TELEFONO       ,
									 VALOR_POLIZA   ,
									 VIGENCIA_POL   ,
									 NOM_USER       ,
									 CAGENTE        ,
									 CONCEPTO
                        )                    )
      LOCATION
       ( "TABEXT":'CARGA_FACTURARAS_MEDIADOR.txt'
       )
    );
  GRANT SELECT ON "AXIS"."INT_CARGA_OUTSOURCING" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."INT_CARGA_OUTSOURCING" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_OUTSOURCING" TO "CONF_DWH";
