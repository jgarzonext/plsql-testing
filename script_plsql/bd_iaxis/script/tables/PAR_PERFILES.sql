--------------------------------------------------------
--  DDL for Table PAR_PERFILES
--------------------------------------------------------

  CREATE TABLE "AXIS"."PAR_PERFILES" 
   (	"PERFIL" NUMBER(4,0), 
	"DENOMINACION" VARCHAR2(30 BYTE), 
	"PERFIL_PADRE" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PAR_PERFILES"."PERFIL" IS 'C�digo de perfil';
   COMMENT ON COLUMN "AXIS"."PAR_PERFILES"."DENOMINACION" IS 'Denominaci�n del perfil';
   COMMENT ON COLUMN "AXIS"."PAR_PERFILES"."PERFIL_PADRE" IS 'C�digo del perfil del que �ste depende';
   COMMENT ON TABLE "AXIS"."PAR_PERFILES"  IS 'Jerarquia de niveles de autorizaci�n';
  GRANT UPDATE ON "AXIS"."PAR_PERFILES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAR_PERFILES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PAR_PERFILES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PAR_PERFILES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAR_PERFILES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PAR_PERFILES" TO "PROGRAMADORESCSI";