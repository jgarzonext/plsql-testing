--------------------------------------------------------
--  DDL for Table AUTRIESGOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUTRIESGOS" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CVERSION" VARCHAR2(11 BYTE), 
	"CTIPMAT" NUMBER(6,0), 
	"CMATRIC" VARCHAR2(12 BYTE), 
	"CUSO" VARCHAR2(3 BYTE), 
	"CSUBUSO" VARCHAR2(2 BYTE), 
	"FMATRIC" DATE, 
	"NKILOMETROS" NUMBER(3,0), 
	"CVEHNUE" NUMBER(3,0), 
	"IVEHICU" NUMBER(15,4), 
	"NPMA" NUMBER(10,3), 
	"NTARA" NUMBER(10,3), 
	"CCOLOR" NUMBER(3,0), 
	"NBASTID" VARCHAR2(20 BYTE), 
	"NPLAZAS" NUMBER(3,0), 
	"CGARAJE" NUMBER(3,0), 
	"CUSOREM" NUMBER(3,0), 
	"CREMOLQUE" NUMBER(3,0), 
	"TRIESGO" VARCHAR2(300 BYTE), 
	"CPAISORIGEN" NUMBER(3,0), 
	"CMOTOR" VARCHAR2(100 BYTE), 
	"CCHASIS" VARCHAR2(100 BYTE), 
	"IVEHINUE" NUMBER(15,4), 
	"NKILOMETRAJE" NUMBER(15,4), 
	"CCILINDRAJE" VARCHAR2(150 BYTE), 
	"CODMOTOR" VARCHAR2(100 BYTE), 
	"CPINTURA" NUMBER(6,0), 
	"CCAJA" NUMBER(5,0), 
	"CCAMPERO" NUMBER(5,0), 
	"CTIPCARROCERIA" NUMBER(5,0), 
	"CSERVICIO" NUMBER(5,0), 
	"CORIGEN" NUMBER(5,0), 
	"CTRANSPORTE" NUMBER(4,0), 
	"ANYO" NUMBER(4,0), 
	"CIAANT" NUMBER, 
	"FFINCIANT" DATE, 
	"CMODALIDAD" VARCHAR2(10 BYTE), 
	"CPESO" NUMBER DEFAULT NULL, 
	"CTRANSMISION" NUMBER DEFAULT NULL, 
	"NPUERTAS" NUMBER DEFAULT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."SSEGURO" IS 'Secuencial de seguro';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."NRIESGO" IS 'Numero de riesgo';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."NMOVIMI" IS 'Numero de movimiento';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CVERSION" IS 'Codigo de vehiculo';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CTIPMAT" IS 'Tipo de matricula. Valor fijo 290';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CMATRIC" IS 'Matricula vehiculo';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CUSO" IS 'Codigo so del vehiculo';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CSUBUSO" IS 'Codigo subuso del vehiculo';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."FMATRIC" IS 'Fecha de primera matriculacion';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."NKILOMETROS" IS 'Numero de kilometros anulaes.Valor fijo = 295';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CVEHNUE" IS 'Vehiculo nuevo. Valor fijo = 108';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."IVEHICU" IS 'Importe vehiculo';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."NPMA" IS 'Peso Maximo Autorizado';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."NTARA" IS 'Peso en vacio';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CCOLOR" IS 'Color vehiculo. Valor fijo = 440';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."NBASTID" IS 'Numero de bastidos. VIN';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."NPLAZAS" IS 'Numero de plazas del vehiculo';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CGARAJE" IS 'Utiliza garaje. Valor fjio = 296';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CUSOREM" IS 'Si utiliza remolque. Valor fijo = 108';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CREMOLQUE" IS 'Descripcion del remolque. Valor fijo = 297';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."TRIESGO" IS 'Descripci�n del riesgo autom�bil';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CPAISORIGEN" IS 'Pa�s de Origen';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CMOTOR" IS 'Tipo combustible(Tipo de motor (Gasolina, Diesel,etc). Valor fijo 291).';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CCHASIS" IS 'C�digo de Chasis';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."IVEHINUE" IS 'Valor a nuevo';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."NKILOMETRAJE" IS 'Kil�metraje';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CCILINDRAJE" IS 'Cilindraje';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CODMOTOR" IS 'C�digo Motor';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CPINTURA" IS 'Tipo de pintura';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CCAJA" IS 'Tipo de caja cambios (valor fijo 8000907)';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CCAMPERO" IS 'Tipo campero';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CTIPCARROCERIA" IS 'Tipo carrocer�a';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CSERVICIO" IS 'C�digo de servicio (p�blico,part�cular, etc). Valor fijo 8000904';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CORIGEN" IS 'C�digo Or�gen (Nacional, Importado). Valor fijo 8000905';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CTRANSPORTE" IS 'Transporte combustible(S/N)';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."ANYO" IS 'Anyo versi�n';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CIAANT" IS 'Compa��a de la cual procede';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."FFINCIANT" IS 'Fecha de antig�edad en la compa��a anterior';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CMODALIDAD" IS 'Modalidad del riesgo';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CPESO" IS 'Peso del vehiculo';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."CTRANSMISION" IS 'Codigo de tipo de transmision (Valor fijo 8000937)';
   COMMENT ON COLUMN "AXIS"."AUTRIESGOS"."NPUERTAS" IS 'Numero de puertas del vehiculo';
   COMMENT ON TABLE "AXIS"."AUTRIESGOS"  IS 'Riesgos de los autos';
  GRANT UPDATE ON "AXIS"."AUTRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUTRIESGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUTRIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUTRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUTRIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUTRIESGOS" TO "PROGRAMADORESCSI";