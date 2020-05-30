BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_SIN_TRAMITA_ESTSINIESTRO','TABLE');
END;
/
create table MIG_SIN_TRAMITA_ESTSINIESTRO
(
  ncarga            NUMBER NOT NULL,
  cestmig           NUMBER NOT NULL,
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
comment on table MIG_SIN_TRAMITA_ESTSINIESTRO is 'Fichero con más características del detalle de Estado de un siniestro.';
Comment on column MIG_SIN_TRAMITA_ESTSINIESTRO.nsinies is 'Numero de siniestro';
comment on column MIG_SIN_TRAMITA_ESTSINIESTRO.ntramit is 'Número Tramitación Siniestro. (Valor inicial 0)';
comment on column MIG_SIN_TRAMITA_ESTSINIESTRO.nmovimi is 'Número de movimiento. (Inicialmente 1)';
comment on column MIG_SIN_TRAMITA_ESTSINIESTRO.cusualt is 'Usuario de alta';
comment on column MIG_SIN_TRAMITA_ESTSINIESTRO.falta is 'Fecha Alta';
comment on column MIG_SIN_TRAMITA_ESTSINIESTRO.nclasepro is 'Clase de proceso';
comment on column MIG_SIN_TRAMITA_ESTSINIESTRO.ninstproc is 'Instancia del Proceso';
comment on column MIG_SIN_TRAMITA_ESTSINIESTRO.nfallocp is 'Fallo';
comment on column MIG_SIN_TRAMITA_ESTSINIESTRO.ncalmot is 'Calificacin Motivos';
comment on column MIG_SIN_TRAMITA_ESTSINIESTRO.fcontingen is 'Fecha';
comment on column MIG_SIN_TRAMITA_ESTSINIESTRO.tobsfallo is 'Observacin de Fallo';