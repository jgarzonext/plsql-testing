--------------------------------------------------------
--  DDL for Table MIG_AGENTES
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_AGENTES" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"CAGENTE" NUMBER, 
	"IDPERSON" NUMBER(10,0), 
	"CTIPAGE" NUMBER(2,0), 
	"CACTIVO" NUMBER(1,0), 
	"CRETENC" NUMBER(2,0), 
	"CTIPIVA" NUMBER(2,0), 
	"CCOMISI" NUMBER, 
	"CPADRE" NUMBER, 
	"FMOVINI" DATE, 
	"FMOVFIN" DATE, 
	"CPERVISIO" NUMBER, 
	"CPERNIVEL" NUMBER(6,0), 
	"CPOLVISIO" NUMBER, 
	"CPOLNIVEL" NUMBER(6,0), 
	"FINIVIG" DATE, 
	"CTIPADN" NUMBER(3,0), 
	"CAGEDEP" NUMBER, 
	"CTIPINT" NUMBER(3,0), 
	"CAGECLAVE" NUMBER, 
	"COFERMERCAN" NUMBER(1,0), 
	"FRECEPCONTRA" DATE, 
	"CIDONEIDAD" NUMBER(3,0), 
	"SPERCOMP" NUMBER(10,0), 
	"CCOMPANI" NUMBER, 
	"COFIPROPIA" NUMBER(3,0), 
	"CCLASIF" NUMBER(3,0), 
	"NPLANPAGO" NUMBER(3,0), 
	"NNOTARIA" NUMBER(10,0), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"NESCRITURA" NUMBER(10,0), 
	"FALTASOC" DATE, 
	"TGERENTE" VARCHAR2(200 BYTE), 
	"TCAMARACOMERCIO" VARCHAR2(150 BYTE), 
	"CSOBRECOMISI" NUMBER(2,0), 
	"TALIAS" VARCHAR2(100 BYTE), 
	"CLIQUIDO" NUMBER(3,0), 
	"NREGDGS" VARCHAR2(100 BYTE), 
	"CDOMICI" NUMBER, 
	"CLAVEINTER" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CAGENTE" IS 'Código Agente';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."IDPERSON" IS 'Código Persona';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CTIPAGE" IS 'Código tipo agente (VF:30)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CACTIVO" IS 'Indicador Activo. 0-No, 1-Si';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CRETENC" IS 'Código Retención (RETENCIONES)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CTIPIVA" IS 'Código IVA (DESCRIPCIONIVA)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CCOMISI" IS 'Código Comisión (DESCOMISION)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPADRE" IS 'Código Agente Superior (AGENTES)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."FMOVINI" IS 'Fecha Inicio Vigencia';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."FMOVFIN" IS 'Fecha Fin Vigencia';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPERVISIO" IS 'Código del agente que nos indica el nivel de visión de personas. Fk contra agentes.cagente.';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPERNIVEL" IS 'Nivel visión personas.1: Ve los datos de personas que tengan el código de agente introducido en el campo cpervisio o personas que tengan un código de agente de la red comercial que este por debajo del agente inroducio en el campo cpervisio // 2: Ve los datos de personas que tengan el código de agente introducido en el campo cpervisio.';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPOLVISIO" IS 'Código del agente que nos indica el nivel de visión de pólizas.';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPOLNIVEL" IS 'Nivel visión pólizas. 1: Ve los datos de pólizas que tengan el código de agente introducido en el campo cpolvisio (ve sus pólizas) o pólizas que tengan un código de agente de la red comercial que este por debajo del agente inroducio en el campo cpolvisio (ve las polizas de los agentes de la red comercial que estan por debajo suyo) // 2: Ve los datos de pólizas que tengan el código de agente introducido en el campo cpolvisio (ve sus pólizas).';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."FINIVIG" IS 'Fecha inicio vigencia del cuadro de comisión asignado al agente';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CTIPADN" IS 'Tipo de Administración de Negocio (ADN). V.F.370';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CAGEDEP" IS 'Código agente ADN de la cual depente. Obligatorio si CTIPADN es ''ADN dependiente de otra ADN''';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CTIPINT" IS 'Tipo de Intermediario. V.F. 371';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CAGECLAVE" IS 'Identificador del agente agrupador de otras claves de Intermediarios';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."COFERMERCAN" IS 'Indica si se ha recibido o no el contrato firmado. (0.-No; 1.- Sí)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."FRECEPCONTRA" IS 'Fecha de recepción del contrato firmado. Se podrá informar sólo si el campo COFERMERCAN = 1';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CIDONEIDAD" IS 'Indica si cumple o no con los requisitos de capacitación para ser Intermediario. V.F. 373';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."SPERCOMP" IS 'Clientes únicos identificados como compañías.';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CCOMPANI" IS 'Código de compañia';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."COFIPROPIA" IS 'Indica si el Intermediario tiene oficina propia. V.F. 374';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CCLASIF" IS 'Indica la clasificación del Intermediario. V.F. 375';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."NPLANPAGO" IS 'Indica los meses a los que se aplica la subvención en la liquidación';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."NNOTARIA" IS 'Indica el número de notaria con el cual está registrado el Intermediario';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPROVIN" IS 'Codigo de Provincia de la ciudad de notaria';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPOBLAC" IS 'Código de Población de la ciudad de notaria';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."NESCRITURA" IS 'Indica el número de Escritura Pública asignada a la sociedad';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."FALTASOC" IS 'Fecha de constitución de la sociedad';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."TGERENTE" IS 'Nombre del gerente';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."TCAMARACOMERCIO" IS 'Nombre de la ciudad de la cámara de comercio';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CSOBRECOMISI" IS 'Código sobrecomisión';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."TALIAS" IS 'Nombre corto del agente';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CLIQUIDO" IS 'Indica si el Intermediario tiene autorización para descontarse directamente las comisiones. V.F. 372';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CDOMICI" IS 'Código de domicilio.';
   COMMENT ON TABLE "AXIS"."MIG_AGENTES"  IS 'Tabla Intermedia migración Agentes';
  GRANT UPDATE ON "AXIS"."MIG_AGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_AGENTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_AGENTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_AGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_AGENTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_AGENTES" TO "PROGRAMADORESCSI";
