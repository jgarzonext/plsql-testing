--------------------------------------------------------
--  DDL for Table SGT_CARGA_ARG_PREDE
--------------------------------------------------------

  CREATE TABLE "AXIS"."SGT_CARGA_ARG_PREDE" 
   (	"CLLAMADA" VARCHAR2(100 BYTE), 
	"TERMINO" VARCHAR2(30 BYTE), 
	"TTABLE" VARCHAR2(100 BYTE), 
	"TCAMPO" VARCHAR2(500 BYTE), 
	"TWHERE" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SGT_CARGA_ARG_PREDE"."CLLAMADA" IS 'Procedimiento donde se llama, un mismo termino puede informarse de diferente manera';
   COMMENT ON COLUMN "AXIS"."SGT_CARGA_ARG_PREDE"."TERMINO" IS 'C�digo identificativo del t�rmino';
   COMMENT ON COLUMN "AXIS"."SGT_CARGA_ARG_PREDE"."TTABLE" IS 'Nombre de tabla ALBOR';
   COMMENT ON COLUMN "AXIS"."SGT_CARGA_ARG_PREDE"."TCAMPO" IS 'Campo a capturar de la tabla';
   COMMENT ON COLUMN "AXIS"."SGT_CARGA_ARG_PREDE"."TWHERE" IS 'Codici�n de busqueda en ttabla';
   COMMENT ON TABLE "AXIS"."SGT_CARGA_ARG_PREDE"  IS 'Esta tabla indica como se busca la informaci�n de los terminos tipo Arg.Pred.';
  GRANT UPDATE ON "AXIS"."SGT_CARGA_ARG_PREDE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SGT_CARGA_ARG_PREDE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SGT_CARGA_ARG_PREDE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SGT_CARGA_ARG_PREDE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SGT_CARGA_ARG_PREDE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SGT_CARGA_ARG_PREDE" TO "PROGRAMADORESCSI";
