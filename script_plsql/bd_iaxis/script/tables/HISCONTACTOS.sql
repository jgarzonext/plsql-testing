--------------------------------------------------------
--  DDL for Table HISCONTACTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISCONTACTOS" 
   (	"SHISCON" NUMBER(9,0), 
	"SPERSON" NUMBER(10,0), 
	"CMODCON" NUMBER, 
	"CTIPCON" NUMBER(1,0), 
	"TCOMCON" VARCHAR2(40 BYTE), 
	"TVALCON" VARCHAR2(100 BYTE), 
	"FMODIF" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISCONTACTOS"."SHISCON" IS 'N�mero de hist�rico';
   COMMENT ON COLUMN "AXIS"."HISCONTACTOS"."SPERSON" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."HISCONTACTOS"."CMODCON" IS 'C�digo secuencia Modo de Contacto';
   COMMENT ON COLUMN "AXIS"."HISCONTACTOS"."CTIPCON" IS 'C�digo predefinido del Modo de Contacto';
   COMMENT ON COLUMN "AXIS"."HISCONTACTOS"."TCOMCON" IS 'Especificaci�n del Medio';
   COMMENT ON COLUMN "AXIS"."HISCONTACTOS"."TVALCON" IS 'Valor';
   COMMENT ON COLUMN "AXIS"."HISCONTACTOS"."FMODIF" IS 'Fecha modificaci�n';
   COMMENT ON COLUMN "AXIS"."HISCONTACTOS"."CUSUMOD" IS 'Usuario modificaci�n';
   COMMENT ON TABLE "AXIS"."HISCONTACTOS"  IS 'Hist�rico Contactos';
  GRANT UPDATE ON "AXIS"."HISCONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISCONTACTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISCONTACTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISCONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISCONTACTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISCONTACTOS" TO "PROGRAMADORESCSI";
