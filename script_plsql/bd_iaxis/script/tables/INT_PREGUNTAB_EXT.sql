--------------------------------------------------------
--  DDL for Table INT_PREGUNTAB_EXT
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_PREGUNTAB_EXT" 
   (	"CCLA1" VARCHAR2(50 BYTE), 
	"CCLA2" VARCHAR2(50 BYTE), 
	"CCLA3" VARCHAR2(50 BYTE), 
	"CCLA4" VARCHAR2(50 BYTE), 
	"CCLA5" VARCHAR2(50 BYTE), 
	"CCLA6" VARCHAR2(50 BYTE), 
	"CCLA7" VARCHAR2(50 BYTE), 
	"CCLA8" VARCHAR2(50 BYTE), 
	"CCLA9" VARCHAR2(50 BYTE), 
	"CCLA10" VARCHAR2(50 BYTE), 
	"NVAL1" VARCHAR2(50 BYTE), 
	"NVAL2" VARCHAR2(50 BYTE), 
	"NVAL3" VARCHAR2(50 BYTE), 
	"NVAL4" VARCHAR2(50 BYTE), 
	"NVAL5" VARCHAR2(50 BYTE), 
	"NVAL6" VARCHAR2(50 BYTE), 
	"NVAL7" VARCHAR2(50 BYTE), 
	"NVAL8" VARCHAR2(50 BYTE), 
	"NVAL9" VARCHAR2(50 BYTE), 
	"NVAL10" VARCHAR2(50 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "TABEXT"
      ACCESS PARAMETERS
      ( records delimited by 0X'0D0A'
                   discardfile 'dis_Iint_preguntab_ext_%a_%p.dis'
                   badfile 'bad_int_preguntab_ext_%a_%p.bad'
                   logfile 'log_int_preguntab_ext_%a_%p.log'
                   fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
                   MISSING FIELD VALUES ARE NULL
                   REJECT ROWS WITH ALL NULL FIELDS
                   (  CCLA1   VARCHAR2(50),
    CCLA2   VARCHAR2(50),
    CCLA3   VARCHAR2(50),
    CCLA4   VARCHAR2(50),
    CCLA5   VARCHAR2(50),
    CCLA6   VARCHAR2(50),
    CCLA7   VARCHAR2(50),
    CCLA8   VARCHAR2(50),
    CCLA9   VARCHAR2(50),
    CCLA10  VARCHAR2(50),
    NVAL1   VARCHAR2(50),
    NVAL2   VARCHAR2(50),
    NVAL3   VARCHAR2(50),
    NVAL4   VARCHAR2(50),
    NVAL5   VARCHAR2(50),
    NVAL6   VARCHAR2(50),
    NVAL7   VARCHAR2(50),
    NVAL8   VARCHAR2(50),
    NVAL9   VARCHAR2(50),
    NVAL10  VARCHAR2(50)
     )                              )
      LOCATION
       ( "TABEXT":'Carga_pregunta.csv'
       )
    );
  GRANT SELECT ON "AXIS"."INT_PREGUNTAB_EXT" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."INT_PREGUNTAB_EXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_PREGUNTAB_EXT" TO "CONF_DWH";
