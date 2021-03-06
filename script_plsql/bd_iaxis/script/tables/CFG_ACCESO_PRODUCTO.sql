--------------------------------------------------------
--  DDL for Table CFG_ACCESO_PRODUCTO
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_ACCESO_PRODUCTO" 
   (	"CEMPRES" NUMBER(2,0), 
	"CACCPROD" VARCHAR2(50 BYTE), 
	"SPRODUC" NUMBER(6,0), 
	"CEMITIR" NUMBER(1,0), 
	"CIMPRIMIR" NUMBER(1,0), 
	"CESTUDIOS" NUMBER(1,0), 
	"CCARTERA" NUMBER(1,0), 
	"CRECIBOS" NUMBER(1,0) DEFAULT 1, 
	"CACCESIBLE" NUMBER(1,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_ACCESO_PRODUCTO"."CEMPRES" IS 'C�digo de la empresa';
   COMMENT ON COLUMN "AXIS"."CFG_ACCESO_PRODUCTO"."CACCPROD" IS 'C�digo de la configuraci�n de acceso';
   COMMENT ON COLUMN "AXIS"."CFG_ACCESO_PRODUCTO"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."CFG_ACCESO_PRODUCTO"."CEMITIR" IS 'Contrataci�n?';
   COMMENT ON COLUMN "AXIS"."CFG_ACCESO_PRODUCTO"."CIMPRIMIR" IS 'Impresi�n P�lizas?';
   COMMENT ON COLUMN "AXIS"."CFG_ACCESO_PRODUCTO"."CESTUDIOS" IS 'Estudios?';
   COMMENT ON COLUMN "AXIS"."CFG_ACCESO_PRODUCTO"."CCARTERA" IS 'Cartera?';
   COMMENT ON COLUMN "AXIS"."CFG_ACCESO_PRODUCTO"."CRECIBOS" IS 'Impresi�n Recibos?';
   COMMENT ON COLUMN "AXIS"."CFG_ACCESO_PRODUCTO"."CACCESIBLE" IS 'Accesible?';
   COMMENT ON TABLE "AXIS"."CFG_ACCESO_PRODUCTO"  IS 'Tabla con las diferentes definiciones de acceso a productos por agente y perfil';
  GRANT UPDATE ON "AXIS"."CFG_ACCESO_PRODUCTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_ACCESO_PRODUCTO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_ACCESO_PRODUCTO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_ACCESO_PRODUCTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_ACCESO_PRODUCTO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_ACCESO_PRODUCTO" TO "PROGRAMADORESCSI";
