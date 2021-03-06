--------------------------------------------------------
--  DDL for Table SIN_PARGES_RESERVA
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_PARGES_RESERVA" 
   (	"CTIPGES" NUMBER(8,0), 
	"CTIPGAS" NUMBER(3,0), 
	"CTIPSER" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_PARGES_RESERVA"."CTIPGES" IS 'Tipo Gestion. VF 722';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_RESERVA"."CTIPGAS" IS 'Tipo reserva de gastos';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_RESERVA"."CTIPSER" IS 'Tipo servicio. VF 735';
   COMMENT ON TABLE "AXIS"."SIN_PARGES_RESERVA"  IS 'Parametrizacion gestiones: Tipo de reserva de gasto segun tipo gestion';
  GRANT UPDATE ON "AXIS"."SIN_PARGES_RESERVA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PARGES_RESERVA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_PARGES_RESERVA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_PARGES_RESERVA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PARGES_RESERVA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_PARGES_RESERVA" TO "PROGRAMADORESCSI";
