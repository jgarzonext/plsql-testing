--------------------------------------------------------
--  DDL for Table SUBVENCION_AGENTE
--------------------------------------------------------

  CREATE TABLE "AXIS"."SUBVENCION_AGENTE" 
   (	"CAGENTE" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(4,0), 
	"IIMPORTE" NUMBER, 
	"CESTADO" NUMBER(3,0) DEFAULT 0, 
	"NPLANPAGO" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SUBVENCION_AGENTE"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."SUBVENCION_AGENTE"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."SUBVENCION_AGENTE"."CACTIVI" IS 'C�digo de la actividad';
   COMMENT ON COLUMN "AXIS"."SUBVENCION_AGENTE"."IIMPORTE" IS 'Importe de la subvenci�n';
   COMMENT ON COLUMN "AXIS"."SUBVENCION_AGENTE"."CESTADO" IS 'Estado de la subvenci�n (v.f.800070)';
   COMMENT ON COLUMN "AXIS"."SUBVENCION_AGENTE"."NPLANPAGO" IS 'Indica los meses a los que se aplica la subvenci�n en la liquidaci�n';
   COMMENT ON TABLE "AXIS"."SUBVENCION_AGENTE"  IS 'Subvenci�n que la compa��a paga adicional a la comisi�n que ha de recibir';
  GRANT UPDATE ON "AXIS"."SUBVENCION_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SUBVENCION_AGENTE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SUBVENCION_AGENTE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SUBVENCION_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SUBVENCION_AGENTE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SUBVENCION_AGENTE" TO "PROGRAMADORESCSI";
