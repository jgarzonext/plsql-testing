--------------------------------------------------------
--  DDL for Table MAP_DET_TRATAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."MAP_DET_TRATAR" 
   (	"CMAPEAD" VARCHAR2(5 BYTE), 
	"TCONDICION" VARCHAR2(1000 BYTE), 
	"CTABLA" NUMBER(8,0), 
	"NVECES" NUMBER(6,0), 
	"TCAMPO" VARCHAR2(30 BYTE), 
	"CTIPCAMPO" VARCHAR2(2 BYTE), 
	"TMASCARA" VARCHAR2(4000 BYTE), 
	"NORDEN" NUMBER(4,0), 
	"TSETWHERE" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MAP_DET_TRATAR"."CMAPEAD" IS 'C�digo del mapead';
   COMMENT ON COLUMN "AXIS"."MAP_DET_TRATAR"."TCONDICION" IS 'Expresi�n de la condici�n de l�nea (puede ser compleja)';
   COMMENT ON COLUMN "AXIS"."MAP_DET_TRATAR"."CTABLA" IS 'C�digo de la tabla en la que se grabaran o obtendran los datos';
   COMMENT ON COLUMN "AXIS"."MAP_DET_TRATAR"."NVECES" IS 'N�mero de veces del campo en la tabla para una linea del fichero';
   COMMENT ON COLUMN "AXIS"."MAP_DET_TRATAR"."TCAMPO" IS 'Nombre del campo en la que se grabaran o obtendran los datos';
   COMMENT ON COLUMN "AXIS"."MAP_DET_TRATAR"."CTIPCAMPO" IS 'Tipo de campo: 1-varchar2, 2-number, 3-date';
   COMMENT ON COLUMN "AXIS"."MAP_DET_TRATAR"."TMASCARA" IS 'M�scara con la que deben cargarse los datos';
   COMMENT ON COLUMN "AXIS"."MAP_DET_TRATAR"."NORDEN" IS 'Situaci�n del campo en el fichero';
   COMMENT ON COLUMN "AXIS"."MAP_DET_TRATAR"."TSETWHERE" IS 'Para los update donde interviene el campo, S-si el campo forma parte del SET, W-forma parte del WHERE';
  GRANT UPDATE ON "AXIS"."MAP_DET_TRATAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MAP_DET_TRATAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MAP_DET_TRATAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MAP_DET_TRATAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MAP_DET_TRATAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MAP_DET_TRATAR" TO "PROGRAMADORESCSI";