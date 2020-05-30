--------------------------------------------------------
--  DDL for Table MAP_XML
--------------------------------------------------------

  CREATE TABLE "AXIS"."MAP_XML" 
   (	"CMAPEAD" VARCHAR2(5 BYTE), 
	"TPARE" VARCHAR2(60 BYTE), 
	"NORDFILL" NUMBER(4,0), 
	"TTAG" VARCHAR2(60 BYTE), 
	"CATRIBUTS" NUMBER(4,0), 
	"CTABLAFILLS" NUMBER(8,0), 
	"NORDEN" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MAP_XML"."CMAPEAD" IS 'C�digo del mapeador';
   COMMENT ON COLUMN "AXIS"."MAP_XML"."TPARE" IS 'Nombre del tag padre';
   COMMENT ON COLUMN "AXIS"."MAP_XML"."NORDFILL" IS 'Orden del tag en el padre';
   COMMENT ON COLUMN "AXIS"."MAP_XML"."TTAG" IS 'Nombre del tag';
   COMMENT ON COLUMN "AXIS"."MAP_XML"."CATRIBUTS" IS 'Indica si un tag es un atributo (1=Es un atributo del padre; 2=Valor del padre en caso que este tenga atributos; 0=otro)';
   COMMENT ON COLUMN "AXIS"."MAP_XML"."CTABLAFILLS" IS 'C�digo de la tabla de la que obtendran los datos de los tags hijos';
   COMMENT ON COLUMN "AXIS"."MAP_XML"."NORDEN" IS 'Orden en la tabla MAP_DETALLE';
  GRANT UPDATE ON "AXIS"."MAP_XML" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MAP_XML" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MAP_XML" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MAP_XML" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MAP_XML" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MAP_XML" TO "PROGRAMADORESCSI";
