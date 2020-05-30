BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_LIQUIDACAB_UAT','TABLE');
END;
/
create table MIG_LIQUIDACAB_UAT
(
  mig_pk   VARCHAR2(50),
  cagente  NUMBER,
  nliqmen  NUMBER(4),
  fliquid  DATE,
  fmovimi  DATE,
  ctipoliq NUMBER(2),
  cestado  NUMBER(3),
  cusuari  VARCHAR2(20),
  fcobro   DATE
);
/