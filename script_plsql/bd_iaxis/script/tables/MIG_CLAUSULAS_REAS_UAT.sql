BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CLAUSULAS_REAS_UAT','TABLE');
END;
/
create table MIG_CLAUSULAS_REAS_UAT
(
  mig_pk       VARCHAR2(50),
  ccodigo      NUMBER(5),
  tdescripcion VARCHAR2(200),
  ctramo       NUMBER(3),
  ilim_inf     NUMBER(14),
  ilim_sup     NUMBER(14),
  pctpart      NUMBER(5),
  pctmin       NUMBER(5),
  pctmax       NUMBER(5)
);
/