BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_PER_INDICADORES_UAT','TABLE');
END;
/
CREATE TABLE MIG_PER_INDICADORES_UAT(
MIG_PK       VARCHAR2(50),
MIG_FK       VARCHAR2(50),
CODVINCULO   NUMBER(1),
CTIPIND      NUMBER(4)
);
/