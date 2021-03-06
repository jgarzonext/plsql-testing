--------------------------------------------------------
--  DDL for Table MIG_FIN_INDICADORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_FIN_INDICADORES" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SFINANCI" NUMBER, 
	"NMOVIMI" NUMBER, 
	"FINDICAD" DATE, 
	"IMARGEN" NUMBER, 
	"ICAPTRAB" NUMBER, 
	"TRAZCOR" VARCHAR2(2000 BYTE), 
	"TPRBACI" VARCHAR2(2000 BYTE), 
	"IENDUADA" NUMBER, 
	"NDIACAR" NUMBER, 
	"NROTPRO" NUMBER, 
	"NROTINV" NUMBER, 
	"NDIACICL" NUMBER, 
	"IRENTAB" NUMBER, 
	"IOBLCP" NUMBER, 
	"IOBLLP" NUMBER, 
	"IGASTFIN" NUMBER, 
	"IVALPT" NUMBER, 
	"CESVALOR" NUMBER, 
	"CMONEDA" VARCHAR2(3 BYTE), 
	"FCUPO" DATE, 
	"ICUPOG" NUMBER, 
	"ICUPOS" NUMBER, 
	"FCUPOS" DATE, 
	"TCUPOR" VARCHAR2(2000 BYTE), 
	"TCONCEPC" VARCHAR2(2000 BYTE), 
	"TCONCEPS" VARCHAR2(2000 BYTE), 
	"TCBUREA" VARCHAR2(2000 BYTE), 
	"TCOTROS" VARCHAR2(2000 BYTE), 
	"CMONCAM" VARCHAR2(3 BYTE), 
	"NCAPFIN" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."MIG_PK" IS 'Clave �nica de MIG_FIN_INDICADORES';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."MIG_FK" IS 'Clave externa para MIG_FIN_GENERAL';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."NMOVIMI" IS 'Movimiento Indicador';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."FINDICAD" IS 'Fecha indicadores';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."IMARGEN" IS 'Margen operacional';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."ICAPTRAB" IS 'Capital trabajo';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."TRAZCOR" IS 'Raz�n corriente';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."TPRBACI" IS 'Prueba acida';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."IENDUADA" IS 'Endeudamiento total';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."NDIACAR" IS 'Rotaci�n Cartera(D�as)';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."NROTPRO" IS 'Rotaci�n proveedores';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."NROTINV" IS 'Rotaci�n de inventarios';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."NDIACICL" IS 'Ciclo de efectivo(D�as)';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."IRENTAB" IS 'Rentabilidad';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."IOBLCP" IS 'Obliga. Fin. CP/Ventas';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."IOBLLP" IS 'Obliga. Fin. LP/Ventas';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."IGASTFIN" IS 'Gastos. Fin. /UOP';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."IVALPT" IS 'Valoraci�n /PT';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."CESVALOR" IS 'Valores en � V.F. 8001075';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."CMONEDA" IS 'Moneda';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."FCUPO" IS 'Fecha cupo';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."ICUPOG" IS 'Cupo del garantizado';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."ICUPOS" IS 'Cupo sugerido';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."FCUPOS" IS 'Fecha cupo Sugerido';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."TCUPOR" IS 'Responsable cupo';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."TCONCEPC" IS 'Concepto financiero del cliente';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."TCONCEPS" IS 'Concepto del cliente sucursal';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."TCBUREA" IS 'Concepto Bureau y/o Gerencia t�cnica';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."TCOTROS" IS 'Concepto otras �reas';
   COMMENT ON COLUMN "AXIS"."MIG_FIN_INDICADORES"."CMONCAM" IS 'Moneda Cambio';
   COMMENT ON TABLE "AXIS"."MIG_FIN_INDICADORES"  IS 'Fichero con los datos de par�metros de indicadores de la ficha financiera.';
  GRANT UPDATE ON "AXIS"."MIG_FIN_INDICADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_FIN_INDICADORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_FIN_INDICADORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_FIN_INDICADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_FIN_INDICADORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_FIN_INDICADORES" TO "PROGRAMADORESCSI";
