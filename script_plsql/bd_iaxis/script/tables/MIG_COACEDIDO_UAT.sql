BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_COACEDIDO_UAT','TABLE');
END;
/
create table MIG_COACEDIDO_UAT
(
  mig_pk  VARCHAR2(50),
  mig_fk  VARCHAR2(50),
  ncuacoa NUMBER(4),
  mig_fk2 VARCHAR2(50),
  pcescoa NUMBER(9,6),
  pcomcoa NUMBER(5,2),
  pcomcon NUMBER(5,2),
  pcomgas NUMBER(5,2),
  pcesion NUMBER(9,6)
);
/