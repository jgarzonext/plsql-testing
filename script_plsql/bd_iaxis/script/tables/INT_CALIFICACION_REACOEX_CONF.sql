--------------------------------------------------------
--  DDL for Table INT_CALIFICACION_REACOEX_CONF
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_CALIFICACION_REACOEX_CONF" 
   (	"CONSECUTIVO" NUMBER, 
	"COMPANIA" VARCHAR2(2000 BYTE), 
	"PAIS" VARCHAR2(200 BYTE), 
	"CALIFICACION_1" VARCHAR2(200 BYTE), 
	"CALIFICACION_2" VARCHAR2(200 BYTE), 
	"CALIFICACION_3" VARCHAR2(200 BYTE), 
	"CALIFICACION_4" VARCHAR2(200 BYTE), 
	"OFC_REP" VARCHAR2(200 BYTE), 
	"ACTUALIZACION" VARCHAR2(200 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "TABEXT"
      ACCESS PARAMETERS
      ( records delimited by 0x'0A'
                   logfile '201712_Carga_Calificadora_REACOEX.csv.log'
                   badfile '201712_Carga_Calificadora_REACOEX.csv.bad'
                   discardfile '201712_Carga_Calificadora_REACOEX.csv.dis'
                   fields terminated by ';' lrtrim
                   MISSING FIELD VALUES ARE NULL
                   REJECT ROWS WITH ALL NULL FIELDS
                   (  Consecutivo          ,
                      Compania          ,
                      Pais           ,
                      Calificacion_1             ,
                      Calificacion_2           ,
                      Calificacion_3             ,
                      Calificacion_4      ,
                      Ofc_Rep            ,
                      Actualizacion

                  )        )
      LOCATION
       ( '201712_Carga_Calificadora_REACOEX.csv'
       )
    );
  GRANT SELECT ON "AXIS"."INT_CALIFICACION_REACOEX_CONF" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."INT_CALIFICACION_REACOEX_CONF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CALIFICACION_REACOEX_CONF" TO "CONF_DWH";
