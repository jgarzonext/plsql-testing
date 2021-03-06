--------------------------------------------------------
--  DDL for Table HIS_LRE_PERSONAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_LRE_PERSONAS" 
   (	"SPERLRE" NUMBER(10,0), 
	"NNUMIDE" VARCHAR2(50 BYTE), 
	"NORDIDE" NUMBER(2,0), 
	"CTIPIDE" NUMBER(3,0), 
	"CTIPPER" NUMBER(3,0), 
	"TNOMAPE" VARCHAR2(400 BYTE), 
	"TNOMBRE1" VARCHAR2(60 BYTE), 
	"TNOMBRE2" VARCHAR2(60 BYTE), 
	"TAPELLI1" VARCHAR2(200 BYTE), 
	"TAPELLI2" VARCHAR2(60 BYTE), 
	"SPERSON" NUMBER(10,0), 
	"CNOVEDAD" NUMBER(3,0), 
	"CNOTIFI" NUMBER(1,0), 
	"CCLALIS" NUMBER(3,0), 
	"CTIPLIS" NUMBER(3,0), 
	"FINCLUS" DATE, 
	"FEXCLUS" DATE, 
	"CINCLUS" NUMBER(3,0), 
	"CEXCLUS" NUMBER(3,0), 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"CACCION" NUMBER, 
	"NSINIES" NUMBER(8,0), 
	"NRECIBO" NUMBER(9,0), 
	"SMOVREC" NUMBER(8,0), 
	"SDEVOLU" NUMBER, 
	"FNACIMI" DATE, 
	"CUSUARIO" VARCHAR2(20 BYTE), 
	"FBAJA" DATE, 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."SPERLRE" IS 'identificaci�n persona restringida';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."NNUMIDE" IS 'N�mero identificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."NORDIDE" IS 'N�mero orden para posibles repetidos';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."CTIPIDE" IS 'Tipo identificaci�n persona ( V.F. 672, NIF, pasaporte, etc.)';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."CTIPPER" IS 'Tipo de persona (V.F. 85) F�sica o Jur�dica';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."TNOMAPE" IS 'Nombres y apellidos, todo unido';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."TNOMBRE1" IS 'Nombre1 de la persona';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."TNOMBRE2" IS 'Nombre2 de la persona';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."TAPELLI1" IS 'Primer apellido';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."TAPELLI2" IS 'Segundo apellido';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."SPERSON" IS 'Secuencia unica de identificacion de una persona';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."CNOVEDAD" IS 'Novedad s/n';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."CNOTIFI" IS 'Notificado 0-No, 1-Si.';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."CCLALIS" IS 'Clase lista (V.F. 800040) Externa, Interna';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."CTIPLIS" IS 'Tipo lista (V.F. 800048) ';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."FINCLUS" IS 'Fecha inclusi�n';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."FEXCLUS" IS 'Fecha exclusi�n';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."CINCLUS" IS 'Motivo inclusi�n';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."CEXCLUS" IS 'Motivo exclusi�n';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."CUSUMOD" IS 'Usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."FMODIFI" IS 'Fecha modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."SSEGURO" IS 'Id del seguro';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."NMOVIMI" IS 'Num. movimiento';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."CACCION" IS 'Acci�n realizada: (V.F. 800121)';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."NSINIES" IS 'Num. siniestro';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."NRECIBO" IS 'Num. recibo';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."SMOVREC" IS 'Secuencial del movimiento';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."SDEVOLU" IS 'Secuencial de la devoluci�n';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."FNACIMI" IS 'Fecha de Nacimiento de la persona';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."CUSUARIO" IS 'Usuario';
   COMMENT ON COLUMN "AXIS"."HIS_LRE_PERSONAS"."FBAJA" IS 'Fecha de baja de lista restringidas LRE_PERSONAS';
  GRANT UPDATE ON "AXIS"."HIS_LRE_PERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_LRE_PERSONAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_LRE_PERSONAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_LRE_PERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_LRE_PERSONAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_LRE_PERSONAS" TO "PROGRAMADORESCSI";
