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
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."CODIGO_ARP" IS 'C�digo de la Administradora de Riesgos Profesionales que env�a el reporte. Si es un solo d�gito; incluir cero a la izquierda.                                                                                           ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."MES_REPORTE" IS 'Mes reportado en n�meros. S� es un solo d�gito, incluir cero a izquierda.                                                                                                                                               ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."ANO_REPORTE" IS 'A�o reportado.                                                                                                                                                                                                          ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."NIDENTIF" IS 'N�mero de identificaci�n de la Empresa, seg�n nit o c�dula de ciudadan�a.                                                                                                                                               ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."CEMPRES" IS 'C�digo de la empresa, teniendo en cuenta su clase de riesgo, su actividad y subactividad econ�micas. (Clasificaci�n seg�n Decreto 2100 de 1995, art�culo 2�).                                                           ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."TEMPRES" IS 'Nombre o raz�n social de la empresa.                                                                                                                                                                                    ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."SIGLA" IS 'Sigla de la Empresa.                                                                                                                                                                                                    ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."CDEPARTAMENTO" IS 'C�digo del Departamento donde est� ubicada la empresa, seg�n el Directorio de Divipola.                                                                                                                                 ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."CMUNICIPIO" IS 'C�digo del Municipio donde est� ubicada la empresa, seg�n el Directorio de Divipola.                                                                                                                                    ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."DIRECCION" IS 'Direcci�n de la Empresa.                                                                                                                                                                                                ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."INDICADOR" IS 'Indicador de la empresa: P, si es sede principal y C, si es centro de trabajo en los casos que sea diferente la clase de riesgo.                                                                                        ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."NOVEDAD" IS 'Tipo de Novedad: A, si est� la empresa afiliada a la Administradora de Riesgos Profesionales y D, si est� desafilada.                                                                                                   ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."NTRABAJADORES" IS 'Total de trabajadores afiliados a la administradora de Riesgos Profesionales.                                                                                                                                           ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."BASE_COTIZACION" IS 'Base de cotizaci�n de la empresa, seg�n salarios mensuales y acorde con el decreto 1772/94, art�culo 11�. No debe incluir comas, solamente el punto para separar decimales.                                             ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."PCOTIZACION" IS 'Porcentaje de cotizaci�n de la empresa, teniendo en cuenta su clase de riesgo (Tabla de cotizaciones m�nimas y m�ximas decreto 1772/94, art�culo 13�). No debe incluir comas, solamente el punto para separar decimales.';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."MONTO_COTIZACION" IS 'Monto de cotizaci�n que la empresa paga a la Administradora de Riesgos Profesionales. No debe incluir comas, solamente el punto para separar decimales.                                                                 ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."NDIAS_MORA" IS 'D�as en mora que tiene la empresa con la Administradora de Riesgos Profesionales.                                                                                                                                       ';
   COMMENT ON COLUMN "AXIS"."INFO_EMP"."IVALOR_MORA" IS 'Valor en mora de la empresa con la Administradora de Riesgos Profesionales. No debe incluir comas, solamente el punto para separar decimales.                                                                           ';
   COMMENT ON TABLE "AXIS"."INFO_EMP"  IS 'PRIMER ARCHIVO PLANO llamado INFOARP.TXT, cargas de ARL';
  GRANT UPDATE ON "AXIS"."INFO_EMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INFO_EMP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INFO_EMP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INFO_EMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INFO_EMP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INFO_EMP" TO "PROGRAMADORESCSI";
