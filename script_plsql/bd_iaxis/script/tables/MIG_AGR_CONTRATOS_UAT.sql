BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_AGR_CONTRATOS_UAT','TABLE');
END;
/
create table MIG_AGR_CONTRATOS_UAT
(
  mig_pk  VARCHAR2(50),
  mig_fk  VARCHAR2(50),
  scontra NUMBER(6),
  cramo   NUMBER(8),
  cmodali NUMBER(2),
  ccolect NUMBER(2),
  ctipseg NUMBER(2),
  cactivi NUMBER(4),
  cgarant NUMBER(4),
  nversio NUMBER(2),
  ilimsub NUMBER
);
/