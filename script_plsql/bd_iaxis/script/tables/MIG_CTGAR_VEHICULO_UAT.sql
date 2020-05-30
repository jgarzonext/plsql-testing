BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CTGAR_VEHICULO_UAT','TABLE');
END;
/
create table MIG_CTGAR_VEHICULO_UAT
(
  mig_pk   VARCHAR2(50),
  mig_fk   VARCHAR2(50),
  cpais    NUMBER(3),
  cprovin  NUMBER,
  cpoblac  NUMBER,
  cmarca   NUMBER,
  ctipo    NUMBER,
  nmotor   VARCHAR2(100),
  nplaca   VARCHAR2(10),
  ncolor   NUMBER,
  nserie   VARCHAR2(100),
  casegura NUMBER
);
/