--------------------------------------------------------
--  DDL for Table HOMOLOGACION_ESTADO_CIFIN
--------------------------------------------------------

  CREATE TABLE "AXIS"."HOMOLOGACION_ESTADO_CIFIN" 
   (	"VALOR_CIFIN" NVARCHAR2(100), 
	"VALOR_IAXIS" NVARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."HOMOLOGACION_ESTADO_CIFIN" TO "AXIS00";
  GRANT SELECT ON "AXIS"."HOMOLOGACION_ESTADO_CIFIN" TO "AXIS00";
  GRANT INSERT ON "AXIS"."HOMOLOGACION_ESTADO_CIFIN" TO "AXIS00";
  GRANT DELETE ON "AXIS"."HOMOLOGACION_ESTADO_CIFIN" TO "AXIS00";
