BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_SITRIESGO_UAT','TABLE');
END;
/
create table MIG_SITRIESGO_UAT
(
  mig_pk    VARCHAR2(50),
  mig_fk    VARCHAR2(50),
  nriesgo   NUMBER(6),
  cprovin   NUMBER(3),
  cpostal   VARCHAR2(30),
  cpoblac   NUMBER(5),
  csiglas   NUMBER(2),
  tnomvia   VARCHAR2(40),
  nnumvia   NUMBER(10),
  tcomple   VARCHAR2(60),
  fgisx     NUMBER(8,6),
  fgisy     NUMBER(8,6),
  fgisz     NUMBER(8,6),
  cvalida   NUMBER(2),
  cviavp    NUMBER(2),
  clitvp    NUMBER(2),
  cbisvp    NUMBER(2),
  corvp     NUMBER(2),
  nviaadco  NUMBER(2),
  clitco    NUMBER(2),
  corco     NUMBER(2),
  nplacaco  NUMBER(2),
  cor2co    NUMBER(2),
  cdet1ia   NUMBER(2),
  tnum1ia   VARCHAR2(100),
  cdet2ia   NUMBER(2),
  tnum2ia   VARCHAR2(100),
  cdet3ia   NUMBER(2),
  tnum3ia   VARCHAR2(100),
  iddomici  NUMBER(2),
  localidad VARCHAR2(300),
  fdefecto  NUMBER,
  sucrea    VARCHAR2(20),
  fechaing  DATE,
  modulo    VARCHAR2(20)
);
/