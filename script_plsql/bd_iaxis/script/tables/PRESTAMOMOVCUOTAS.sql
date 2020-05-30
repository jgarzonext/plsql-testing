--------------------------------------------------------
--  DDL for Table PRESTAMOMOVCUOTAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRESTAMOMOVCUOTAS" 
   (	"SMOVCUO" NUMBER(8,0), 
	"CTAPRES" VARCHAR2(50 BYTE), 
	"FINICUA" DATE, 
	"ICAPPEND" NUMBER, 
	"FVENCIM" DATE, 
	"IDPAGO" NUMBER, 
	"NLINEA" NUMBER, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"CESTCUO" NUMBER(1,0), 
	"CESTANT" NUMBER(1,0), 
	"FMOVINI" DATE, 
	"FMOVFIN" DATE, 
	"FMOVDIA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."SMOVCUO" IS 'Secuencial del movimiento';
   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."CTAPRES" IS 'Id. del pr�stamo';
   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."FINICUA" IS 'Versi�n del cuadro';
   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."ICAPPEND" IS 'Capital pendiente';
   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."FVENCIM" IS 'Fecha de vencimiento de la cuota';
   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."IDPAGO" IS 'Identificador del pago (recibo)';
   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."NLINEA" IS 'Identificador de la l�nea';
   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."CUSUARI" IS 'C�digo de usuario.';
   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."CESTCUO" IS 'Estado de la cuota';
   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."CESTANT" IS 'Estado anterior de la cuota';
   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."FMOVINI" IS 'Fecha inicial movimiento';
   COMMENT ON COLUMN "AXIS"."PRESTAMOMOVCUOTAS"."FMOVFIN" IS 'Fecha final  movimiento';
   COMMENT ON TABLE "AXIS"."PRESTAMOMOVCUOTAS"  IS 'Movimientos Cuotas Prestamos';
  GRANT UPDATE ON "AXIS"."PRESTAMOMOVCUOTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRESTAMOMOVCUOTAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRESTAMOMOVCUOTAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRESTAMOMOVCUOTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRESTAMOMOVCUOTAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRESTAMOMOVCUOTAS" TO "PROGRAMADORESCSI";