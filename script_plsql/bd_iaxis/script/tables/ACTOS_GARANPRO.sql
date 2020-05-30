--------------------------------------------------------
--  DDL for Table ACTOS_GARANPRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."ACTOS_GARANPRO" 
   (	"CACTO" VARCHAR2(10 BYTE), 
	"FVIGENCIA" DATE, 
	"AGR_SALUD" VARCHAR2(3 BYTE), 
	"CGARANT" NUMBER(5,0), 
	"FFINVIG" DATE, 
	"CGRUPO" VARCHAR2(3 BYTE), 
	"CDIF" VARCHAR2(3 BYTE), 
	"GUIAMED" VARCHAR2(2 BYTE), 
	"REVISION" VARCHAR2(2 BYTE), 
	"CSEXO" NUMBER(1,0), 
	"EDADMIN" NUMBER(3,0), 
	"EDADMAX" NUMBER(3,0), 
	"NREPACTO" NUMBER(5,0), 
	"CESTADO" NUMBER(1,0), 
	"IBASE" NUMBER, 
	"IREEMB" NUMBER, 
	"NACTO" NUMBER(4,0), 
	"IREEMBANY" NUMBER, 
	"NACTOANY" NUMBER(4,0), 
	"IMAXREEMB" NUMBER, 
	"NMAXACTO" NUMBER(4,0), 
	"IMPREGALO" NUMBER, 
	"PABONADO" NUMBER(6,2), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."CACTO" IS 'C�digo de acto m�dico';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."FVIGENCIA" IS 'Fecha inicio vigencia';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."AGR_SALUD" IS 'C�digo grupo de productos (parproducto AGR_SALUD)';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."CGARANT" IS 'C�digo de garantia';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."FFINVIG" IS 'Fecha fin vigencia.';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."CGRUPO" IS 'C�digo grupo de dificultad.Valor por defecto �SG�';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."CDIF" IS 'C�digo dificultad acto.Valor por defecto �00�';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."GUIAMED" IS 'Acto visible en gu�a m�dica (Si, No).';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."REVISION" IS 'Obligatorio revisar acto (Si, No).';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."CSEXO" IS 'Sexo: 1, hombre; 2, mujer; 3, ambos. VF de Axis';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."EDADMIN" IS 'Edad minima realizaci�n acto';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."EDADMAX" IS 'Edad maxima realizaci�n acto';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."NREPACTO" IS 'N� m�ximo de actos x siniestro';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."CESTADO" IS 'Valor Fijo �Estado del acto�: 1 - Activo. 0 - Inactivo.';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."IBASE" IS 'Importe Base';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."IREEMB" IS 'Importe reembolso';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."NACTO" IS 'N� m�ximo de actos x siniestro';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."IREEMBANY" IS 'Importe m�ximo por a�o';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."NACTOANY" IS 'N� m�ximo de actos x a�o';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."IMAXREEMB" IS 'Cantidad m�xima a reembolsar x riesgo';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."NMAXACTO" IS 'N� m�ximo de actos x riesgo';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."IMPREGALO" IS 'Importe regalo. Ej. parto';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."PABONADO" IS 'Porcentaje sobre el importe CASS';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."CUSUARI" IS 'C�digo de usuario';
   COMMENT ON COLUMN "AXIS"."ACTOS_GARANPRO"."FMOVIMI" IS 'Fecha movimiento';
  GRANT UPDATE ON "AXIS"."ACTOS_GARANPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ACTOS_GARANPRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ACTOS_GARANPRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ACTOS_GARANPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ACTOS_GARANPRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ACTOS_GARANPRO" TO "PROGRAMADORESCSI";
