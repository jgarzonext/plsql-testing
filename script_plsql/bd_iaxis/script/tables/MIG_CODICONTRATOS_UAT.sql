BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CODICONTRATOS_UAT','TABLE');
END;
/
create table MIG_CODICONTRATOS_UAT
(
  mig_pk       VARCHAR2(50),
  mig_fk       VARCHAR2(50),
  nversion     NUMBER,
  scontra      NUMBER,
  spleno       NUMBER(6),
  cempres      NUMBER(2),
  ctiprea      NUMBER(2),
  finictr      DATE,
  ffinctr      DATE,
  nconrel      NUMBER(6),
  sconagr      NUMBER(6),
  cvidaga      NUMBER(1),
  cvidair      NUMBER(1),
  ctipcum      NUMBER(1),
  cvalid       NUMBER(1),
  cretira      NUMBER(1),
  cmoneda      VARCHAR2(3),
  tdescripcion VARCHAR2(100),
  cdevento     NUMBER(1)
);
/