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

   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CAGENTE" IS 'C�digo Agente';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."IDPERSON" IS 'C�digo Persona';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CTIPAGE" IS 'C�digo tipo agente (VF:30)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CACTIVO" IS 'Indicador Activo. 0-No, 1-Si';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CRETENC" IS 'C�digo Retenci�n (RETENCIONES)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CTIPIVA" IS 'C�digo IVA (DESCRIPCIONIVA)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CCOMISI" IS 'C�digo Comisi�n (DESCOMISION)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPADRE" IS 'C�digo Agente Superior (AGENTES)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."FMOVINI" IS 'Fecha Inicio Vigencia';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."FMOVFIN" IS 'Fecha Fin Vigencia';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPERVISIO" IS 'C�digo del agente que nos indica el nivel de visi�n de personas. Fk contra agentes.cagente.';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPERNIVEL" IS 'Nivel visi�n personas.1: Ve los datos de personas que tengan el c�digo de agente introducido en el campo cpervisio o personas que tengan un c�digo de agente de la red comercial que este por debajo del agente inroducio en el campo cpervisio // 2: Ve los datos de personas que tengan el c�digo de agente introducido en el campo cpervisio.';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPOLVISIO" IS 'C�digo del agente que nos indica el nivel de visi�n de p�lizas.';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPOLNIVEL" IS 'Nivel visi�n p�lizas. 1: Ve los datos de p�lizas que tengan el c�digo de agente introducido en el campo cpolvisio (ve sus p�lizas) o p�lizas que tengan un c�digo de agente de la red comercial que este por debajo del agente inroducio en el campo cpolvisio (ve las polizas de los agentes de la red comercial que estan por debajo suyo) // 2: Ve los datos de p�lizas que tengan el c�digo de agente introducido en el campo cpolvisio (ve sus p�lizas).';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."FINIVIG" IS 'Fecha inicio vigencia del cuadro de comisi�n asignado al agente';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CTIPADN" IS 'Tipo de Administraci�n de Negocio (ADN). V.F.370';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CAGEDEP" IS 'C�digo agente ADN de la cual depente. Obligatorio si CTIPADN es ''ADN dependiente de otra ADN''';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CTIPINT" IS 'Tipo de Intermediario. V.F. 371';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CAGECLAVE" IS 'Identificador del agente agrupador de otras claves de Intermediarios';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."COFERMERCAN" IS 'Indica si se ha recibido o no el contrato firmado. (0.-No; 1.- S�)';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."FRECEPCONTRA" IS 'Fecha de recepci�n del contrato firmado. Se podr� informar s�lo si el campo COFERMERCAN = 1';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CIDONEIDAD" IS 'Indica si cumple o no con los requisitos de capacitaci�n para ser Intermediario. V.F. 373';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."SPERCOMP" IS 'Clientes �nicos identificados como compa��as.';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CCOMPANI" IS 'C�digo de compa�ia';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."COFIPROPIA" IS 'Indica si el Intermediario tiene oficina propia. V.F. 374';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CCLASIF" IS 'Indica la clasificaci�n del Intermediario. V.F. 375';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."NPLANPAGO" IS 'Indica los meses a los que se aplica la subvenci�n en la liquidaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."NNOTARIA" IS 'Indica el n�mero de notaria con el cual est� registrado el Intermediario';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPROVIN" IS 'Codigo de Provincia de la ciudad de notaria';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CPOBLAC" IS 'C�digo de Poblaci�n de la ciudad de notaria';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."NESCRITURA" IS 'Indica el n�mero de Escritura P�blica asignada a la sociedad';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."FALTASOC" IS 'Fecha de constituci�n de la sociedad';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."TGERENTE" IS 'Nombre del gerente';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."TCAMARACOMERCIO" IS 'Nombre de la ciudad de la c�mara de comercio';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CSOBRECOMISI" IS 'C�digo sobrecomisi�n';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."TALIAS" IS 'Nombre corto del agente';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CLIQUIDO" IS 'Indica si el Intermediario tiene autorizaci�n para descontarse directamente las comisiones. V.F. 372';
   COMMENT ON COLUMN "AXIS"."MIG_AGENTES"."CDOMICI" IS 'C�digo de domicilio.';
   COMMENT ON TABLE "AXIS"."MIG_AGENTES"  IS 'Tabla Intermedia migraci�n Agentes';
  GRANT UPDATE ON "AXIS"."MIG_AGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_AGENTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_AGENTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_AGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_AGENTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_AGENTES" TO "PROGRAMADORESCSI";
