--------------------------------------------------------
--  DDL for Table INFO_DWH
--------------------------------------------------------

  CREATE TABLE "AXIS"."INFO_DWH" 
   (	"SMOVREC" NUMBER(8,0), 
	"TDIRECCION" VARCHAR2(200 BYTE), 
	"CMUNICIPIO" VARCHAR2(200 BYTE), 
	"CDEPARTAM" VARCHAR2(200 BYTE), 
	"NTELEFONO" VARCHAR2(200 BYTE), 
	"TPLANTILLA" VARCHAR2(200 BYTE), 
	"NPLANTILL_ASOC" VARCHAR2(200 BYTE), 
	"NPLANTILLA" VARCHAR2(200 BYTE), 
	"PRESENTACION" VARCHAR2(200 BYTE), 
	"NEMPLEADOS" VARCHAR2(200 BYTE), 
	"COPERADO" VARCHAR2(200 BYTE), 
	"MODPLANTILLA" VARCHAR2(200 BYTE), 
	"NDIAS_MORA" VARCHAR2(200 BYTE), 
	"ICOTIZACION" NUMBER, 
	"IINGRESO_BASE" NUMBER, 
	"CBANCO" VARCHAR2(200 BYTE), 
	"TIPO_APORTANTE" VARCHAR2(200 BYTE), 
	"CAGENTE" VARCHAR2(200 BYTE), 
	"NPOLIZA" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INFO_DWH"."SMOVREC" IS 'Secuencial del movimiento de recibos. FK de MOVRECIBO.SMOVREC';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."TDIRECCION" IS 'DIRECCION DE CORRESPONDENCIA.';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."CMUNICIPIO" IS 'CODIGO CIUDAD O MUNICIPIO.';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."CDEPARTAM" IS 'CODIGO DEPARTAMENTO.';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."NTELEFONO" IS 'TELEFONO.';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."TPLANTILLA" IS 'TIPO PLANILLA.
Guardar en tablas IAXIS
E: Empleados empresas
Y: Independientes empresas
A: Empleados adicionales
I:  Independientes
S:  Empleados de Independientes
M: Mora
N:  Correciones
T: SGP
F: Correcci�n pagos planilla T
J: Pago sentencias judiciales
X: Empresas han concluido proceso de liquidaci�n y giran aportes al SISS';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."NPLANTILL_ASOC" IS 'N�MERO DE PLANILLA ASOCIADO A ESTA PLANILLA';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."NPLANTILLA" IS 'N�MERO DE PLANILLA';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."PRESENTACION" IS 'FORMA DE PRESENTACI�N (U,C,S)';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."NEMPLEADOS" IS 'NUMERO TOTAL DE EMPLEADOS';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."COPERADO" IS 'C�DIGO DEL OPERADO';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."MODPLANTILLA" IS 'MODALIDAD DE LA PLANILLA
Guardar en tablas IAXIS
1: Electr�nica
2: Asistida
3: F�sica';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."NDIAS_MORA" IS 'D�AS MORA ';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."ICOTIZACION" IS 'TOTAL COTIZACI�N OBLIGATORIA ';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."IINGRESO_BASE" IS 'TOTAL INGRESO BASE DE COTIZACI�N';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."CBANCO" IS 'C�DIGO DEL BANCO. Este c�digo del banco que viene en el Log Bancario';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."TIPO_APORTANTE" IS 'TIPO DE APORTANTE (VINCULADO)
1-	Empleador
2-	Independiente
3-	Entidades o Universidades P�blicas con r�gimen en salud
4-	Agremiaciones o asociaciones
5-	Cooperativas y pre cooperativas de trabajo asociado.
6-	Misiones diplom�ticas, consulares o de organismos multilaterales no sometidos a la legislaci�n colombiana.
7-	Organizaciones Administradoras del Programa de Hogares de Bienestar.
8-	Pagador de aportes de los concejales municipales o distritales.';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."CAGENTE" IS 'CODIGO AGENTE. C�digo del agente de la red comercial. No es obligatorio';
   COMMENT ON COLUMN "AXIS"."INFO_DWH"."NPOLIZA" IS 'NUMERO DE POLIZA';
   COMMENT ON TABLE "AXIS"."INFO_DWH"  IS 'Datos para el mini DWH, cargas de ARL';
  GRANT UPDATE ON "AXIS"."INFO_DWH" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INFO_DWH" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INFO_DWH" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INFO_DWH" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INFO_DWH" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INFO_DWH" TO "PROGRAMADORESCSI";