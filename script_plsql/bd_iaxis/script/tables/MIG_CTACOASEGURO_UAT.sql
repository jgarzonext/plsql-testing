BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CTACOASEGURO_UAT','TABLE');
END;
/
create table MIG_CTACOASEGURO_UAT
(
  mig_pk         VARCHAR2(50),
  smovcoa        NUMBER(8),
  mig_fk2        VARCHAR2(50),
  cimport        NUMBER(2),
  ctipcoa        NUMBER(2),
  cmovimi        NUMBER(2),
  imovimi        NUMBER,
  fmovimi        DATE,
  fcontab        DATE,
  cdebhab        NUMBER(1),
  fliqcia        DATE,
  pcescoa        NUMBER(5,2),
  sidepag        NUMBER(8),
  nrecibo        NUMBER,
  smovrec        NUMBER,
  cempres        NUMBER(2),
  sseguro        NUMBER,
  sproduc        NUMBER(6),
  cestado        NUMBER(2),
  ctipmov        NUMBER(1),
  tdescri        VARCHAR2(2000),
  tdocume        VARCHAR2(2000),
  imovimi_moncon NUMBER,
  fcambio        DATE,
  nsinies        VARCHAR2(14),
  ccompapr       NUMBER(3),
  cmoneda        NUMBER(3),
  spagcoa        NUMBER(10),
  ctipgas        NUMBER(3),
  fcierre        DATE,
  ntramit        NUMBER(3),
  nmovres        NUMBER(4),
  cgarant        NUMBER(4),
  mig_fk3        VARCHAR2(50),
  mig_fk4        VARCHAR2(50),
  mig_fk5        VARCHAR2(50)
);
/