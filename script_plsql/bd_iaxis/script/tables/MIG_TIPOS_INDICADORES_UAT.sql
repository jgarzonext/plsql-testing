BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_TIPOS_INDICADORES_UAT','TABLE');
END;
/
create table MIG_TIPOS_INDICADORES_UAT
(
  mig_pk  VARCHAR2(50),
  tindica VARCHAR2(200),
  carea   NUMBER(38),
  ctipreg NUMBER(38),
  cimpret NUMBER(38),
  ccindid VARCHAR2(10),
  cindsap VARCHAR2(4),
  porcent NUMBER(12,6),
  cclaing VARCHAR2(1),
  ibasmin NUMBER,
  cprovin NUMBER,
  cpoblac NUMBER,
  fvigor  DATE
);
/