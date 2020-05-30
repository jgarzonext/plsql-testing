BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_COMPANIAS_UAT','TABLE');
END;
/
create table MIG_COMPANIAS_UAT
(
  mig_pk   VARCHAR2(50),
  mig_fk   VARCHAR2(50),
  ccompani NUMBER,
  tcompani VARCHAR2(60),
  ctipcom  NUMBER(2),
  ctiprea  NUMBER(2)
);
/