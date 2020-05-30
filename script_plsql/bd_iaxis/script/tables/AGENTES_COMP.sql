--------------------------------------------------------
--  DDL for Table AGENTES_COMP
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGENTES_COMP" 
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
	"CTIPOACTIV" NUMBER(3,0) DEFAULT 1, 
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
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"FULTREV" DATE, 
	"FULTCKC" DATE, 
	"CTIPBANG" NUMBER, 
	"CBANGES" VARCHAR2(50 BYTE), 
	"CCLANEG" VARCHAR2(50 BYTE), 
	"CTIPAGE_LIQUIDA" NUMBER(1,0), 
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
	"ILIMITEB" NUMBER, 
	"CEXPIDE" NUMBER, 
	"TCORREO" VARCHAR2(100 BYTE), 
	"CENVCORREO" NUMBER(1,0), 
	"CORTEPROD" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CAGENTE" IS 'Código de agente';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CTIPADN" IS 'Tipo de Administración de Negocio (ADN). V.F.370';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CAGEDEP" IS 'Código agente ADN de la cual depente. Obligatorio si CTIPADN es ''ADN dependiente de otra ADN''';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CTIPINT" IS 'Tipo de Intermediario. V.F. 371';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CAGECLAVE" IS 'Identificador del agente agrupador de otras claves de Intermediarios';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."COFERMERCAN" IS 'Indica si se ha recibido o no el contrato firmado. (0.-No; 1.- Sí)';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."FRECEPCONTRA" IS 'Fecha de recepción del contrato firmado. Se podrá informar sólo si el campo COFERMERCAN = 1';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CIDONEIDAD" IS 'Indica si cumple o no con los requisitos de capacitación para ser Intermediario. V.F. 373';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."SPERCOMP" IS 'Clientes únicos identificados como compañías.';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CCOMPANI" IS 'Código de compañia';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."COFIPROPIA" IS 'Indica si el Intermediario tiene oficina propia. V.F. 374';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CCLASIF" IS 'Indica la clasificación del Intermediario. V.F. 375';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."NPLANPAGO" IS 'Indica los meses a los que se aplica la subvención en la liquidación';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."NNOTARIA" IS 'Indica el número de notaria con el cual está registrado el Intermediario';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CPROVIN" IS 'Codigo de Provincia de la ciudad de notaria';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CPOBLAC" IS 'Código de Población de la ciudad de notaria';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."NESCRITURA" IS 'Indica el número de Escritura Pública asignada a la sociedad';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."FALTASOC" IS 'Fecha de constitución de la sociedad';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."TGERENTE" IS 'Nombre del gerente';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."TCAMARACOMERCIO" IS 'Nombre de la ciudad de la cámara de comercio';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."AGRUPADOR" IS 'Agrupador agentes (VF:1064)';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CACTIVIDAD" IS 'Actividad principal agente (VF:1065)';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CTIPOACTIV" IS 'Tipo de actividad agente (VF:1068)';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."PRETENCION" IS '% Retención asignada al agente';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CINCIDENCIA" IS 'Incidencias agente (VF:1069)';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CRATING" IS 'Rating agente (VF:1070)';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."TVALORACION" IS 'Valoración situación financiera: administración explicará la resolución del análisis';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CRESOLUCION" IS 'Resolución agente (VF:1071)';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."FFINCREDITO" IS 'Período crédito';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."NLIMCREDITO" IS 'Límite crédito';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."TCOMENTARIOS" IS 'Comentarios';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CUSUALT" IS 'Código usuario alta del registro';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CUSUARI" IS 'Código usuario modificación del registro';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."FMOVIMI" IS 'Fecha modificación del registro';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."FULTREV" IS 'Fecha de la última revisión al agente por parte de la cia.';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."FULTCKC" IS 'Fecha de la última revisión al agente por parte de las autoridades';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CTIPBANG" IS 'Tipo de cuenta referente a CBANGES';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CBANGES" IS 'Cuenta donde el agente recibe las primas de los clientes';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CCLANEG" IS 'Lista de clases de negocio, separados por |,';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CTIPAGE_LIQUIDA" IS 'Nivel de liquidación';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."IOBJETIVO" IS 'B.I.S - Porcentaje de comisiÃ³n extra objetivo';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."IBONIFICA" IS 'B.I.S. -Monto de bono';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."PCOMEXTR" IS 'Marketing Allowance - Porcentaje de comisiÃ³n extra';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CTIPCAL" IS 'Marketing Allowance - Sobre prima cobrada o prima anual';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CFORCAL" IS 'Marketing Allowance - Calculo mensual o anual';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CMESPAG" IS 'Marketing Allowance - Mes en el que se debe realizar el calculo y generar el pago';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."PCOMEXTROV" IS 'Override Commission - Porcentaje de comisiÃ³n extra';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."PPERSISTEN" IS 'Persistency Award - Porcentaje minimo para asignar la comision persitency award';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."PCOMPERS" IS 'Persistency Award - Importe de la comision persistency';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CTIPCALB" IS 'B.I.S. - Sobre prima cobrada o prima anual';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CFORCALB" IS 'B.I.S. - Calculo mensual o anual';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CMESPAGB" IS 'B.I.S. - Mes en el que se debe realizar el calculo y generar el pago';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."PCOMBUSI" IS 'B.I.S. - Porcentaje de comisiÃ³n de business incentive scheme';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."ILIMITEB" IS 'B.I.S. - Monto limite hasta donde se pagarÃ¡ el B.I.S.';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."TCORREO" IS 'Dirección de correo por defecto del agente';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CENVCORREO" IS 'Check que indica si hay que enviar correos para este agente (1 si)';
   COMMENT ON COLUMN "AXIS"."AGENTES_COMP"."CORTEPROD" IS 'Indica si el agente tiene corte de cuentas de producci¿n. (0.-No; 1.- S¿)';
   COMMENT ON TABLE "AXIS"."AGENTES_COMP"  IS 'Atributos complementarios de la tabla AGENTES';
  GRANT UPDATE ON "AXIS"."AGENTES_COMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_COMP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGENTES_COMP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGENTES_COMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_COMP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGENTES_COMP" TO "PROGRAMADORESCSI";
