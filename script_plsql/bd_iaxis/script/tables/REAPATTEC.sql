CREATE  TABLE "TALLER79"."REAPATTEC" 
   ("NANIO" NUMBER(4,0) NOT NULL ENABLE,
	"NTRIM" NUMBER(1,0) NOT NULL ENABLE, 
	"NMOVIMI" NUMBER NOT NULL ENABLE,
  "FINITRIM" DATE ,
	"FFINTRIM" DATE , 
  "FMOVINI" DATE , 
	"FMOVFIN" DATE,
  "IPATTEC" NUMBER NOT NULL ENABLE,
  "CMONEDA" VARCHAR2(3 BYTE) NOT NULL ENABLE,
  "CUSUALT" VARCHAR2(20 BYTE), 
  "FUSUALT" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FUSUMOD" DATE ,
CONSTRAINT REAPATTEC_PK PRIMARY KEY (NANIO,NTRIM, NMOVIMI));
  

   COMMENT ON COLUMN "REAPATTEC"."NANIO" IS 'A�o del trimestre';
   COMMENT ON COLUMN "REAPATTEC"."NTRIM" IS 'Cuarto de a�o o n�mero del trimestre';
   COMMENT ON COLUMN "REAPATTEC"."NMOVIMI" IS 'N�mero de movimiento del trimestre';
   COMMENT ON COLUMN "REAPATTEC"."FINITRIM" IS 'Fecha de inicio del trimestre';
   COMMENT ON COLUMN "REAPATTEC"."FFINTRIM" IS 'Fecha de fin del trimestre';
   COMMENT ON COLUMN "REAPATTEC"."FMOVINI" IS 'Fecha inicio de configuraci�n del valor por trimestre';
   COMMENT ON COLUMN "REAPATTEC"."FMOVFIN" IS 'Fecha fin de configuraci�n del valor por trimestre';
   COMMENT ON COLUMN "REAPATTEC"."IPATTEC" IS 'Importe patrimonio t�cnico';
   COMMENT ON COLUMN "REAPATTEC"."CMONEDA" IS 'Moneda';
   COMMENT ON COLUMN "REAPATTEC"."CUSUALT" IS 'C�digo usuario alta del registro';  
   COMMENT ON COLUMN "REAPATTEC"."FUSUALT" IS 'Fecha alta del registro';
   COMMENT ON COLUMN "REAPATTEC"."CUSUMOD" IS 'C�digo usuario modificaci�n del registro';
   COMMENT ON COLUMN "REAPATTEC"."FUSUMOD" IS 'Fecha modificaci�n del registro';
   COMMENT ON TABLE "REAPATTEC"  IS 'Tabla de configuraci�n de patrimonio t�cnico trimestral';
COMMIT;   
