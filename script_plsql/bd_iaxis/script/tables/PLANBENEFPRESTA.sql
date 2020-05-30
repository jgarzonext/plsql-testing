--------------------------------------------------------
--  DDL for Table PLANBENEFPRESTA
--------------------------------------------------------

  CREATE TABLE "AXIS"."PLANBENEFPRESTA" 
   (	"SPRESTAPLAN" NUMBER(6,0), 
	"SPERSON" NUMBER(10,0), 
	"CTIPCAP" NUMBER(1,0), 
	"CPERIOD" NUMBER(2,0), 
	"FINICIO" DATE, 
	"IMPORTE" NUMBER, 
	"NPARTOT" NUMBER(25,6), 
	"CESTADO" NUMBER(1,0), 
	"NRETENC" NUMBER(5,2), 
	"IREDUC" NUMBER, 
	"IREDUCSN" VARCHAR2(1 BYTE), 
	"NRETENCSN" VARCHAR2(1 BYTE), 
	"CIMPRES" VARCHAR2(1 BYTE), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"NREVANU" NUMBER(2,0), 
	"FPROREV" DATE, 
	"PREVALO" NUMBER(6,3), 
	"FMODIFI" DATE, 
	"CTIPREV" NUMBER(1,0), 
	"IREVALO" NUMBER(25,6), 
	"NPARPOS2006" NUMBER(25,6), 
	"NPARANT2007" NUMBER(25,6), 
	"CTIPBAN" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."SPRESTAPLAN" IS 'Id prestación';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."SPERSON" IS 'Persona';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."CTIPCAP" IS 'Tipo de Capital';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."CPERIOD" IS 'Periodicidad de cobro';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."FINICIO" IS 'Fecha de cobro';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."IMPORTE" IS 'Importe de cobro';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."NPARTOT" IS 'Participaciones de cobro';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."CESTADO" IS 'Estado';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."CBANCAR" IS 'Cuenta Bancaria';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."NREVANU" IS 'Tipo revalorización';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."FPROREV" IS 'Próxima revalorización';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."PREVALO" IS 'Portentaje revalorización';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."FMODIFI" IS 'Última modificación';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."CTIPREV" IS ' Lineal - Geométrica ';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."IREVALO" IS 'Importe base revalorización';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."NPARPOS2006" IS 'Participaciones de aportaciones posteriores a 2006';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."NPARANT2007" IS 'Participaciones de aportaciones anteriores a 2007';
   COMMENT ON COLUMN "AXIS"."PLANBENEFPRESTA"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
  GRANT UPDATE ON "AXIS"."PLANBENEFPRESTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PLANBENEFPRESTA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PLANBENEFPRESTA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PLANBENEFPRESTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PLANBENEFPRESTA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PLANBENEFPRESTA" TO "PROGRAMADORESCSI";
