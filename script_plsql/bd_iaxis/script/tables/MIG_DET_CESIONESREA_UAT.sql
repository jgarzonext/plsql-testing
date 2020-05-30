BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_DET_CESIONESREA_UAT','TABLE');
END;
/
create table MIG_DET_CESIONESREA_UAT
(
  mig_pk      VARCHAR2(50),
  mig_fk      VARCHAR2(50),
  scesrea     NUMBER,
  sdetcesrea  NUMBER,
  sseguro     NUMBER,
  nmovimi     NUMBER,
  ptramo      NUMBER,
  cgarant     NUMBER,
  icesion     NUMBER,
  icapces     NUMBER,
  pcesion     NUMBER,
  psobreprima NUMBER,
  iextrap     NUMBER,
  iextrea     NUMBER,
  ipritarrea  NUMBER,
  itarifrea   NUMBER,
  icomext     NUMBER,
  ccompani    NUMBER,
  falta       DATE,
  cusualt     VARCHAR2(32),
  fmodifi     DATE,
  cusumod     VARCHAR2(32),
  cdepura     VARCHAR2(1),
  fefecdema   DATE,
  nmovdep     NUMBER,
  sperson     NUMBER,
  mig_pkaseg  VARCHAR2(50)
);
/