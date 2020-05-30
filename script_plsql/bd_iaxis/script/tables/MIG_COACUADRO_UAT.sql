BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_COACUADRO_UAT','TABLE');
END;
/
create table MIG_COACUADRO_UAT
(
  mig_pk  VARCHAR2(50),
  mig_fk  VARCHAR2(50),
  ncuacoa NUMBER(4),
  finicoa DATE,
  ffincoa DATE,
  ploccoa NUMBER(9,6),
  fcuacoa DATE,
  mig_fk2 VARCHAR2(50),
  npoliza VARCHAR2(50)
);
/