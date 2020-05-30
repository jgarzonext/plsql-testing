--------------------------------------------------------
--  DDL for Table REASEGUROAUX
--------------------------------------------------------

  CREATE TABLE "AXIS"."REASEGUROAUX" 
   (	"CODTIPO" NUMBER(1,0), 
	"CEMPRES" NUMBER(2,0), 
	"SPROCES" NUMBER, 
	"SCESREA" NUMBER(8,0), 
	"FEFECTO" DATE, 
	"FVENCIM" DATE, 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CGENERA" NUMBER(2,0), 
	"NSINIES" NUMBER, 
	"SIDEPAG" NUMBER(8,0), 
	"SCONTRA" NUMBER(6,0), 
	"NVERSIO" NUMBER(2,0), 
	"CTRAMO" NUMBER(2,0), 
	"PPORCEN" NUMBER(8,5), 
	"SFACULT" NUMBER(6,0), 
	"ICESIOT" NUMBER, 
	"ICAPCET" NUMBER, 
	"FCIERRE" DATE, 
	"CCOMPANI" NUMBER(3,0), 
	"PCESION" NUMBER(8,5), 
	"PCOMISI" NUMBER(5,2), 
	"ICESION" NUMBER, 
	"ICAPCES" NUMBER, 
	"ICOMISI" NUMBER, 
	"FCALCUL" DATE, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(4,0), 
	"CTIPSEG" NUMBER(4,0), 
	"CCOLECT" NUMBER(4,0), 
	"CACTIVI" NUMBER(4,0), 
	"CAGENTE" NUMBER, 
	"CAGRPRO" NUMBER(2,0), 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"IDTOSEL" NUMBER, 
	"IPRITARREA" NUMBER, 
	"PSOBREPRIMA" NUMBER(8,5), 
	"NRECIBO" NUMBER, 
	"IDTOSELTOT" NUMBER, 
	"IPRITARREATOT" NUMBER, 
	"IPRITARGAR" NUMBER, 
	"IPRITARREAGAR" NUMBER(17,6), 
	"NREEMB" NUMBER(8,0), 
	"NFACT" NUMBER(8,0), 
	"NLINEA" NUMBER(8,0), 
	"SREAEMI" NUMBER(8,0), 
	"ICOMEXT" NUMBER, 
	"IEXTREA" NUMBER, 
	"IRETENCIONF" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS"  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "AXIS"."REASEGUROAUX"."IDTOSEL" IS 'Importe descuento de selecci�n';
   COMMENT ON COLUMN "AXIS"."REASEGUROAUX"."IPRITARREA" IS 'Prima de tarifa';
   COMMENT ON COLUMN "AXIS"."REASEGUROAUX"."PSOBREPRIMA" IS 'Porcentaje de sobreprima';
   COMMENT ON COLUMN "AXIS"."REASEGUROAUX"."IDTOSELTOT" IS 'Total del importe de dto selecci�n';
   COMMENT ON COLUMN "AXIS"."REASEGUROAUX"."IPRITARREATOT" IS 'Total del importe de prima de tarifa ';
   COMMENT ON COLUMN "AXIS"."REASEGUROAUX"."IPRITARGAR" IS 'Prima de tarifa total de la garantia (propia y cedida) sin reparto por compa�ias';
   COMMENT ON COLUMN "AXIS"."REASEGUROAUX"."IPRITARREAGAR" IS 'Prima de tarifa total de la garantia (propia y cedida) con reparto por compa�ias';
   COMMENT ON COLUMN "AXIS"."REASEGUROAUX"."SREAEMI" IS 'Clave primaria de reasegemi';
   COMMENT ON COLUMN "AXIS"."REASEGUROAUX"."ICOMEXT" IS 'Importe comisi�n de la extra prima';
   COMMENT ON COLUMN "AXIS"."REASEGUROAUX"."IEXTREA" IS 'Extraprima a reasegurar (ya incluida en la prima [IPRIREA])';
   COMMENT ON COLUMN "AXIS"."REASEGUROAUX"."IRETENCIONF" IS 'Retenci�n en la fuente';
  GRANT UPDATE ON "AXIS"."REASEGUROAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REASEGUROAUX" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REASEGUROAUX" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REASEGUROAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REASEGUROAUX" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REASEGUROAUX" TO "PROGRAMADORESCSI";
