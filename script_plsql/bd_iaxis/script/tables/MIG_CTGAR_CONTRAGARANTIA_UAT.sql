BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CTGAR_CONTRAGARANTIA_UAT','TABLE');
END;
/
create table MIG_CTGAR_CONTRAGARANTIA_UAT
(
  mig_pk       VARCHAR2(50),
  mig_fk       VARCHAR2(50),
  scontgar     NUMBER,
  nmovimi      NUMBER,
  tdescripcion VARCHAR2(100),
  ctipo        NUMBER,
  cclase       NUMBER,
  cmoneda      VARCHAR2(3),
  ivalor       NUMBER,
  fvencimi     DATE,
  nempresa     NUMBER,
  nradica      VARCHAR2(100),
  fcrea        DATE,
  documento    VARCHAR2(100),
  ctenedor     NUMBER,
  tobsten      VARCHAR2(100),
  cestado      NUMBER,
  corigen      NUMBER,
  tcausa       VARCHAR2(1000),
  tauxilia     VARCHAR2(2000),
  cimpreso     INTEGER,
  cusualt      VARCHAR2(20),
  falta        DATE
);
/