--------------------------------------------------------
--  DDL for Table SIN_PARGES_EST_PERMITIDOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_PARGES_EST_PERMITIDOS" 
   (	"CTIPGES" NUMBER(8,0), 
	"CESTGES" NUMBER(2,0), 
	"CSUBGES" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_PARGES_EST_PERMITIDOS"."CTIPGES" IS 'Tipo Gestion. VF 722';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_EST_PERMITIDOS"."CESTGES" IS 'Estado de la gesti�n. 0-Pendiente 1-Cerrado';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_EST_PERMITIDOS"."CSUBGES" IS 'Subestado permitido de la gesti�n. VF 727';
   COMMENT ON TABLE "AXIS"."SIN_PARGES_EST_PERMITIDOS"  IS 'Parametrizacion gestiones: Estados permitidos por tipo de gestion';
  GRANT UPDATE ON "AXIS"."SIN_PARGES_EST_PERMITIDOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PARGES_EST_PERMITIDOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_PARGES_EST_PERMITIDOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_PARGES_EST_PERMITIDOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PARGES_EST_PERMITIDOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_PARGES_EST_PERMITIDOS" TO "PROGRAMADORESCSI";
