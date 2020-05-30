BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_SIN_SINIESTRO_UAT','TABLE');
END;
/
create table MIG_SIN_SINIESTRO_UAT
(
  mig_pk    VARCHAR2(50),
  mig_fk    VARCHAR2(50),
  nsinies   VARCHAR2(14),
  nriesgo   NUMBER(6),
  nmovimi   NUMBER(4),
  fsinies   DATE,
  fnotifi   DATE,
  ccausin   NUMBER(4),
  cmotsin   NUMBER(4),
  cevento   VARCHAR2(20),
  cculpab   NUMBER(1),
  creclama  NUMBER(2),
  nasegur   NUMBER(6),
  cmeddec   NUMBER(2),
  ctipdec   NUMBER(2),
  ctipide   NUMBER,
  nnumide   VARCHAR2(100),
  tnom1dec  VARCHAR2(500),
  tnom2dec  VARCHAR2(500),
  tape1dec  VARCHAR2(60),
  tape2dec  VARCHAR2(60),
  tteldec   VARCHAR2(100),
  tsinies   VARCHAR2(2000),
  temaildec VARCHAR2(100),
  ncuacoa   NUMBER(2),
  nsincoa   NUMBER(2),
  csincia   VARCHAR2(50),
  cusualt   VARCHAR2(20),
  falta     DATE,
  cusumod   VARCHAR2(20),
  fmodifi   DATE,
  sucrea    VARCHAR2(20),
  fechaing  DATE,
  modulo    VARCHAR2(20)
);
/