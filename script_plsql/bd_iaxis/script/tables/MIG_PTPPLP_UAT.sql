BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_PTPPLP_UAT','TABLE');
END;
/
create table MIG_PTPPLP_UAT
(
  producto  NUMBER,
  póliza    VARCHAR2(50),
  sinestro  VARCHAR2(50),
  fcalculo  DATE,
  ipplpsd   NUMBER(17,2),
  ipplprc   NUMBER(17,2),
  ivalbruto NUMBER(13,2),
  ivalpago  NUMBER(13,2),
  ippl      NUMBER(17,2),
  ippp      NUMBER(17,2),
  mig_pk    VARCHAR2(50)
);
/