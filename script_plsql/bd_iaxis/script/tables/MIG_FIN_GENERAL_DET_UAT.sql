BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_FIN_GENERAL_DET_UAT','TABLE');
END;
/
create table MIG_FIN_GENERAL_DET_UAT
(
  mig_pk   VARCHAR2(50),
  mig_fk   VARCHAR2(50),
  sfinanci NUMBER,
  nmovimi  NUMBER,
  tdescrip VARCHAR2(2000),
  cfotorut NUMBER,
  frut     DATE,
  ttitulo  VARCHAR2(2000),
  cfotoced NUMBER(1),
  fexpiced DATE,
  cpais    NUMBER(3),
  cprovin  NUMBER(5),
  cpoblac  NUMBER(5),
  tinfoad  VARCHAR2(2000),
  cciiu    NUMBER,
  ctipsoci NUMBER,
  cestsoc  NUMBER,
  tobjsoc  VARCHAR2(2000),
  texperi  VARCHAR2(3000),
  fconsti  DATE,
  tvigenc  VARCHAR2(2000),
  fccomer  DATE
)
/