BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_RECIBOS_UAT','TABLE');
END;
/
create table MIG_RECIBOS_UAT
(
  mig_pk   VARCHAR2(50),
  mig_fk   VARCHAR2(50),
  nmovimi  NUMBER(4),
  femisio  DATE,
  fefecto  DATE,
  fvencim  DATE,
  ctiprec  NUMBER(4),
  nriesgo  NUMBER(6),
  nrecibo  NUMBER(9),
  cestrec  NUMBER(1),
  freccob  DATE,
  cestimp  NUMBER(2),
  esccero  NUMBER(1),
  creccia  VARCHAR2(50),
  nrecaux  VARCHAR2(50),
  sucrea   VARCHAR2(20),
  fechaing DATE,
  modulo   VARCHAR2(20)
);
/