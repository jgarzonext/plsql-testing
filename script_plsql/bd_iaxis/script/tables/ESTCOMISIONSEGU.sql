--------------------------------------------------------
--  DDL for Table ESTCOMISIONSEGU
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTCOMISIONSEGU" 
   (	"SSEGURO" NUMBER, 
	"CMODCOM" NUMBER(1,0), 
	"PCOMISI" NUMBER(5,2), 
	"NINIALT" NUMBER, 
	"NFINALT" NUMBER, 
	"NMOVIMI" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTCOMISIONSEGU"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."ESTCOMISIONSEGU"."CMODCOM" IS 'Modalidad Comisi�n';
   COMMENT ON COLUMN "AXIS"."ESTCOMISIONSEGU"."PCOMISI" IS 'Porcentaje comisi�n';
   COMMENT ON COLUMN "AXIS"."ESTCOMISIONSEGU"."NINIALT" IS 'Inicio de la altura';
   COMMENT ON COLUMN "AXIS"."ESTCOMISIONSEGU"."NFINALT" IS 'Fin de la altura';
  GRANT UPDATE ON "AXIS"."ESTCOMISIONSEGU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTCOMISIONSEGU" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTCOMISIONSEGU" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTCOMISIONSEGU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTCOMISIONSEGU" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTCOMISIONSEGU" TO "PROGRAMADORESCSI";
