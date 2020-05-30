BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_PREGUNSINI_UAT','TABLE');
END;
/
create table MIG_PREGUNSINI_UAT
(
  mig_pk            VARCHAR2(50),
  mig_fk            VARCHAR2(50),
  nsinies           VARCHAR2(14),
  cpregun           NUMBER,
  crespue           NUMBER,
  trespue           VARCHAR2(40)
);
comment on table MIG_PREGUNSINI_UAT is 'Preguntas de siniestro (MIGRACION)';
Comment on column MIG_PREGUNSINI_UAT.nsinies is 'Numero de siniestro';
comment on column MIG_PREGUNSINI_UAT.cpregun is 'Pregunta';
comment on column MIG_PREGUNSINI_UAT.crespue is 'Codigo Respuesta';
comment on column MIG_PREGUNSINI_UAT.trespue is 'Descripcion Respuesta';