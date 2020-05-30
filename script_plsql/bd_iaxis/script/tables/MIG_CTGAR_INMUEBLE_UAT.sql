BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CTGAR_INMUEBLE_UAT','TABLE');
END;
/
create table MIG_CTGAR_INMUEBLE_UAT
(
  mig_pk       VARCHAR2(50),
  mig_fk       VARCHAR2(50),
  nnumescr     NUMBER,
  fescritura   DATE,
  tdescripcion VARCHAR2(1000),
  tdireccion   VARCHAR2(1000),
  cpais        NUMBER(3),
  cprovin      NUMBER,
  cpoblac      NUMBER,
  fcertlib     DATE
);
/