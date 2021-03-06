--------------------------------------------------------
--  DDL for Table INT_CARGA_GENERICO_EXT
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_CARGA_GENERICO_EXT" 
   (	"TIPOREGISTRO" VARCHAR2(10 BYTE), 
	"CAMPO01" VARCHAR2(4000 BYTE), 
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
      ( records delimited by 0X'0D0A'
                   discardfile 'dis_INT_CARGA_GENERICO_EXT_%a_%p.dis'
                   badfile 'bad_INT_CARGA_GENERICO_EXT_%a_%p.bad'
                   logfile 'log_INT_CARGA_GENERICO_EXT_%a_%p.log'
                   fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
                   MISSING FIELD VALUES ARE NULL
                   REJECT ROWS WITH ALL NULL FIELDS
                   (  TIPOREGISTRO  char(10),
                                          CAMPO01 char(10),
                                          CAMPO02 char(4000),
                                          CAMPO03 char(4000),
                                          CAMPO04 char(4000),
                                          CAMPO05 char(4000),
                                          CAMPO06 char(4000),
                                          CAMPO07 char(4000),
                                          CAMPO08 char(4000),
                                          CAMPO09 char(4000),
                                          CAMPO10 char(4000),
                                          CAMPO11 char(4000),
                                          CAMPO12 char(4000),
                                          CAMPO13 char(4000),
                                          CAMPO14 char(4000),
                                          CAMPO15 char(4000),
                                          CAMPO16 char(4000),
                                          CAMPO17 char(4000),
                                          CAMPO18 char(4000),
                                          CAMPO19 char(4000),
                                          CAMPO20 char(4000),
                                          CAMPO21 char(4000),
                                          CAMPO22 char(4000),
                                          CAMPO23 char(4000),
                                          CAMPO24 char(4000),
                                          CAMPO25 char(4000),
                                          CAMPO26 char(4000),
                                          CAMPO27 char(4000),
                                          CAMPO28 char(4000),
                                          CAMPO29 char(4000),
                                          CAMPO30 char(4000),
                                          CAMPO31 char(4000),
                                          CAMPO32 char(4000),
                                          CAMPO33 char(4000),
                                          CAMPO34 char(4000),
                                          CAMPO35 char(4000),
                                          CAMPO36 char(4000),
                                          CAMPO37 char(4000),
                                          CAMPO38 char(4000),
                                          CAMPO39 char(4000),
                                          CAMPO40 char(4000),
                                          CAMPO41 char(4000),
                                          CAMPO42 char(4000),
                                          CAMPO43 char(4000),
                                          CAMPO44 char(4000),
                                          CAMPO45 char(4000),
                                          CAMPO46 char(4000),
                                          CAMPO47 char(4000),
                                          CAMPO48 char(4000),
                                          CAMPO49 char(4000),
                                          CAMPO50 char(4000),
                                          CAMPO51 char(4000),
                                          CAMPO52 char(4000),
                                          CAMPO53 char(4000),
                                          CAMPO54 char(4000),
                                          CAMPO55 char(4000),
                                          CAMPO56 char(4000),
                                          CAMPO57 char(4000),
                                          CAMPO58 char(4000),
                                          CAMPO59 char(4000),
                                          CAMPO60 char(4000)
                                           )                                       )
      LOCATION
       ( "TABEXT":'Pruebas_tiquetes.csv'
       )
    );
  GRANT SELECT ON "AXIS"."INT_CARGA_GENERICO_EXT" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."INT_CARGA_GENERICO_EXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_GENERICO_EXT" TO "CONF_DWH";
