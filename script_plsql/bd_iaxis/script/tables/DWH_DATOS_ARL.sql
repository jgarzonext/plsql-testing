--------------------------------------------------------
--  DDL for Table DWH_DATOS_ARL
--------------------------------------------------------

  CREATE TABLE "AXIS"."DWH_DATOS_ARL" 
   (	"CRECCIA" VARCHAR2(50 BYTE), 
	"NRECIBO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"CTIPO" NUMBER(1,0), 
	"EMPEXTCOB" VARCHAR2(100 BYTE), 
	"CESTPROCES" NUMBER(2,0), 
	"CGESTION" NUMBER(2,0), 
	"TIPIFICACION" VARCHAR2(3 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DWH_DATOS_ARL"."CRECCIA" IS 'Identificador �nico de Factura';
   COMMENT ON COLUMN "AXIS"."DWH_DATOS_ARL"."NRECIBO" IS 'N�mero de recibo';
   COMMENT ON COLUMN "AXIS"."DWH_DATOS_ARL"."NMOVIMI" IS 'N�mero de moviento';
   COMMENT ON COLUMN "AXIS"."DWH_DATOS_ARL"."CTIPO" IS 'Tipo de factura (1 factura, 2 recaudo)';
   COMMENT ON COLUMN "AXIS"."DWH_DATOS_ARL"."EMPEXTCOB" IS 'Empresa externa de cobro';
   COMMENT ON COLUMN "AXIS"."DWH_DATOS_ARL"."CESTPROCES" IS 'Estado proceso (1.Constituci�n en Mora,2.Persuasivo,3.Pre jur�dico,4.Jur�dico)';
   COMMENT ON COLUMN "AXIS"."DWH_DATOS_ARL"."CGESTION" IS 'Gesti�n (ARL) (1.Depuraci�n,2.Recuperaci�n)';
   COMMENT ON COLUMN "AXIS"."DWH_DATOS_ARL"."TIPIFICACION" IS 'Tipificaci�n (ARL)(P Pago,RT Retiro - Traslado,R Retiro,N Novedad,NP No Pago,D Deuda)';
   COMMENT ON TABLE "AXIS"."DWH_DATOS_ARL"  IS 'Tabla consulta DWH para Facturas ARL';
  GRANT UPDATE ON "AXIS"."DWH_DATOS_ARL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DWH_DATOS_ARL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DWH_DATOS_ARL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DWH_DATOS_ARL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DWH_DATOS_ARL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DWH_DATOS_ARL" TO "PROGRAMADORESCSI";
