BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_MOVRECIBO_UAT','TABLE');
END;
/
create table MIG_MOVRECIBO_UAT
(
  mig_pk    VARCHAR2(50),
  mig_fk    VARCHAR2(50),
  cestrec   NUMBER(1),
  fmovini   DATE,
  fmovfin   DATE,
  fefeadm   DATE,
  fmovdia   DATE,
  cmotmov   NUMBER(3),
  sucrea    VARCHAR2(20),
  fechaing  DATE,
  modulo    VARCHAR2(20),
  cmreca    NUMBER(3),
  nreccaj   VARCHAR2(100),
  cindicaf  VARCHAR2(10),
  csucursal VARCHAR2(1000),
  ndocsap   VARCHAR2(150)
);
/