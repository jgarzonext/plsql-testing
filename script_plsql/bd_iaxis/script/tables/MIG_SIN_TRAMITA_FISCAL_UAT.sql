BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_SIN_TRAMITA_FISCAL_UAT','TABLE');
END;
/
create table MIG_SIN_TRAMITA_FISCAL_UAT
(
  mig_pk   VARCHAR2(50),
  mig_fk   VARCHAR2(50),
  mig_fk2  VARCHAR2(50),
  norden   NUMBER,
  fapertu  DATE,
  fimputa  DATE,
  fnotifi  DATE,
  faudien  DATE,
  haudien  DATE,
  caudien  NUMBER,
  sprofes  NUMBER,
  coterri  NUMBER,
  ccontra  NUMBER,
  cuespec  NUMBER,
  tcontra  VARCHAR2(2000),
  ctiptra  NUMBER(8),
  testado  VARCHAR2(2000),
  cmedio   NUMBER,
  fdescar  DATE,
  ffallo   DATE,
  cfallo   VARCHAR2(2000),
  tfallo   VARCHAR2(2000),
  crecurso NUMBER,
  fmodifi  DATE,
  cusualt  VARCHAR2(20)
);
/