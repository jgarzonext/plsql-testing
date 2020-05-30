BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_BF_BONFRANSEG_UAT','TABLE');
END;
/
create table MIG_BF_BONFRANSEG_UAT
(
  mig_pk        VARCHAR2(50),
  mig_fk        VARCHAR2(50),
  mig_fk2       VARCHAR2(50),
  sseguro       NUMBER,
  nmovimi       NUMBER,
  nriesgo       NUMBER,
  cgaran        NUMBER(4),
  cgrup         NUMBER(6),
  csubgrup      NUMBER(6),
  cnivel        NUMBER(6),
  cversion      NUMBER(6),
  finiefe       DATE,
  ctipgrup      VARCHAR2(1),
  cvalor1       NUMBER(2),
  impvalor1     NUMBER,
  cvalor2       NUMBER(2),
  impvalor2     NUMBER,
  cimpmin       NUMBER(2),
  impmin        NUMBER,
  cimpmax       NUMBER(2),
  impmax        NUMBER,
  ffinefe       DATE,
  cusuaut       VARCHAR2(20),
  falta         DATE,
  cusumod       VARCHAR2(20),
  fmodifi       DATE,
  cniveldefecto NUMBER(6)
);
/