--------------------------------------------------------
--  DDL for Table HIS_AGENTES_COMP
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_AGENTES_COMP" 
   (	"CAGENTE" NUMBER, 
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
	"AGRUPADOR" NUMBER(3,0), 
	"CACTIVIDAD" NUMBER(3,0), 
	"CTIPOACTIV" NUMBER(3,0), 
	"PRETENCION" NUMBER(5,2), 
	"CINCIDENCIA" NUMBER(3,0), 
	"CRATING" NUMBER(3,0), 
	"TVALORACION" VARCHAR2(500 BYTE), 
	"CRESOLUCION" NUMBER(3,0), 
	"FFINCREDITO" DATE, 
	"NLIMCREDITO" NUMBER, 
	"TCOMENTARIOS" VARCHAR2(1000 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FUSUMOD" DATE, 
	"IOBJETIVO" NUMBER, 
	"IBONIFICA" NUMBER, 
	"PCOMEXTR" NUMBER, 
	"CTIPCAL" NUMBER, 
	"CFORCAL" NUMBER, 
	"CMESPAG" NUMBER, 
	"PCOMEXTROV" NUMBER, 
	"PPERSISTEN" NUMBER, 
	"PCOMPERS" NUMBER, 
	"CTIPCALB" NUMBER, 
	"CFORCALB" NUMBER, 
	"CMESPAGB" NUMBER, 
	"PCOMBUSI" NUMBER, 
	"ILIMITEB" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CTIPADN" IS 'Tipo de Administraci�n de Negocio (ADN). V.F.370';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CAGEDEP" IS 'C�digo agente ADN de la cual depente. Obligatorio si CTIPADN es ''ADN dependiente de otra ADN''';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CTIPINT" IS 'Tipo de Intermediario. V.F. 371';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CAGECLAVE" IS 'Identificador del agente agrupador de otras claves de Intermediarios';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."COFERMERCAN" IS 'Indica si se ha recibido o no el contrato firmado. (0.-No; 1.- S�)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."FRECEPCONTRA" IS 'Fecha de recepci�n del contrato firmado. Se podr� informar s�lo si el campo COFERMERCAN = 1';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CIDONEIDAD" IS 'Indica si cumple o no con los requisitos de capacitaci�n para ser Intermediario. V.F. 373';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."SPERCOMP" IS 'Clientes �nicos identificados como compa��as.';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CCOMPANI" IS 'C�digo de compa�ia';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."COFIPROPIA" IS 'Indica si el Intermediario tiene oficina propia. V.F. 374';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CCLASIF" IS 'Indica la clasificaci�n del Intermediario. V.F. 375';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."NPLANPAGO" IS 'Indica los meses a los que se aplica la subvenci�n en la liquidaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."NNOTARIA" IS 'Indica el n�mero de notaria con el cual est� registrado el Intermediario';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CPROVIN" IS 'Codigo de Provincia de la ciudad de notaria';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CPOBLAC" IS 'C�digo de Poblaci�n de la ciudad de notaria';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."NESCRITURA" IS 'Indica el n�mero de Escritura P�blica asignada a la sociedad';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."FALTASOC" IS 'Fecha de constituci�n de la sociedad';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."TGERENTE" IS 'Nombre del gerente';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."TCAMARACOMERCIO" IS 'Nombre de la ciudad de la c�mara de comercio';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."AGRUPADOR" IS 'Agrupador agentes (VF:1064)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CACTIVIDAD" IS 'Actividad principal agente (VF:1065)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CTIPOACTIV" IS 'Tipo de actividad agente (VF:1068)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."PRETENCION" IS '% Retenci�n asignada al agente';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CINCIDENCIA" IS 'Incidencias agente (VF:1069)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CRATING" IS 'Rating agente (VF:1070)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."TVALORACION" IS 'Valoraci�n situaci�n financiera: administraci�n explicar� la resoluci�n del an�lisis';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CRESOLUCION" IS 'Resoluci�n agente (VF:1071)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."FFINCREDITO" IS 'Per�odo cr�dito';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."NLIMCREDITO" IS 'L�mite cr�dito';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."TCOMENTARIOS" IS 'Comentarios';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CUSUALT" IS 'C�digo usuario alta del registro';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CUSUMOD" IS 'C�digo usuario creaci�n del registro';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."FUSUMOD" IS 'Fecha de creaci�n del registro';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."IOBJETIVO" IS 'B.I.S - Objetivo a alcanzar';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."IBONIFICA" IS 'B.I.S. -Monto de bono';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."PCOMEXTR" IS 'Marketing Allowance - Porcentaje de comisión extra';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CTIPCAL" IS 'Marketing Allowance - Sobre prima cobrada o prima anual';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CFORCAL" IS 'Marketing Allowance - Calculo mensual o anual';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CMESPAG" IS 'Marketing Allowance - Mes en el que se debe realizar el calculo y generar el pago';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."PCOMEXTROV" IS 'Override Commission - Porcentaje de comisión extra';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."PPERSISTEN" IS 'Persistency Award - Porcentaje minimo para asignar la comision persitency award';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."PCOMPERS" IS 'Persistency Award - Importe de la comision persistency';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CTIPCALB" IS 'B.I.S. - Sobre prima cobrada o prima anual';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CFORCALB" IS 'B.I.S. - Calculo mensual o anual';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."CMESPAGB" IS 'B.I.S. - Mes en el que se debe realizar el calculo y generar el pago';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."PCOMBUSI" IS 'B.I.S. - Porcentaje de comisión de business incentive scheme';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES_COMP"."ILIMITEB" IS 'B.I.S. - Monto limite hasta donde se pagará el B.I.S.';
   COMMENT ON TABLE "AXIS"."HIS_AGENTES_COMP"  IS 'Hist�rico Atributos complementarios de la tabla AGENTES';
  GRANT UPDATE ON "AXIS"."HIS_AGENTES_COMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_AGENTES_COMP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_AGENTES_COMP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_AGENTES_COMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_AGENTES_COMP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_AGENTES_COMP" TO "PROGRAMADORESCSI";