--------------------------------------------------------
--  DDL for Table MIG_TRAMITACIONSINI
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_TRAMITACIONSINI" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NSINIES" NUMBER(8,0), 
	"NTRAMIT" NUMBER(4,0), 
	"CTRAMIT" NUMBER(4,0), 
	"CESTADO" NUMBER(3,0), 
	"CTRAEXT" VARCHAR2(20 BYTE), 
	"NTRACOA" VARCHAR2(16 BYTE), 
	"CMATRIC" VARCHAR2(12 BYTE), 
	"CMARCA" VARCHAR2(5 BYTE), 
	"SMODELO" NUMBER(8,0), 
	"CVERSION" VARCHAR2(11 BYTE), 
	"SPERSON" NUMBER(10,0), 
	"COFISUC" VARCHAR2(30 BYTE), 
	"TDESCRI" VARCHAR2(500 BYTE), 
	"CPAIS" NUMBER(3,0), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"CCOLOR" NUMBER(3,0), 
	"NANTCAR" NUMBER(2,0), 
	"CTIPCON" NUMBER(1,0), 
	"TCONASE" VARCHAR2(40 BYTE), 
	"TPOLCON" VARCHAR2(40 BYTE), 
	"CFALLEC" NUMBER(1,0), 
	"NTRASIN" NUMBER(3,0), 
	"TDOMICI" VARCHAR2(100 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"CTRAINT" VARCHAR2(60 BYTE), 
	"FCARNET" DATE, 
	"CCARNET" NUMBER(2,0), 
	"CTIPMAT" NUMBER(6,0), 
	"CINFORM" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."MIG_PK" IS 'Clave �nica de MIG_TRAMITACIONSINI';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."MIG_FK" IS 'Clave externa para el siniestro (MIG_SINIESTROS)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."NSINIES" IS 'Num. siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."NTRAMIT" IS 'Num. tramitacion';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CTRAMIT" IS 'Cod. tramitacion';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CESTADO" IS 'Cod. Estado tramitacion';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CTRAEXT" IS 'Cod. del tramitador externo';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."NTRACOA" IS 'N�m de la tramitaci�n para la compa�ia COA';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CMATRIC" IS 'Matr�cula';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CMARCA" IS 'Marca veh�culo';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."SMODELO" IS 'Modelo veh�culo';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CVERSION" IS 'Versi�n veh�culo';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."SPERSON" IS 'Id de la persona';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."COFISUC" IS 'Oficina tramitadora del impuesto de sucesiones';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."TDESCRI" IS 'Descripci�n libre';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CPAIS" IS 'Id del pa�s';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CPROVIN" IS 'Id provincia';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CPOBLAC" IS 'Id poblaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CPOSTAL" IS 'C�d. Postal';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CCOLOR" IS 'Color del vehicle';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."NANTCAR" IS 'A�os antiguedad carnet';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CTIPCON" IS 'Tipo de conductor';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."TCONASE" IS 'Compa�ia aseg. contraria';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."TPOLCON" IS 'N�m p�liza comp. contraria';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CFALLEC" IS 'Victima fallecida s/n';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."NTRASIN" IS 'Tramitaci�n relacionada';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."TDOMICI" IS 'Domicilio';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMITACIONSINI"."CTRAINT" IS 'Tramitador interno, por defecto el gestor principal del siniestro';
   COMMENT ON TABLE "AXIS"."MIG_TRAMITACIONSINI"  IS 'Tramitaciones de Siniestro';
  GRANT UPDATE ON "AXIS"."MIG_TRAMITACIONSINI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_TRAMITACIONSINI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_TRAMITACIONSINI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_TRAMITACIONSINI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_TRAMITACIONSINI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_TRAMITACIONSINI" TO "PROGRAMADORESCSI";
