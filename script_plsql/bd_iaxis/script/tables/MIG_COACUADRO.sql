BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_COACUADRO','TABLE');
END;
/
create table MIG_COACUADRO
(
  ncarga  NUMBER not null,
  cestmig NUMBER not null,
  mig_pk  VARCHAR2(50) not null,
  mig_fk  VARCHAR2(50) not null,
  ncuacoa NUMBER(2) not null,
  finicoa DATE not null,
  ffincoa DATE,
  ploccoa NUMBER(9,6),
  fcuacoa DATE not null,
  ccompan NUMBER(3),
  npoliza VARCHAR2(50),
  sseguro NUMBER
);
/
COMMENT ON COLUMN "MIG_COACUADRO"."NCARGA" IS 'Número de carga';
COMMENT ON COLUMN "MIG_COACUADRO"."CESTMIG" IS 'Estado del registro valor inicial 1';
COMMENT ON COLUMN "MIG_COACUADRO"."MIG_PK" IS 'Clave única de MIG_COACUADRO';
COMMENT ON COLUMN "MIG_COACUADRO"."MIG_FK" IS 'Clave externa para la póliza (MIG_SEGUROS)';
COMMENT ON COLUMN "MIG_COACUADRO"."NCUACOA" IS 'Identificador del cuadro';
COMMENT ON COLUMN "MIG_COACUADRO"."FINICOA" IS 'Inicio vigencia cuadro coaseguro';
COMMENT ON COLUMN "MIG_COACUADRO"."FFINCOA" IS 'Final vigencia cuadro coaseguro';
COMMENT ON COLUMN "MIG_COACUADRO"."PLOCCOA" IS 'Retenido en cedido o aceptado en aceptado';
COMMENT ON COLUMN "MIG_COACUADRO"."FCUACOA" IS 'Alta del cuadro (fecha sistema)';
COMMENT ON COLUMN "MIG_COACUADRO"."CCOMPAN" IS 'Compañía Aceptado';
COMMENT ON COLUMN "MIG_COACUADRO"."NPOLIZA" IS 'Póliza Origen del aceptado';
COMMENT ON COLUMN "MIG_COACUADRO"."SSEGURO" IS 'Número consecutivo de seguro asignado automáticamente. (0 en este caso)';
COMMENT ON TABLE "MIG_COACUADRO"  IS 'Tabla Intermedia migración de COACUADRO';