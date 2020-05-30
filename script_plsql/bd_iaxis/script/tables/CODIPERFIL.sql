--------------------------------------------------------
--  DDL for Table CODIPERFIL
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIPERFIL" 
   (	"CPERFIL" NUMBER(4,0), 
	"CPERFPAD" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODIPERFIL"."CPERFIL" IS 'C�digo de Perfil';
   COMMENT ON COLUMN "AXIS"."CODIPERFIL"."CPERFPAD" IS 'C�digo de Perfil Padre';
   COMMENT ON TABLE "AXIS"."CODIPERFIL"  IS 'Perfiles seg�n la organizaci�n jer�rquica';
  GRANT UPDATE ON "AXIS"."CODIPERFIL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIPERFIL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIPERFIL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIPERFIL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIPERFIL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIPERFIL" TO "PROGRAMADORESCSI";
