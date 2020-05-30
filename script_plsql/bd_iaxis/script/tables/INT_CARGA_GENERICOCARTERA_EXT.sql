--------------------------------------------------------
--  DDL for Table INT_CARGA_GENERICOCARTERA_EXT
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_CARGA_GENERICOCARTERA_EXT" 
   (	"CAMPO01" VARCHAR2(4000 BYTE), 
	"CAMPO02" VARCHAR2(4000 BYTE), 
	"CAMPO03" VARCHAR2(4000 BYTE), 
	"CAMPO04" VARCHAR2(4000 BYTE), 
	"CAMPO05" VARCHAR2(4000 BYTE), 
	"CAMPO06" VARCHAR2(4000 BYTE), 
	"CAMPO07" VARCHAR2(4000 BYTE), 
	"CAMPO08" VARCHAR2(4000 BYTE), 
	"CAMPO09" VARCHAR2(4000 BYTE), 
	"CAMPO10" VARCHAR2(4000 BYTE), 
	"CAMPO11" VARCHAR2(4000 BYTE), 
	"CAMPO12" VARCHAR2(4000 BYTE), 
	"CAMPO13" VARCHAR2(4000 BYTE), 
	"CAMPO14" VARCHAR2(4000 BYTE), 
	"CAMPO15" VARCHAR2(4000 BYTE), 
	"CAMPO16" VARCHAR2(4000 BYTE), 
	"CAMPO17" VARCHAR2(4000 BYTE), 
	"CAMPO18" VARCHAR2(4000 BYTE), 
	"CAMPO19" VARCHAR2(4000 BYTE), 
	"CAMPO20" VARCHAR2(4000 BYTE), 
	"CAMPO21" VARCHAR2(4000 BYTE), 
	"CAMPO22" VARCHAR2(4000 BYTE), 
	"CAMPO23" VARCHAR2(4000 BYTE), 
	"CAMPO24" VARCHAR2(4000 BYTE), 
	"CAMPO25" VARCHAR2(4000 BYTE), 
	"CAMPO26" VARCHAR2(4000 BYTE), 
	"CAMPO27" VARCHAR2(4000 BYTE), 
	"CAMPO28" VARCHAR2(4000 BYTE), 
	"CAMPO29" VARCHAR2(4000 BYTE), 
	"CAMPO30" VARCHAR2(4000 BYTE), 
	"CAMPO31" VARCHAR2(4000 BYTE), 
	"CAMPO32" VARCHAR2(4000 BYTE), 
	"CAMPO33" VARCHAR2(4000 BYTE), 
	"CAMPO34" VARCHAR2(4000 BYTE), 
	"CAMPO35" VARCHAR2(4000 BYTE), 
	"CAMPO36" VARCHAR2(4000 BYTE), 
	"CAMPO37" VARCHAR2(4000 BYTE), 
	"CAMPO38" VARCHAR2(4000 BYTE), 
	"CAMPO39" VARCHAR2(4000 BYTE), 
	"CAMPO40" VARCHAR2(4000 BYTE), 
	"CAMPO41" VARCHAR2(4000 BYTE), 
	"CAMPO42" VARCHAR2(4000 BYTE), 
	"CAMPO43" VARCHAR2(4000 BYTE), 
	"CAMPO44" VARCHAR2(4000 BYTE), 
	"CAMPO45" VARCHAR2(4000 BYTE), 
	"CAMPO46" VARCHAR2(4000 BYTE), 
	"CAMPO47" VARCHAR2(4000 BYTE), 
	"CAMPO48" VARCHAR2(4000 BYTE), 
	"CAMPO49" VARCHAR2(4000 BYTE), 
	"CAMPO50" VARCHAR2(4000 BYTE), 
	"CAMPO51" VARCHAR2(4000 BYTE), 
	"CAMPO52" VARCHAR2(4000 BYTE), 
	"CAMPO53" VARCHAR2(4000 BYTE), 
	"CAMPO54" VARCHAR2(4000 BYTE), 
	"CAMPO55" VARCHAR2(4000 BYTE), 
	"CAMPO56" VARCHAR2(4000 BYTE), 
	"CAMPO57" VARCHAR2(4000 BYTE), 
	"CAMPO58" VARCHAR2(4000 BYTE), 
	"CAMPO59" VARCHAR2(4000 BYTE), 
	"CAMPO60" VARCHAR2(4000 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "UTLDIR"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    DISCARDFILE 'dis_INT_CARGA_GENERICOCARTERA_EXT_%a_%p.dis'
    BADFILE 'bad_INT_CARGA_GENERICOCARTERA_EXT_%a_%p.bad'
    LOGFILE 'log_INT_CARGA_GENERICOCARTERA_EXT_%a_%p.log'
    FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
    MISSING FIELD VALUES ARE NULL
    REJECT ROWS WITH ALL NULL FIELDS
    (
                           campo01 CHAR(4000),
                           campo02 CHAR(4000),
                           campo03 CHAR(4000),
                           campo04 CHAR(4000),
                           campo05 CHAR(4000),
                           campo06 CHAR(4000),
                           campo07 CHAR(4000),
                           campo08 CHAR(4000),
                           campo09 CHAR(4000),
                           campo10 CHAR(4000),
                           campo11 CHAR(4000),
                           campo12 CHAR(4000),
                           campo13 CHAR(4000),
                           campo14 CHAR(4000),
                           campo15 CHAR(4000),
                           campo16 CHAR(4000),
                           campo17 CHAR(4000),
                           campo18 CHAR(4000),
                           campo19 CHAR(4000),
                           campo20 CHAR(4000),
                           campo21 CHAR(4000),
                           campo22 CHAR(4000),
                           campo23 CHAR(4000),
                           campo24 CHAR(4000),
                           campo25 CHAR(4000),
                           campo26 CHAR(4000),
                           campo27 CHAR(4000),
                           campo28 CHAR(4000),
                           campo29 CHAR(4000),
                           campo30 CHAR(4000),
                           campo31 CHAR(4000),
                           campo32 CHAR(4000),
                           campo33 CHAR(4000),
                           campo34 CHAR(4000),
                           campo35 CHAR(4000),
                           campo36 CHAR(4000),
                           campo37 CHAR(4000),
                           campo38 CHAR(4000),
                           campo39 CHAR(4000),
                           campo40 CHAR(4000),
                           campo41 CHAR(4000),
                           campo42 CHAR(4000),
                           campo43 CHAR(4000),
                           campo44 CHAR(4000),
                           campo45 CHAR(4000),
                           campo46 CHAR(4000),
                           campo47 CHAR(4000),
                           campo48 CHAR(4000),
                           campo49 CHAR(4000),
                           campo50 CHAR(4000),
                           campo51 CHAR(4000),
                           campo52 CHAR(4000),
                           campo53 CHAR(4000),
                           campo54 CHAR(4000),
                           campo55 CHAR(4000),
                           campo56 CHAR(4000),
                           campo57 CHAR(4000),
                           campo58 CHAR(4000),
                           campo59 CHAR(4000),
                           campo60 CHAR(4000)
                            )
                       )
      LOCATION
       ( "TABEXT":'CTA27DIC.csv'
       )
    )
   REJECT LIMIT UNLIMITED ;
  GRANT SELECT ON "AXIS"."INT_CARGA_GENERICOCARTERA_EXT" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."INT_CARGA_GENERICOCARTERA_EXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_GENERICOCARTERA_EXT" TO "CONF_DWH";
