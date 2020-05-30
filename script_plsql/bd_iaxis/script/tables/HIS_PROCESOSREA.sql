--------------------------------------------------------
--  DDL for Table HIS_PROCESOSREA
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PROCESOSREA" 
   (	"SINDHISREA" NUMBER, 
	"CNOMTABLA" VARCHAR2(50 BYTE), 
	"SINDICADORMOD" VARCHAR2(100 BYTE), 
	"CNOMCAMPO" VARCHAR2(50 BYTE), 
	"CVALORANT" VARCHAR2(200 BYTE), 
	"CVALORACT" VARCHAR2(200 BYTE), 
	"CUSUARIOMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_PROCESOSREA"."SINDHISREA" IS 'Identificador del hist�rico';
   COMMENT ON COLUMN "AXIS"."HIS_PROCESOSREA"."CNOMTABLA" IS 'Nombre de la tabla objeto de la modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PROCESOSREA"."SINDICADORMOD" IS 'Cadena de caracteres con los identificadores del registro objeto de la modificaci�n de la tabla descrita anterior. ';
   COMMENT ON COLUMN "AXIS"."HIS_PROCESOSREA"."CNOMCAMPO" IS 'Nombre del campo objeto de la modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PROCESOSREA"."CVALORANT" IS 'Valor anterior a la modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PROCESOSREA"."CVALORACT" IS 'Valor actual despu�s de la modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PROCESOSREA"."CUSUARIOMOD" IS 'Usuario quien realiz� la modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PROCESOSREA"."FMODIFI" IS 'Fecha de la modificaci�n';
   COMMENT ON TABLE "AXIS"."HIS_PROCESOSREA"  IS 'Hist�ricos de procesos de reaseguro';
  GRANT UPDATE ON "AXIS"."HIS_PROCESOSREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PROCESOSREA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PROCESOSREA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PROCESOSREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PROCESOSREA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PROCESOSREA" TO "PROGRAMADORESCSI";
