BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_PREGUNSINI','TABLE');
END;
/
create table MIG_PREGUNSINI
(
  ncarga            NUMBER,
  cestmig           NUMBER,
  mig_pk            VARCHAR2(50),
  mig_fk            VARCHAR2(50),
  nsinies           VARCHAR2(14),
  cpregun           NUMBER,
  crespue           NUMBER,
  trespue           VARCHAR2(40)
);
comment on table MIG_PREGUNSINI is 'Preguntas de siniestro (MIGRACION)';
Comment on column MIG_PREGUNSINI.nsinies is 'Numero de siniestro';
comment on column MIG_PREGUNSINI.cpregun is 'Pregunta';
comment on column MIG_PREGUNSINI.crespue is 'Codigo Respuesta';
comment on column MIG_PREGUNSINI.trespue is 'Descripcion Respuesta';