--------------------------------------------------------
--  DDL for Table SIN_PARGES_MOVIMIENTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_PARGES_MOVIMIENTOS" 
   (	"CTIPGES" NUMBER(8,0), 
	"CTIPMOV" NUMBER(8,0), 
	"CESTGES" NUMBER(8,0), 
	"CSUBGES" NUMBER(8,0), 
	"CFINICI" NUMBER(1,0), 
	"NFPRXBS" NUMBER(1,0), 
	"NFPRXUM" NUMBER(1,0), 
	"NFPRXND" NUMBER(3,0), 
	"NFLIMIT" NUMBER(3,0), 
	"NFACCIO" NUMBER(3,0), 
	"NACCION" NUMBER(3,0), 
	"NAVAPER" NUMBER(2,0), 
	"NAVANCE" NUMBER(2,0), 
	"CRESERV" NUMBER(1,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CEVENTO" VARCHAR2(20 BYTE), 
	"CAUTORI" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."CTIPGES" IS 'Tipo Gestion. VF 722';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."CTIPMOV" IS 'Tipo Movimiento. VF 723';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."CESTGES" IS 'Estado en que queda la gesti�n despu�s';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."CSUBGES" IS 'Subestado en que queda la gesti�n despu�s';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."CFINICI" IS 'Fecha de Inicio modificable 0-No 1-Si';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."NFPRXBS" IS 'Calculo proximo. Base: 1-Sysdate 2-FINICIO';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."NFPRXUM" IS 'Calculo proximo. Unidades: 1-dias nat. 2-dias reales 3-horas nat. 4-horas reales';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."NFPRXND" IS 'Calculo proximo. Cantidad a sumar';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."NFLIMIT" IS 'Calculo limite. Dias nat. a sumar a la Fecha de Inicio';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."NFACCIO" IS 'Calculo Fecha Accion. Dias nat. a sumar a Fecha Proximo';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."NACCION" IS 'Accion: Capacidad de carga de trabajo';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."NAVAPER" IS 'Total avances permitidos';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."NAVANCE" IS 'Es avance 0=no 1=si';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."CRESERV" IS 'Reserva null=nada 0=disminuir 1=aumentar 2=sustituir';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."CEVENTO" IS 'Creacion apunte en agenda. Clave de SIN_PROF_APUNTES';
   COMMENT ON COLUMN "AXIS"."SIN_PARGES_MOVIMIENTOS"."CAUTORI" IS 'Indica que es movimiento de autorizaci�n';
   COMMENT ON TABLE "AXIS"."SIN_PARGES_MOVIMIENTOS"  IS 'Parametrizacion gestiones: Ficha de parametrizacion de Movimientos';
  GRANT UPDATE ON "AXIS"."SIN_PARGES_MOVIMIENTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PARGES_MOVIMIENTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_PARGES_MOVIMIENTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_PARGES_MOVIMIENTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PARGES_MOVIMIENTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_PARGES_MOVIMIENTOS" TO "PROGRAMADORESCSI";