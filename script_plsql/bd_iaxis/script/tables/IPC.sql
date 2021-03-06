--------------------------------------------------------
--  DDL for Table IPC
--------------------------------------------------------

  CREATE TABLE "AXIS"."IPC" 
   (	"NANYO" NUMBER(4,0), 
	"NMES" NUMBER(2,0), 
	"PIPC" NUMBER, 
	"CTIPO" NUMBER(3,0), 
	"NFACTOR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IPC"."NANYO" IS 'A�o del IPC';
   COMMENT ON COLUMN "AXIS"."IPC"."NMES" IS 'Mes del IPC';
   COMMENT ON COLUMN "AXIS"."IPC"."PIPC" IS 'Pprcentaje del IPC';
   COMMENT ON COLUMN "AXIS"."IPC"."CTIPO" IS 'Tipo indice (VF:1078).';
   COMMENT ON COLUMN "AXIS"."IPC"."NFACTOR" IS 'Factor';
  GRANT UPDATE ON "AXIS"."IPC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IPC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IPC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IPC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IPC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IPC" TO "PROGRAMADORESCSI";
