--------------------------------------------------------
--  DDL for Table MIG_RWD_EMP_MIG
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_RWD_EMP_MIG" 
   (	"RWDEMP" ROWID, 
	"NCARGA" NUMBER, 
	"NTAB" NUMBER, 
	"RWDMIG" ROWID
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_RWD_EMP_MIG"."RWDEMP" IS 'Rowid tabla cliente';
   COMMENT ON COLUMN "AXIS"."MIG_RWD_EMP_MIG"."NCARGA" IS 'N�mero Carga';
   COMMENT ON COLUMN "AXIS"."MIG_RWD_EMP_MIG"."RWDMIG" IS 'Rowid tabla MIG_';
   COMMENT ON TABLE "AXIS"."MIG_RWD_EMP_MIG"  IS 'Tabla Rowid Migraci�n entre tablas cliente y MIG_';
  GRANT UPDATE ON "AXIS"."MIG_RWD_EMP_MIG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_RWD_EMP_MIG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_RWD_EMP_MIG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_RWD_EMP_MIG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_RWD_EMP_MIG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_RWD_EMP_MIG" TO "PROGRAMADORESCSI";
