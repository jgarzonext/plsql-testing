BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_BUREAU_UAT','TABLE');
END;
/
create table MIG_BUREAU_UAT
(
  mig_pk   VARCHAR2(50),
  sbureau  NUMBER,
  nmovimi  NUMBER,
  canulada NUMBER,
  ctipo    NUMBER,
  nsuplem  NUMBER,
  cusualt  VARCHAR2(20),
  falta    DATE,
  cusumod  VARCHAR2(20),
  fmodif   DATE
);
/