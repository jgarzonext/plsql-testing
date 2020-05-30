BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_PSUCONTROLSEG','TABLE');
END;
/
create table MIG_PSUCONTROLSEG
(
  ncarga            NUMBER,
  cestmig           NUMBER,
  MIG_PK            VARCHAR2(50),
  MIG_FK            VARCHAR2(50),
  SSEGURO           NUMBER,
  NMOVIMI           NUMBER(4),
  FMOVIMI           DATE,
  CCONTROL          NUMBER(6),
  NRIESGO           NUMBER(4),
  NOCURRE           NUMBER(4),
  CGARANT           NUMBER(6),
  CNIVELR           NUMBER(6),
  CMOTRET           NUMBER(4),
  CUSURET           VARCHAR2(20),
  FFECRET           DATE,
  CUSUAUT           VARCHAR2(20),
  FFECAUT           DATE,
  OBSERV            VARCHAR2(4000),
  CDETMOTREC        NUMBER(6),
  POSTPPER          VARCHAR2(100),
  PERPOST           NUMBER
);
/