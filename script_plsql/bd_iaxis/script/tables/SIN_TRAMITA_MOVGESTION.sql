--------------------------------------------------------
--  DDL for Table SIN_TRAMITA_MOVGESTION
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_TRAMITA_MOVGESTION" 
   (	"SGESTIO" NUMBER(10,0), 
	"NMOVGES" NUMBER(4,0), 
	"CTIPMOV" NUMBER(8,0), 
	"CESTGES" NUMBER(2,0), 
	"CSUBGES" NUMBER(8,0), 
	"TCOMENT" VARCHAR2(4000 BYTE), 
	"FMOVINI" DATE, 
	"FMOVFIN" DATE, 
	"FINICIO" DATE, 
	"FPROXIM" DATE, 
	"FLIMITE" DATE, 
	"FACCION" DATE, 
	"CACCION" NUMBER(2,0), 
	"NMAXAVA" NUMBER(2,0), 
	"NTOTAVA" NUMBER(2,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."SGESTIO" IS 'Clave tabla SIN_TRAMITA_GESTION';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."NMOVGES" IS 'Numero de movimiento';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."CTIPMOV" IS 'Codigo de Movimiento';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."CESTGES" IS 'Estado de la gestion';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."CSUBGES" IS 'Subestado de la gestion';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."TCOMENT" IS 'Observaciones';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."FMOVINI" IS 'Fecha del movimiento';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."FMOVFIN" IS 'Fecha Fin. Es nulo en el ultimo movimiento';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."FINICIO" IS 'Fecha de inicio prevista';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."FPROXIM" IS 'Fecha prevista proximo movimiento';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."FLIMITE" IS 'Fecha limite de la gestion';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."FACCION" IS 'Fecha para reclamar';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."CACCION" IS 'Capacidad carga de trabajo si se reclama';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."NMAXAVA" IS 'Total de avances permitidos';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVGESTION"."NTOTAVA" IS 'Total avances consumidos';
   COMMENT ON TABLE "AXIS"."SIN_TRAMITA_MOVGESTION"  IS 'Movimientos de Gestion';
  GRANT UPDATE ON "AXIS"."SIN_TRAMITA_MOVGESTION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_MOVGESTION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_TRAMITA_MOVGESTION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_TRAMITA_MOVGESTION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_MOVGESTION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_MOVGESTION" TO "PROGRAMADORESCSI";
