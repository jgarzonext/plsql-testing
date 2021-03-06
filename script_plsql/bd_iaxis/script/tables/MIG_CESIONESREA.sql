--------------------------------------------------------
--  DDL for Table MIG_CESIONESREA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CESIONESREA" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"SCESREA" NUMBER(8,0), 
	"NCESION" NUMBER(6,0), 
	"ICESION" NUMBER, 
	"ICAPCES" NUMBER, 
	"MIG_FKSEG" VARCHAR2(50 BYTE), 
	"NVERSIO" NUMBER(2,0), 
	"SCONTRA" NUMBER(6,0), 
	"CTRAMO" NUMBER(2,0), 
	"SFACULT" NUMBER(6,0), 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"MIF_FKSINI" VARCHAR2(50 BYTE), 
	"FEFECTO" DATE, 
	"FVENCIM" DATE, 
	"FCONTAB" DATE, 
	"PCESION" NUMBER(8,0), 
	"CGENERA" NUMBER(2,0), 
	"FGENERA" DATE, 
	"FREGULA" DATE, 
	"FANULAC" DATE, 
	"NMOVIMI" NUMBER(4,0), 
	"IPRITARREA" NUMBER, 
	"IDTOSEL" NUMBER, 
	"PSOBREPRIMA" NUMBER(8,0), 
	"CDETCES" NUMBER(1,0), 
	"IPLENO" NUMBER, 
	"ICAPACI" NUMBER, 
	"NMOVIGEN" NUMBER(6,0), 
	"CTRAMPA" NUMBER(2,0), 
	"CTIPOMOV" VARCHAR2(1 BYTE), 
	"CCUTOFF" VARCHAR2(1 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."MIG_PK" IS 'Clave �nica de MIG_CESIONESREA';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."SCESREA" IS 'Secuencia de cesi�n de reaseguro. Si es nulo se calcula';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."NCESION" IS 'N�mero de cesi�n de reaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."ICESION" IS 'Importe prima anual';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."ICAPCES" IS 'Capacidad de la sesi�n';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."MIG_FKSEG" IS 'MIG_FK (SEGUROS) � Clave externa de seguros';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."NVERSIO" IS 'Versi�n del contrato';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."SCONTRA" IS 'C�digo del contrato';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."CTRAMO" IS 'C�digo del tramo 0-Primer tramo (pleno inicial), 1...4-Sucesivos, 5-Facultativo';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."SFACULT" IS 'C�digo del cuadro facultativo (Nulo para la migraci�n)';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."MIF_FKSINI" IS 'MIF_FK_SINI � Siniestro � Clave externa siniestros';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."FEFECTO" IS 'Fecha efecto reaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."FVENCIM" IS 'Fecha vencimiento reaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."FCONTAB" IS 'Fecha contable';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."PCESION" IS 'Porcentaje de cesi�n';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."CGENERA" IS 'Tipo movimiento 2-Siniestros, 3-Producci�n(normal), 4 y 7-Suplementos, 6 Anulaci�n, 5-Cartera';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."FGENERA" IS 'Fecha generaci�n reaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."FREGULA" IS 'Fecha regularizaci�n reaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."FANULAC" IS 'Fecha de anulaci�n de la cesi�n';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."IPRITARREA" IS 'Prima de tarifa';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."IDTOSEL" IS 'Importe descuento de selecci�n';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."PSOBREPRIMA" IS 'Porcentaje sobreprima';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."CDETCES" IS 'Indica si se graba o no a reasegemi. Por defecto 1';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."IPLENO" IS 'Pleno utilizado en el c�lculo de la cesi�n';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."ICAPACI" IS 'Capacidad utilizada en el c�lculo de la cesi�n';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."NMOVIGEN" IS 'Conjunto de cesiones generadas.';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."CTRAMPA" IS 'Tramo padre amparado';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."CTIPOMOV" IS 'Null o M (Las distribuciones son a decisi�n del cliente)';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."CCUTOFF" IS 'S-S�/N-No. Indica si la retenci�n generada es debido a un movimiento de cutoff';
   COMMENT ON COLUMN "AXIS"."MIG_CESIONESREA"."MIG_FK2" IS 'Clave externa para MIG_CONTRATOS';
   COMMENT ON TABLE "AXIS"."MIG_CESIONESREA"  IS 'Fichero con la informaci�n de cesiones de reaseguro.';
  GRANT UPDATE ON "AXIS"."MIG_CESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CESIONESREA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CESIONESREA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_CESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CESIONESREA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CESIONESREA" TO "PROGRAMADORESCSI";
