BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CTGAR_CODEUDOR_UAT','TABLE');
END;
/
create table MIG_CTGAR_CODEUDOR_UAT
(
  mig_pk  VARCHAR2(50),
  mig_fk  VARCHAR2(50),
  mif_fk2 VARCHAR2(50)
);
/