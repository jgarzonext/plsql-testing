--------------------------------------------------------
--  DDL for Table PRODMOTMOV
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRODMOTMOV" 
   (	"SPRODUC" NUMBER(6,0), 
	"CMOTMOV" NUMBER(3,0), 
	"TFORMS" VARCHAR2(8 BYTE), 
	"NORDEN" NUMBER(3,0), 
	"TREPORT" VARCHAR2(20 BYTE), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRODMOTMOV"."SPRODUC" IS 'Clave del C�digo';
   COMMENT ON COLUMN "AXIS"."PRODMOTMOV"."CMOTMOV" IS 'C�digo del Motivo';
   COMMENT ON COLUMN "AXIS"."PRODMOTMOV"."TFORMS" IS 'Nombre Formulario a utilizar al hacer un suplemento';
   COMMENT ON COLUMN "AXIS"."PRODMOTMOV"."NORDEN" IS 'Numero de Orden de apareci�n en listas';
   COMMENT ON COLUMN "AXIS"."PRODMOTMOV"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODMOTMOV"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODMOTMOV"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODMOTMOV"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."PRODMOTMOV"  IS 'Mot.Movimientos(suplementos) que se pueden Realizar en un Producto';
  GRANT UPDATE ON "AXIS"."PRODMOTMOV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODMOTMOV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRODMOTMOV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRODMOTMOV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODMOTMOV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRODMOTMOV" TO "PROGRAMADORESCSI";
