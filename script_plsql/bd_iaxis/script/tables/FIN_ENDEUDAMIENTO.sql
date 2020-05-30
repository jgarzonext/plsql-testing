--------------------------------------------------------
--  DDL for Table FIN_ENDEUDAMIENTO
--------------------------------------------------------

  CREATE TABLE "AXIS"."FIN_ENDEUDAMIENTO" 
   (	"SFINANCI" NUMBER, 
	"FCONSULTA" DATE, 
	"CFUENTE" NUMBER, 
	"IMINIMO" NUMBER, 
	"ICAPPAG" NUMBER, 
	"ICAPEND" NUMBER, 
	"IENDTOT" NUMBER, 
	"NCALIFA" NUMBER, 
	"NCALIFB" NUMBER, 
	"NCALIFC" NUMBER, 
	"NCALIFD" NUMBER, 
	"NCALIFE" NUMBER, 
	"NCONSUL" NUMBER, 
	"NSCORE" NUMBER, 
	"NMORA" NUMBER, 
	"ICUPOG" NUMBER, 
	"ICUPOS" NUMBER, 
	"FCUPO" DATE, 
	"CRESTRIC" NUMBER, 
	"TCONCEPC" VARCHAR2(2000 BYTE), 
	"TCONCEPS" VARCHAR2(2000 BYTE), 
	"TCBUREA" VARCHAR2(2000 BYTE), 
	"TCOTROS" VARCHAR2(2000 BYTE), 
	"NINCUMP" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."SFINANCI" IS 'Identificador ficha financiera';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."FCONSULTA" IS 'Fecha consulta central';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."CFUENTE" IS 'Fuente de Informaci�n V.F 8001076';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."IMINIMO" IS 'Ingreso m�nimo probable';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."ICAPPAG" IS 'Capacidad de pago';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."ICAPEND" IS 'Capacidad de endeuda';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."IENDTOT" IS 'Endeudamiento total financiero';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."NCALIFA" IS 'Sumatoria Calificaci�n A';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."NCALIFB" IS 'Sumatoria Calificaci�n B';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."NCALIFC" IS 'Sumatoria Calificaci�n C';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."NCALIFD" IS 'Sumatoria Calificaci�n D';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."NCALIFE" IS 'Sumatoria Calificaci�n E';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."NCONSUL" IS 'N�mero de consultas �ltimos 6 meses';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."NSCORE" IS 'Puntaje score';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."NMORA" IS 'Probabilidad Mora';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."ICUPOG" IS 'Cupo del garantizado';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."ICUPOS" IS 'Cupo sugerido';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."FCUPO" IS 'Fecha cupo';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."CRESTRIC" IS 'Cliente restringido por V.F. 8001077';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."TCONCEPC" IS 'Concepto financiero del cliente';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."TCONCEPS" IS 'Concepto del cliente sucursal';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."TCBUREA" IS 'Concepto Bureau y/o Gerencia tecnica';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."TCOTROS" IS 'Concepto otras areas';
   COMMENT ON COLUMN "AXIS"."FIN_ENDEUDAMIENTO"."NINCUMP" IS 'Probabilidad de incumplimiento';
  GRANT UPDATE ON "AXIS"."FIN_ENDEUDAMIENTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIN_ENDEUDAMIENTO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FIN_ENDEUDAMIENTO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FIN_ENDEUDAMIENTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIN_ENDEUDAMIENTO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FIN_ENDEUDAMIENTO" TO "PROGRAMADORESCSI";