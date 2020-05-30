BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CESIONESREA_UAT','TABLE');
END;
/
create table MIG_CESIONESREA_UAT
(
  mig_pk      VARCHAR2(50),
  mig_fk      VARCHAR2(50),
  scesrea     NUMBER(8),
  ncesion     NUMBER(6),
  icesion     NUMBER,
  icapces     NUMBER,
  mig_fkseg   VARCHAR2(50),
  nversio     NUMBER(2),
  scontra     NUMBER(6),
  ctramo      NUMBER(5),
  sfacult     NUMBER(6),
  nriesgo     NUMBER(6),
  cgarant     NUMBER(4),
  mif_fksini  NUMBER,
  fefecto     DATE,
  fvencim     DATE,
  fcontab     DATE,
  pcesion     NUMBER(8),
  cgenera     NUMBER(2),
  fgenera     DATE,
  fregula     DATE,
  fanulac     DATE,
  nmovimi     NUMBER(4),
  ipritarrea  NUMBER,
  idtosel     NUMBER,
  psobreprima NUMBER(8),
  cdetces     NUMBER(1),
  ipleno      NUMBER,
  icapaci     NUMBER,
  nmovigen    NUMBER(6),
  ctrampa     NUMBER(2),
  ctipomov    VARCHAR2(1),
  ccutoff     VARCHAR2(1)
);
/