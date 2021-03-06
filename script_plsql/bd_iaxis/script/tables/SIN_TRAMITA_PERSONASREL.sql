--------------------------------------------------------
--  DDL for Table SIN_TRAMITA_PERSONASREL
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_TRAMITA_PERSONASREL" 
   (	"NSINIES" VARCHAR2(14 BYTE), 
	"NTRAMIT" NUMBER(4,0), 
	"NPERSREL" NUMBER(4,0), 
	"CTIPIDE" NUMBER(3,0), 
	"NNUMIDE" VARCHAR2(50 BYTE), 
	"TNOMBRE" VARCHAR2(200 BYTE), 
	"TAPELLI1" VARCHAR2(200 BYTE), 
	"TAPELLI2" VARCHAR2(60 BYTE), 
	"TTELEFON" VARCHAR2(60 BYTE), 
	"SPERSON" NUMBER, 
	"TDESC" VARCHAR2(2000 BYTE), 
	"TNOMBRE2" VARCHAR2(60 BYTE), 
	"TEMAIL" VARCHAR2(60 BYTE), 
	"TMOVIL" VARCHAR2(60 BYTE), 
	"CTIPREL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."NSINIES" IS 'C�digo de siniestro.';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."NTRAMIT" IS 'N�mero de tramitaci�n.';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."NPERSREL" IS 'C�digo persona relacionada.';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."CTIPIDE" IS 'C�digo tipo de Identifi';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."NNUMIDE" IS 'Identificador �nico de la Persona.';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."TNOMBRE" IS 'Nombre persona relacionada.';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."TAPELLI1" IS 'Primer Apellido persona relacionada.';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."TAPELLI2" IS 'Segundo Apellido persona relacionada.';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."TTELEFON" IS 'Tel�fono persona relacionada';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."SPERSON" IS 'C�digo persona.';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."TDESC" IS 'Descripci�n persona';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."TNOMBRE2" IS 'Segundo nombre';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."TEMAIL" IS 'Email';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."TMOVIL" IS 'Telf. m�vil';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PERSONASREL"."CTIPREL" IS 'Tipo de persona relacionada VF.800111';
   COMMENT ON TABLE "AXIS"."SIN_TRAMITA_PERSONASREL"  IS 'Personas relacionadas con el siniestro.';
  GRANT UPDATE ON "AXIS"."SIN_TRAMITA_PERSONASREL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_PERSONASREL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_TRAMITA_PERSONASREL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_TRAMITA_PERSONASREL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_PERSONASREL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_PERSONASREL" TO "PROGRAMADORESCSI";
