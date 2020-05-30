BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_DETMOVRECIBO_PARCIAL_UAT','TABLE');
END;
/
create table MIG_DETMOVRECIBO_PARCIAL_UAT
(
  mig_pk         VARCHAR2(50),
  mig_fk         VARCHAR2(50),
  cconcep        NUMBER(2),
  cgarant        NUMBER(4),
  nriesgo        NUMBER(6),
  fmovimi        DATE,
  iconcep        NUMBER(13,2),
  iconcep_monpol NUMBER(13,2),
  nmovima        NUMBER,
  fcambio        DATE
);
/