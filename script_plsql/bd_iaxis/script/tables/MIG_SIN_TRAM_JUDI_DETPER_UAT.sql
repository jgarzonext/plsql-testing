BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_SIN_TRAM_JUDI_DETPER_UAT','TABLE');
END;
/
create table MIG_SIN_TRAM_JUDI_DETPER_UAT
(
  mig_pk   VARCHAR2(50),
  mig_fk   VARCHAR2(50),
  mig_fk2  VARCHAR2(50),
  norden   NUMBER(3),
  nrol     NUMBER(3),
  npersona NUMBER(3),
  ntipper  NUMBER(8),
  nnumide  VARCHAR2(50),
  tnombre  VARCHAR2(200),
  iimporte NUMBER(19,2),
  fbaja    DATE,
  fmodifi  DATE,
  cusualt  VARCHAR2(20)
);
/