--------------------------------------------------------
--  DDL for Table MIG_CUADROCES_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CUADROCES_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"NVERSIO" NUMBER(2,0), 
	"SCONTRA" NUMBER(6,0), 
	"CTRAMO" NUMBER(2,0), 
	"CCOMREA" NUMBER(2,0), 
	"PCESION" NUMBER(8,0), 
	"NPLENOS" NUMBER(5,0), 
	"ICESFIJ" NUMBER, 
	"ICOMFIJ" NUMBER, 
	"ISCONTA" NUMBER, 
	"PRESERV" NUMBER(5,0), 
	"PINTRES" NUMBER(7,0), 
	"ILIACDE" NUMBER, 
	"PPAGOSL" NUMBER(5,0), 
	"CCORRED" NUMBER(4,0), 
	"CINTRES" NUMBER(2,0), 
	"CINTREF" NUMBER(3,0), 
	"CRESREF" NUMBER(3,0), 
	"IRESERV" NUMBER, 
	"PTASAJ" NUMBER(5,0), 
	"FULTLIQ" DATE, 
	"IAGREGA" NUMBER, 
	"IMAXAGR" NUMBER, 
	"CTIPCOMIS" NUMBER(1,0), 
	"PCTCOMIS" NUMBER(5,0), 
	"CTRAMOCOMISION" NUMBER(5,0), 
	"CFRERES" NUMBER(2,0), 
	"PCTGASTOS" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_CUADROCES_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CUADROCES_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CUADROCES_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_CUADROCES_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CUADROCES_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CUADROCES_BS" TO "PROGRAMADORESCSI";
