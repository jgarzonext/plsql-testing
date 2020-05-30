BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CTGAR_DET_UAT','TABLE');
END;
/
create table MIG_CTGAR_DET_UAT
(
  mig_pk    VARCHAR2(50),
  mig_fk    VARCHAR2(50),
  cpais     NUMBER(3),
  fexpedic  DATE,
  cbanco    NUMBER(4),
  sperfide  VARCHAR2(50),
  tsucursal VARCHAR2(100),
  iinteres  NUMBER,
  fvencimi  DATE,
  fvencimi1 DATE,
  fvencimi2 DATE,
  nplazo    NUMBER,
  iasegura  NUMBER,
  iintcap   NUMBER,
  texpagare VARCHAR2(500),
  texiden   VARCHAR2(1500)
);
/