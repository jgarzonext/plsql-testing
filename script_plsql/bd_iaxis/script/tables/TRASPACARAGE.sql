--------------------------------------------------------
--  DDL for Table TRASPACARAGE
--------------------------------------------------------

  CREATE TABLE "AXIS"."TRASPACARAGE" 
   (	"STRAS" NUMBER(6,0), 
	"CAGEINI" NUMBER, 
	"CAGEFIN" NUMBER, 
	"CTIPTRA" VARCHAR2(10 BYTE), 
	"SSEGURO" NUMBER, 
	"NRECIBO" NUMBER, 
	"FTRASP" DATE, 
	"SPROCES" NUMBER, 
	"NPROLIN" NUMBER(6,0), 
	"CESTADO" NUMBER(2,0), 
	"CMOTRASPASO" NUMBER(1,0), 
	"TOBSERV" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."STRAS" IS 'Identificador del traspaso';
   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."CAGEINI" IS 'Agente inicial';
   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."CAGEFIN" IS 'Agente final';
   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."CTIPTRA" IS 'Valor que se traspasa (POL --> Traspaso de Polizas, RECGES --> Recibos en periodo de gesti�n, RECPEN --> Recibos Pendientes)';
   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."SSEGURO" IS 'Id. del seguro';
   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."NRECIBO" IS 'Id. del recibo';
   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."FTRASP" IS 'Fecha de traspaso';
   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."SPROCES" IS 'Identificador del proceso';
   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."NPROLIN" IS 'Linea de error en el log del proceso';
   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."CESTADO" IS 'Estado de finalizaci�n del proceso (0 --> OK, 1 --> Error)';
   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."CMOTRASPASO" IS 'detvalores 8001008';
   COMMENT ON COLUMN "AXIS"."TRASPACARAGE"."TOBSERV" IS 'Observaciones';
   COMMENT ON TABLE "AXIS"."TRASPACARAGE"  IS 'Traspasos de Cartera entre Agentes';
  GRANT UPDATE ON "AXIS"."TRASPACARAGE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TRASPACARAGE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TRASPACARAGE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TRASPACARAGE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TRASPACARAGE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TRASPACARAGE" TO "PROGRAMADORESCSI";