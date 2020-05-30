--------------------------------------------------------
--  DDL for Table PREGUNPRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."PREGUNPRO" 
   (	"CPREGUN" NUMBER(4,0), 
	"CMODALI" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CRAMO" NUMBER(8,0), 
	"CTIPSEG" NUMBER(2,0), 
	"SPRODUC" NUMBER(8,0), 
	"CPRETIP" NUMBER(2,0), 
	"NPREORD" NUMBER(3,0), 
	"TPREFOR" VARCHAR2(100 BYTE), 
	"CPREOBL" NUMBER(2,0), 
	"NPREIMP" NUMBER(3,0), 
	"CRESDEF" NUMBER, 
	"COFERSN" NUMBER(1,0) DEFAULT 1, 
	"CTABLA" NUMBER(5,0), 
	"TVALFOR" VARCHAR2(100 BYTE), 
	"CMODO" VARCHAR2(1 BYTE) DEFAULT 'T', 
	"CNIVEL" VARCHAR2(1 BYTE) DEFAULT 'R', 
	"CTARPOL" NUMBER(1,0), 
	"CVISIBLE" NUMBER(1,0), 
	"ESCCERO" NUMBER(1,0) DEFAULT 0, 
	"VISIBLECOL" NUMBER(1,0) DEFAULT 1, 
	"VISIBLECERT" NUMBER(1,0) DEFAULT 1, 
	"CRECARG" NUMBER(1,0) DEFAULT 0, 
	"CCALCULAR" NUMBER DEFAULT NULL, 
	"TMODALIDAD" NUMBER DEFAULT NULL, 
	"CTIPCONV" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CPREGUN" IS 'Código de la pregunta';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CMODALI" IS 'Código modalidad';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CCOLECT" IS 'Código de colectividad';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CRAMO" IS 'Código ramo';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CTIPSEG" IS 'Código tipo de seguro';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CPRETIP" IS 'Respuesta manual, automática,... [valores.cvalor = 787]';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."NPREORD" IS 'Orden para preguntarla';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."TPREFOR" IS 'Fórmula para cálculo respuesta';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CPREOBL" IS 'Si es obligatoria u opcional';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."NPREIMP" IS 'Orden de impresión (sólo imprimirla si tiene)';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CRESDEF" IS 'Respuesta por defecto';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."COFERSN" IS 'Aparece en Ofertas: 0-No 1-Si';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CTABLA" IS 'Indica si la pregunta se informa por cargas 0-no 1-si';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."TVALFOR" IS 'FÓRMULA PARA VALIDACIÓN RESPUESTA';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CMODO" IS 'Modo : T todos, S suplementos ,N nueva producción';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CNIVEL" IS '''P'' pregunta a nivell de póliza - ''R'' pregunta a nivel de riesgo - ''C'' pregunta a nivel de cláusulas';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CTARPOL" IS 'Indica si el cambio del valor requiere que se retarifique la póliza. 0 -> No / 1 -> Sí';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CVISIBLE" IS 'Pregunta Visible 0-No 1-Visible en Consulta, 2-Visible sempre';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."ESCCERO" IS 'Flag para habilitar automáticas. Automática en alta de certificados y manual en alta de colectivos.';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."VISIBLECOL" IS 'Indica si la pregunta es visible en el alta de colectivos.';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."VISIBLECERT" IS 'Indica si la pregunta es visible en el alta de certificados.';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CRECARG" IS 'Recarga a partir de preguntas';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."CCALCULAR" IS 'Este campo solo se implementa para las preguntas tipo Riesgo y automaticas (cpretip= 2), si tiene el valor 1 indicará que se calcula antes de tarifar';
   COMMENT ON COLUMN "AXIS"."PREGUNPRO"."TMODALIDAD" IS 'Resuelve la modalidad a aplicar( campo cmodalidad de riesgos. aplica las caracteristicas de garanpromodalidad)';
  GRANT UPDATE ON "AXIS"."PREGUNPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PREGUNPRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PREGUNPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PREGUNPRO" TO "PROGRAMADORESCSI";
