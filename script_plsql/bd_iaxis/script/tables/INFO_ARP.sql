--------------------------------------------------------
--  DDL for Table INFO_ARP
--------------------------------------------------------

  CREATE TABLE "AXIS"."INFO_ARP" 
   (	"SMOVREC" NUMBER(8,0), 
	"CODIGO_ARP" NUMBER, 
	"MES_REPORTE" NUMBER(2,0), 
	"ANO_REPORTE" NUMBER(4,0), 
	"FENVIO_REPORTE" DATE, 
	"FCONSIGNACION" DATE, 
	"ICONSIGNADO" NUMBER(14,4)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INFO_ARP"."SMOVREC" IS 'Secuencial del movimiento de recibos. FK de MOVRECIBO.SMOVREC';
   COMMENT ON COLUMN "AXIS"."INFO_ARP"."CODIGO_ARP" IS 'Código de la Administradora de Riesgos Profesionales que envía el reporte. Si es un solo dígito, incluir cero a la izquierda.';
   COMMENT ON COLUMN "AXIS"."INFO_ARP"."MES_REPORTE" IS 'Mes reportado en números. Si es un solo dígito, incluir cero a la izquierda.';
   COMMENT ON COLUMN "AXIS"."INFO_ARP"."ANO_REPORTE" IS 'Año reportado (aaaa).';
   COMMENT ON COLUMN "AXIS"."INFO_ARP"."FENVIO_REPORTE" IS 'Fecha (dd/mm/aaaa) de envío del reporte';
   COMMENT ON COLUMN "AXIS"."INFO_ARP"."FCONSIGNACION" IS 'Fecha (dd/mm/aaaa) en que consigna la Administradora de Riesgos Profesionales al Fondo de Riesgos Profesionales.';
   COMMENT ON COLUMN "AXIS"."INFO_ARP"."ICONSIGNADO" IS 'Valor (bruto) consignado por la Administradora de Riesgos Profesionales al Fondo de Riesgos Profesionales, sin tener en cuenta incapacidades. No se deben incluir comas, solamente el punto para separar decimales.';
   COMMENT ON TABLE "AXIS"."INFO_ARP"  IS 'PRIMER ARCHIVO PLANO llamado INFOARP.TXT, cargas de ARL';
  GRANT UPDATE ON "AXIS"."INFO_ARP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INFO_ARP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INFO_ARP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INFO_ARP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INFO_ARP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INFO_ARP" TO "PROGRAMADORESCSI";
