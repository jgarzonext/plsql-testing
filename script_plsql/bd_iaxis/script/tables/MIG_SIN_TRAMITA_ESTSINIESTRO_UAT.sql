BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_SIN_TRAM_ESTSINIESTRO_UAT','TABLE');
END;
/
create table MIG_SIN_TRAM_ESTSINIESTRO_UAT
(
  mig_pk            VARCHAR2(50) NOT NULL,
  mig_fk            VARCHAR2(50) NOT NULL,
  nsinies           VARCHAR2(14) NOT NULL,
  ntramit           NUMBER(2) NOT NULL,
  nmovimi           NUMBER(2) NOT NULL,
  cusualt           VARCHAR2(20),
  falta             DATE,
  nclasepro         NUMBER(2),
  ninstproc         NUMBER(2),
  nfallocp          NUMBER(2),
  ncalmot           NUMBER(2),
  fcontingen        DATE,
  tobsfallo         VARCHAR2(4000)
);
comment on table MIG_SIN_TRAM_ESTSINIESTRO_UAT is 'Fichero con más características del detalle de Estado de un siniestro.';
Comment on column MIG_SIN_TRAM_ESTSINIESTRO_UAT.nsinies is 'Numero de siniestro';
comment on column MIG_SIN_TRAM_ESTSINIESTRO_UAT.ntramit is 'Número Tramitación Siniestro. (Valor inicial 0)';
comment on column MIG_SIN_TRAM_ESTSINIESTRO_UAT.nmovimi is 'Número de movimiento. (Inicialmente 1)';
comment on column MIG_SIN_TRAM_ESTSINIESTRO_UAT.cusualt is 'Usuario de alta';
comment on column MIG_SIN_TRAM_ESTSINIESTRO_UAT.falta is 'Fecha Alta';
comment on column MIG_SIN_TRAM_ESTSINIESTRO_UAT.nclasepro is 'Clase de proceso';
comment on column MIG_SIN_TRAM_ESTSINIESTRO_UAT.ninstproc is 'Instancia del Proceso';
comment on column MIG_SIN_TRAM_ESTSINIESTRO_UAT.nfallocp is 'Fallo';
comment on column MIG_SIN_TRAM_ESTSINIESTRO_UAT.ncalmot is 'Calificacin Motivos';
comment on column MIG_SIN_TRAM_ESTSINIESTRO_UAT.fcontingen is 'Fecha';
comment on column MIG_SIN_TRAM_ESTSINIESTRO_UAT.tobsfallo is 'Observacin de Fallo';