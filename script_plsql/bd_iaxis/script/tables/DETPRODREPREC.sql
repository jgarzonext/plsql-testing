--------------------------------------------------------
--  DDL for Table DETPRODREPREC
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETPRODREPREC" 
   (	"SIDPRODP" NUMBER(6,0), 
	"NIMPAGAD" NUMBER(2,0), 
	"CMOTIVO" NUMBER(2,0), 
	"NDIAAVIS" NUMBER(3,0), 
	"CMODELO" NUMBER(2,0), 
	"CACTIMP" NUMBER(1,0), 
	"CMODIMM" NUMBER(4,0), 
	"CACTIMM" NUMBER(2,0), 
	"CDIAAVIS" NUMBER(2,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DETPRODREPREC"."NIMPAGAD" IS 'Enumera el n� veces que ha venido impagado el recibo.';
   COMMENT ON COLUMN "AXIS"."DETPRODREPREC"."CMOTIVO" IS 'C�digo del motivo de devoluci�n en recibos domiciliados. (valores.cvalor=73)';
   COMMENT ON COLUMN "AXIS"."DETPRODREPREC"."NDIAAVIS" IS 'D�as que tienen que pasar para realizar el aviso y la acci�n (CACTIMP)';
   COMMENT ON COLUMN "AXIS"."DETPRODREPREC"."CMODELO" IS 'Modelo de carta. Se envia a la vez que se ejecuta la acci�n (CACTIMP)';
   COMMENT ON COLUMN "AXIS"."DETPRODREPREC"."CACTIMP" IS 'Acci�n que se ha de adoptar cuando se llegue a este n�mero de intento o devoluci�n.';
   COMMENT ON COLUMN "AXIS"."DETPRODREPREC"."CMODIMM" IS 'Modelo de carta Immediato. Se envia en cuanto se hace el descobro del recibo.';
   COMMENT ON COLUMN "AXIS"."DETPRODREPREC"."CACTIMM" IS 'Acci�n inmmediata (en cuanto se descobra el recibo)';
   COMMENT ON COLUMN "AXIS"."DETPRODREPREC"."CDIAAVIS" IS 'Tipo de dias aviso 1.- N�mero de dias,2.- Ultimo d�a mismo mes (cvalor = 224)';
  GRANT UPDATE ON "AXIS"."DETPRODREPREC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETPRODREPREC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETPRODREPREC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETPRODREPREC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETPRODREPREC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETPRODREPREC" TO "PROGRAMADORESCSI";
