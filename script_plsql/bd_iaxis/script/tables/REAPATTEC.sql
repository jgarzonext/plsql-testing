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
  

   COMMENT ON COLUMN "REAPATTEC"."NANIO" IS 'Año del trimestre';
   COMMENT ON COLUMN "REAPATTEC"."NTRIM" IS 'Cuarto de año o número del trimestre';
   COMMENT ON COLUMN "REAPATTEC"."NMOVIMI" IS 'Número de movimiento del trimestre';
   COMMENT ON COLUMN "REAPATTEC"."FINITRIM" IS 'Fecha de inicio del trimestre';
   COMMENT ON COLUMN "REAPATTEC"."FFINTRIM" IS 'Fecha de fin del trimestre';
   COMMENT ON COLUMN "REAPATTEC"."FMOVINI" IS 'Fecha inicio de configuración del valor por trimestre';
   COMMENT ON COLUMN "REAPATTEC"."FMOVFIN" IS 'Fecha fin de configuración del valor por trimestre';
   COMMENT ON COLUMN "REAPATTEC"."IPATTEC" IS 'Importe patrimonio técnico';
   COMMENT ON COLUMN "REAPATTEC"."CMONEDA" IS 'Moneda';
   COMMENT ON COLUMN "REAPATTEC"."CUSUALT" IS 'Código usuario alta del registro';  
   COMMENT ON COLUMN "REAPATTEC"."FUSUALT" IS 'Fecha alta del registro';
   COMMENT ON COLUMN "REAPATTEC"."CUSUMOD" IS 'Código usuario modificación del registro';
   COMMENT ON COLUMN "REAPATTEC"."FUSUMOD" IS 'Fecha modificación del registro';
   COMMENT ON TABLE "REAPATTEC"  IS 'Tabla de configuración de patrimonio técnico trimestral';
COMMIT;   
