BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_FIN_INDICADORES_UAT','TABLE');
END;
/
create table MIG_FIN_INDICADORES_UAT
(
  mig_pk     VARCHAR2(50),
  mig_fk     VARCHAR2(50),
  nmovimi    NUMBER,
  findicad   DATE,
  imargen    NUMBER,
  icaptrab   NUMBER,
  trazcor    VARCHAR2(2000),
  tprbaci    VARCHAR2(2000),
  ienduada   NUMBER,
  ndiacar    NUMBER,
  nrotpro    NUMBER,
  nrotinv    NUMBER,
  ndiacicl   NUMBER,
  irentab    NUMBER,
  ioblcp     NUMBER,
  iobllp     NUMBER,
  igastfin   NUMBER,
  ivalpt     NUMBER,
  cesvalor   NUMBER,
  cmoneda    NUMBER,
  fcupo      DATE,
  icupog     NUMBER,
  icupos     NUMBER,
  fcupos     DATE,
  tcupor     VARCHAR2(2000),
  tconcepc   VARCHAR2(2000),
  tconceps   VARCHAR2(2000),
  tcburea    VARCHAR2(2000),
  tcotros    VARCHAR2(2000),
  cmoncam    NUMBER,
  sucrea     VARCHAR2(20),
  fechaing   DATE,
  modulo     VARCHAR2(20),
  ncapfin    NUMBER,
  ncontpol   NUMBER(5),
  naniosvinc NUMBER(3)
)
/