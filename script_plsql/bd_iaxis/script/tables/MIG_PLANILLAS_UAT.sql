BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_PLANILLAS_UAT','TABLE');
END;
/
create table MIG_PLANILLAS_UAT
(
  cmap           VARCHAR2(50),
  cramo          NUMBER(8),
  sproduc        NUMBER(6),
  fplanilla      DATE,
  ccompani       NUMBER,
  cobservaciones VARCHAR2(500),
  consecutivo    INTEGER,
  cmoneda        VARCHAR2(3)
);
/