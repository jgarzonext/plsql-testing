--------------------------------------------------------
--  DDL for Table PERLOPD_CONTACTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PERLOPD_CONTACTOS" 
   (	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CMODCON" NUMBER, 
	"CTIPCON" NUMBER(2,0), 
	"TCOMCON" VARCHAR2(100 BYTE), 
	"TVALCON" VARCHAR2(100 BYTE), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"NUM_LOPD" NUMBER, 
	"FLOPD" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PERLOPD_CONTACTOS"."SPERSON" IS 'Secuencia unica de identificacion de una persona';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CONTACTOS"."CAGENTE" IS 'C�digo agente';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CONTACTOS"."CMODCON" IS 'Secuencia modo contacto';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CONTACTOS"."CTIPCON" IS 'C�digo tipo contacto';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CONTACTOS"."TCOMCON" IS 'Especificaci�n del medio';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CONTACTOS"."TVALCON" IS 'Valor contacto';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CONTACTOS"."CUSUARI" IS 'C�digo usuario modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CONTACTOS"."FMOVIMI" IS 'Fecha modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CONTACTOS"."NUM_LOPD" IS 'N�mero de orden de hist�rico';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CONTACTOS"."FLOPD" IS 'Fecha de traspaso a las tablas PERLOPD';
   COMMENT ON TABLE "AXIS"."PERLOPD_CONTACTOS"  IS 'Tabla con los contactos de la persona';
  GRANT UPDATE ON "AXIS"."PERLOPD_CONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERLOPD_CONTACTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PERLOPD_CONTACTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PERLOPD_CONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERLOPD_CONTACTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PERLOPD_CONTACTOS" TO "PROGRAMADORESCSI";