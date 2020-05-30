--------------------------------------------------------
--  DDL for Table CFG_LRE
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_LRE" 
   (	"CEMPRES" NUMBER(2,0), 
	"CMODO" VARCHAR2(200 BYTE) DEFAULT 'GENERAL', 
	"SPRODUC" NUMBER(6,0) DEFAULT 0, 
	"CMOTMOV" NUMBER(3,0), 
	"CTIPLIS" NUMBER(3,0), 
	"TACCION" VARCHAR2(100 BYTE), 
	"CACTIVO" VARCHAR2(3 BYTE), 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_LRE"."CEMPRES" IS 'Código de la empresa';
   COMMENT ON COLUMN "AXIS"."CFG_LRE"."CMODO" IS 'Modo de configuración';
   COMMENT ON COLUMN "AXIS"."CFG_LRE"."SPRODUC" IS 'Id. del producto';
   COMMENT ON COLUMN "AXIS"."CFG_LRE"."CMOTMOV" IS 'Código motivo de movimiento';
   COMMENT ON COLUMN "AXIS"."CFG_LRE"."CTIPLIS" IS 'Tipo lista (V.F. 800048)';
   COMMENT ON COLUMN "AXIS"."CFG_LRE"."TACCION" IS 'Lista de acciones a realizar donde: email ==> E, underwriter ==> U, mlro ==> M, apunte agenda ==> A, bloqueo ==> B, no accion ==> null';
   COMMENT ON COLUMN "AXIS"."CFG_LRE"."CACTIVO" IS 'Indica si la acción está activa o no (1 sí, 0 no)';
   COMMENT ON COLUMN "AXIS"."CFG_LRE"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."CFG_LRE"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."CFG_LRE"."CUSUMOD" IS 'Usuario de modificación';
   COMMENT ON COLUMN "AXIS"."CFG_LRE"."FMODIFI" IS 'Fecha de modificación';
  GRANT UPDATE ON "AXIS"."CFG_LRE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_LRE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_LRE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_LRE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_LRE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_LRE" TO "PROGRAMADORESCSI";
