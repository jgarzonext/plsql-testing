--------------------------------------------------------
--  DDL for Table INFO_EMP
--------------------------------------------------------

  CREATE TABLE "AXIS"."INFO_EMP" 
   (	"SMOVREC" NUMBER(8,0), 
	"CODIGO_ARP" NUMBER, 
	"MES_REPORTE" NUMBER(2,0), 
	"ANO_REPORTE" NUMBER(4,0), 
	"NIDENTIF" VARCHAR2(100 BYTE), 
	"CEMPRES" VARCHAR2(10 BYTE), 
	"TEMPRES" VARCHAR2(200 BYTE), 
	"SIGLA" VARCHAR2(10 BYTE), 
	"CDEPARTAMENTO" VARCHAR2(100 BYTE), 
	"CMUNICIPIO" VARCHAR2(100 BYTE), 
	"DIRECCION" VARCHAR2(200 BYTE), 
	"INDICADOR" VARCHAR2(1 BYTE), 
	"NOVEDAD" VARCHAR2(1 BYTE), 
	"NTRABAJADORES" VARCHAR2(200 BYTE), 
	"BASE_COTIZACION" NUMBER(14,4), 
	"PCOTIZACION" NUMBER, 
	"MONTO_COTIZACION" NUMBER, 
	"NDIAS_MORA" VARCHAR2(200 BYTE), 
	"IVALOR_MORA" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INFO_EMP"."SMOVREC" IS 'Secuencial del movimiento de recibos. FK de MOVRECIBO.SMOVREC';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."CODIGO_ARP" IS 'Código de la Administradora de Riesgos Profesionales que env¡a el reporte. Si es un solo dígito; incluir cero a la izquierda.                                                                                           ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."MES_REPORTE" IS 'Mes reportado en números. Sí es un solo dígito, incluir cero a izquierda.                                                                                                                                               ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."ANO_REPORTE" IS 'Año reportado.                                                                                                                                                                                                          ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."NIDENTIF" IS 'Número de identificación de la Empresa, según nit o cédula de ciudadan¡a.                                                                                                                                               ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."CEMPRES" IS 'Código de la empresa, teniendo en cuenta su clase de riesgo, su actividad y subactividad econ¢micas. (Clasificación según Decreto 2100 de 1995, artículo 2°).                                                           ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."TEMPRES" IS 'Nombre o razón social de la empresa.                                                                                                                                                                                    ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."SIGLA" IS 'Sigla de la Empresa.                                                                                                                                                                                                    ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."CDEPARTAMENTO" IS 'Código del Departamento donde está ubicada la empresa, según el Directorio de Divipola.                                                                                                                                 ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."CMUNICIPIO" IS 'Código del Municipio donde está ubicada la empresa, según el Directorio de Divipola.                                                                                                                                    ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."DIRECCION" IS 'Dirección de la Empresa.                                                                                                                                                                                                ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."INDICADOR" IS 'Indicador de la empresa: P, si es sede principal y C, si es centro de trabajo en los casos que sea diferente la clase de riesgo.                                                                                        ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."NOVEDAD" IS 'Tipo de Novedad: A, si está la empresa afiliada a la Administradora de Riesgos Profesionales y D, si está desafilada.                                                                                                   ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."NTRABAJADORES" IS 'Total de trabajadores afiliados a la administradora de Riesgos Profesionales.                                                                                                                                           ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."BASE_COTIZACION" IS 'Base de cotización de la empresa, según salarios mensuales y acorde con el decreto 1772/94, artículo 11°. No debe incluir comas, solamente el punto para separar decimales.                                             ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."PCOTIZACION" IS 'Porcentaje de cotización de la empresa, teniendo en cuenta su clase de riesgo (Tabla de cotizaciones mínimas y máximas decreto 1772/94, artículo 13°). No debe incluir comas, solamente el punto para separar decimales.';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."MONTO_COTIZACION" IS 'Monto de cotización que la empresa paga a la Administradora de Riesgos Profesionales. No debe incluir comas, solamente el punto para separar decimales.                                                                 ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."NDIAS_MORA" IS 'Días en mora que tiene la empresa con la Administradora de Riesgos Profesionales.                                                                                                                                       ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."IVALOR_MORA" IS 'Valor en mora de la empresa con la Administradora de Riesgos Profesionales. No debe incluir comas, solamente el punto para separar decimales.                                                                           ';
   COMMENT ON TABLE "AXIS"."INFO_EMP"  IS 'PRIMER ARCHIVO PLANO llamado INFOARP.TXT, cargas de ARL';
  GRANT UPDATE ON "AXIS"."INFO_EMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INFO_EMP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INFO_EMP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INFO_EMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INFO_EMP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INFO_EMP" TO "PROGRAMADORESCSI";
