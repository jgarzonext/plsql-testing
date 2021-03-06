--------------------------------------------------------
--  DDL for Table DETSIMULAPP
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETSIMULAPP" 
   (	"SESION" NUMBER, 
	"EJERCICIO" NUMBER, 
	"FFINEJER" DATE, 
	"APORMES" NUMBER, 
	"CAPITAL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DETSIMULAPP"."SESION" IS 'Ientificador de la sesi�n';
   COMMENT ON COLUMN "AXIS"."DETSIMULAPP"."EJERCICIO" IS 'N�mero de ejercicio';
   COMMENT ON COLUMN "AXIS"."DETSIMULAPP"."FFINEJER" IS 'Fecha aportaci�n o a�o de prestaci�n';
   COMMENT ON COLUMN "AXIS"."DETSIMULAPP"."APORMES" IS 'Aportaci�n mensual o capital restante de prestaci�n';
   COMMENT ON COLUMN "AXIS"."DETSIMULAPP"."CAPITAL" IS 'Saldo aportaci�n o importe prestaci�n.';
   COMMENT ON TABLE "AXIS"."DETSIMULAPP"  IS 'Detalle de aportaciones/prestaciones simulaciones';
  GRANT UPDATE ON "AXIS"."DETSIMULAPP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETSIMULAPP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETSIMULAPP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETSIMULAPP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETSIMULAPP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETSIMULAPP" TO "PROGRAMADORESCSI";
