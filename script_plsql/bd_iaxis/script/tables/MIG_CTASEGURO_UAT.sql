BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CTASEGURO_UAT','TABLE');
END;
/
create table MIG_CTASEGURO_UAT
(
  mig_pk   VARCHAR2(50),
  mig_fk   VARCHAR2(50),
  fcontab  DATE,
  nnumlin  NUMBER(6),
  ffecmov  DATE,
  fvalmov  DATE,
  cmovimi  NUMBER(2),
  imovimi  NUMBER,
  ccalint  NUMBER(15),
  imovim2  NUMBER,
  nrecibo  NUMBER(9),
  nsinies  VARCHAR2(14),
  cmovanu  NUMBER(1),
  smovrec  NUMBER(8),
  cesta    NUMBER(3),
  nunidad  NUMBER(15,6),
  cestado  VARCHAR2(1),
  fasign   DATE,
  nparpla  NUMBER(15,6),
  cestpar  VARCHAR2(1),
  iexceso  NUMBER,
  spermin  NUMBER(6),
  sidepag  NUMBER(8),
  ctipapor VARCHAR2(2),
  srecren  NUMBER(8),
  sucrea   VARCHAR2(20),
  fechaing DATE,
  modulo   VARCHAR2(20)
);
/