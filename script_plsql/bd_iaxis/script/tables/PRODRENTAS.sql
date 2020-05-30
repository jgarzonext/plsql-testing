--------------------------------------------------------
--  DDL for Table PRODRENTAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRODRENTAS" 
   (	"SPRODUC" NUMBER(6,0), 
	"NORDENP" NUMBER(3,0), 
	"SPROREN" NUMBER(6,0), 
	"TFUNCIO" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRODRENTAS"."SPRODUC" IS 'Secuencia del producto (ahorro)';
   COMMENT ON COLUMN "AXIS"."PRODRENTAS"."NORDENP" IS 'N�mero orden producto';
   COMMENT ON COLUMN "AXIS"."PRODRENTAS"."SPROREN" IS 'Secuencia del producto (rentas)';
   COMMENT ON COLUMN "AXIS"."PRODRENTAS"."TFUNCIO" IS 'Funci�n a llamar dinamicamente';
   COMMENT ON TABLE "AXIS"."PRODRENTAS"  IS 'Relaci�n entre productos de ahorro y de rentas';
  GRANT UPDATE ON "AXIS"."PRODRENTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODRENTAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRODRENTAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRODRENTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODRENTAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRODRENTAS" TO "PROGRAMADORESCSI";
