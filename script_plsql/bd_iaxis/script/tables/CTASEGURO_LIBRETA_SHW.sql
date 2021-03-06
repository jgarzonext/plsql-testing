--------------------------------------------------------
--  DDL for Table CTASEGURO_LIBRETA_SHW
--------------------------------------------------------

  CREATE TABLE "AXIS"."CTASEGURO_LIBRETA_SHW" 
   (	"SSEGURO" NUMBER, 
	"NNUMLIN" NUMBER(6,0), 
	"FCONTAB" DATE, 
	"CCAPGAR" NUMBER, 
	"CCAPFAL" NUMBER, 
	"NMOVIMI" NUMBER(6,0), 
	"SINTBATCH" NUMBER(6,0), 
	"NNUMLIB" NUMBER, 
	"NPAGINA" NUMBER(10,0), 
	"NLINEA" NUMBER(10,0), 
	"FIMPRES" DATE, 
	"SREIMPRE" NUMBER, 
	"IGASEXT" NUMBER, 
	"IGASINT" NUMBER, 
	"IPRIRIE" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CTASEGURO_LIBRETA_SHW"."SSEGURO" IS 'Identificador del seguro';
   COMMENT ON COLUMN "AXIS"."CTASEGURO_LIBRETA_SHW"."NNUMLIN" IS 'N�mero de l�nea de ctaseguro';
   COMMENT ON COLUMN "AXIS"."CTASEGURO_LIBRETA_SHW"."FCONTAB" IS 'Fecha contable';
   COMMENT ON COLUMN "AXIS"."CTASEGURO_LIBRETA_SHW"."CCAPGAR" IS 'Capital garantizado en ese momento';
   COMMENT ON COLUMN "AXIS"."CTASEGURO_LIBRETA_SHW"."CCAPFAL" IS 'Capital de fallecimiento actual';
   COMMENT ON COLUMN "AXIS"."CTASEGURO_LIBRETA_SHW"."NMOVIMI" IS 'N�mero de movimiento de seguro que genera este movimiento de cuenta';
   COMMENT ON COLUMN "AXIS"."CTASEGURO_LIBRETA_SHW"."SINTBATCH" IS 'Secuencia de interfase de env�o a libreta. Si null, no se ha enviado';
   COMMENT ON COLUMN "AXIS"."CTASEGURO_LIBRETA_SHW"."NNUMLIB" IS 'N�mero secuencial de libreta';
   COMMENT ON COLUMN "AXIS"."CTASEGURO_LIBRETA_SHW"."IGASEXT" IS 'Importe gastos externos/Comisi�n';
   COMMENT ON COLUMN "AXIS"."CTASEGURO_LIBRETA_SHW"."IGASINT" IS 'Importe gastos internos';
   COMMENT ON COLUMN "AXIS"."CTASEGURO_LIBRETA_SHW"."IPRIRIE" IS 'Importe prima de riesgo';
   COMMENT ON TABLE "AXIS"."CTASEGURO_LIBRETA_SHW"  IS 'M�s informaci�n de ctaseguro para enviar a la libreta';
  GRANT UPDATE ON "AXIS"."CTASEGURO_LIBRETA_SHW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CTASEGURO_LIBRETA_SHW" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CTASEGURO_LIBRETA_SHW" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CTASEGURO_LIBRETA_SHW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CTASEGURO_LIBRETA_SHW" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CTASEGURO_LIBRETA_SHW" TO "PROGRAMADORESCSI";
