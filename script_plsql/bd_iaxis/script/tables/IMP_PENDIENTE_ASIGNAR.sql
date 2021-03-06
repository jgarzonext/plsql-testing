--------------------------------------------------------
--  DDL for Table IMP_PENDIENTE_ASIGNAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."IMP_PENDIENTE_ASIGNAR" 
   (	"SSEGURO" NUMBER, 
	"FVALOR" DATE, 
	"IIMPPND" NUMBER(12,3), 
	"CESTADO" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."IMP_PENDIENTE_ASIGNAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IMP_PENDIENTE_ASIGNAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IMP_PENDIENTE_ASIGNAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IMP_PENDIENTE_ASIGNAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IMP_PENDIENTE_ASIGNAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IMP_PENDIENTE_ASIGNAR" TO "PROGRAMADORESCSI";
