BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_AGD_OBSERVACIONES_UAT','TABLE');
END;
/
create table MIG_AGD_OBSERVACIONES_UAT
(
  mig_pk  VARCHAR2(50),
  mig_fk  VARCHAR2(50),
  ctipobs NUMBER(1),
  ttitobs VARCHAR2(100),
  tobs    VARCHAR2(2000),
  ctipagd NUMBER(2),
  ntramit NUMBER(3),
  publico NUMBER(1),
  cconobs NUMBER(2),
  falta   DATE
)
/