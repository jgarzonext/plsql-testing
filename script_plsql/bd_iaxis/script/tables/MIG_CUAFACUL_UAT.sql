BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CUAFACUL_UAT','TABLE');
END;
/
create table MIG_CUAFACUL_UAT
(
  mig_pk   VARCHAR2(50),
  mig_fk   VARCHAR2(50),
  mig_fk2  VARCHAR2(50),
  sfacult  NUMBER(6),
  cestado  NUMBER(2),
  finicuf  DATE,
  cfrebor  NUMBER(2),
  scontra  NUMBER(6),
  nversio  NUMBER(2),
  sseguro  NUMBER,
  cgarant  NUMBER(4),
  ccalif1  VARCHAR2(1),
  ccalif2  NUMBER(2),
  spleno   NUMBER(6),
  nmovimi  NUMBER(4),
  scumulo  NUMBER(6),
  nriesgo  NUMBER(6),
  ffincuf  DATE,
  plocal   NUMBER(5,2),
  fultbor  DATE,
  pfacced  NUMBER(15,6),
  ifacced  NUMBER,
  ncesion  NUMBER(6),
  ctipfac  NUMBER(1),
  ptasaxl  NUMBER(7,5),
  cnotaces VARCHAR2(100)
);
/