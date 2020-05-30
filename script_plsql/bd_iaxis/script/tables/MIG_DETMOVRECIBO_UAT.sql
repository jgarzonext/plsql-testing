BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_DETMOVRECIBO_UAT','TABLE');
END;
/
create table MIG_DETMOVRECIBO_UAT
(
  mig_pk          VARCHAR2(50),
  mig_fk          VARCHAR2(50),
  norden          NUMBER(2),
  iimporte        NUMBER,
  fmovimi         DATE,
  fefeadm         DATE,
  cusuari         VARCHAR2(34),
  tdescrip        VARCHAR2(1000),
  fcontab         DATE,
  iimporte_moncon NUMBER,
  fcambio         DATE,
  cmreca          NUMBER,
  nreccaj         VARCHAR2(100)
);
/