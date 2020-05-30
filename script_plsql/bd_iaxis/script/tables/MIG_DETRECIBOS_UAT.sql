BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_DETRECIBOS_UAT','TABLE');
END;
/
create table MIG_DETRECIBOS_UAT
(
  mig_pk         VARCHAR2(50),
  mig_fk         VARCHAR2(50),
  cconcep        NUMBER(2),
  cgarant        NUMBER(4),
  nriesgo        NUMBER(6),
  iconcep        NUMBER(13,2),
  iconcep_monpol NUMBER(13,2),
  fcambio        DATE,
  nmovima        NUMBER,
  sucrea         VARCHAR2(20),
  fechaing       DATE,
  modulo         VARCHAR2(20)
);
/