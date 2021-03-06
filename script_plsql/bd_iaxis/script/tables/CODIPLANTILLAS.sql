--------------------------------------------------------
--  DDL for Table CODIPLANTILLAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIPLANTILLAS" 
   (	"CCODPLAN" VARCHAR2(20 BYTE), 
	"IDCONSULTA" NUMBER(6,0), 
	"GEDOX" VARCHAR2(1 BYTE), 
	"IDCAT" NUMBER(8,0) DEFAULT 1, 
	"CGENFICH" NUMBER(1,0) DEFAULT 1, 
	"CGENPDF" NUMBER(1,0) DEFAULT 0, 
	"CGENREP" NUMBER(1,0) DEFAULT 0, 
	"CTIPODOC" NUMBER(3,0), 
	"CFDIGITAL" VARCHAR2(1 BYTE) DEFAULT null
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODIPLANTILLAS"."CCODPLAN" IS 'Id de la plantilla';
   COMMENT ON COLUMN "AXIS"."CODIPLANTILLAS"."IDCONSULTA" IS 'Id de la consulta asociada a la plantilla';
   COMMENT ON COLUMN "AXIS"."CODIPLANTILLAS"."GEDOX" IS 'Gesti�n Documental  para los documentos generados con esta plantilla. ( S/N )';
   COMMENT ON COLUMN "AXIS"."CODIPLANTILLAS"."IDCAT" IS 'Categoria GEDOX';
   COMMENT ON COLUMN "AXIS"."CODIPLANTILLAS"."CGENFICH" IS '�Se debe generar un nuevo fichero?';
   COMMENT ON COLUMN "AXIS"."CODIPLANTILLAS"."CGENPDF" IS '�Se debe convetir la plantilla a PDF?';
   COMMENT ON COLUMN "AXIS"."CODIPLANTILLAS"."CGENREP" IS '�Es un Jasper Reports?';
   COMMENT ON COLUMN "AXIS"."CODIPLANTILLAS"."CTIPODOC" IS 'Identificador del tipo de documento (tabla TIPOS_DOCUMENTOS). Si ctipodoc is null indica que la plantilla es de tipo 1.';
   COMMENT ON COLUMN "AXIS"."CODIPLANTILLAS"."CFDIGITAL" IS 'Indica si el documento se firma con un certificado digital (S.-Si/Otro.-No)';
   COMMENT ON TABLE "AXIS"."CODIPLANTILLAS"  IS 'Control de plantillas';
  GRANT UPDATE ON "AXIS"."CODIPLANTILLAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIPLANTILLAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIPLANTILLAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIPLANTILLAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIPLANTILLAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIPLANTILLAS" TO "PROGRAMADORESCSI";
