BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CTAPB_UAT','TABLE');
END;
/
create table MIG_CTAPB_UAT
(
  mig_pk    VARCHAR2(50),
  mig_fk    VARCHAR2(50),
  mig_fk2   VARCHAR2(50),
  fcierre   DATE,
  cconceppb NUMBER(2),
  tipo      NUMBER(1),
  iimport   NUMBER,
  cempres   NUMBER,
  ctramo    NUMBER(2),
  mig_ctapb NUMBER(6),
  sproduc   NUMBER(6)
);
/