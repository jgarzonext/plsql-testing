BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CTACTES_UAT','TABLE');
END;
/
create table MIG_CTACTES_UAT
(
  mig_pk   VARCHAR2(50),
  cagente  NUMBER,
  nnumlin  NUMBER(6),
  cdebhab  NUMBER,
  cconcta  NUMBER(2),
  cestado  NUMBER(1),
  ndocume  VARCHAR2(10),
  ffecmov  DATE,
  iimport  NUMBER,
  tdescrip VARCHAR2(100),
  cmanual  NUMBER(1),
  mig_fk   VARCHAR2(50),
  mig_fk2  VARCHAR2(50),
  mig_fk3  VARCHAR2(50),
  fvalor   DATE,
  cfiscal  NUMBER(1),
  sproduc  NUMBER(8),
  ccompani NUMBER(2),
  ctipoliq NUMBER
);
/