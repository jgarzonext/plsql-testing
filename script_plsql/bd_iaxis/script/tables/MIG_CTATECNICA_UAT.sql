BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CTATECNICA_UAT','TABLE');
END;
/
create table MIG_CTATECNICA_UAT
(
  mig_pk         VARCHAR2(50),
  mig_fk         VARCHAR2(50),
  mig_fk2        VARCHAR2(50),
  nversion       NUMBER,
  scontra        NUMBER,
  tramo          NUMBER,
  nnumlin        NUMBER,
  fmovimi        DATE,
  fefecto        DATE,
  cconcep        NUMBER(2),
  cdedhab        NUMBER(1),
  iimport        NUMBER(13,2),
  cestado        NUMBER(2),
  iimport_moncon NUMBER(13,2),
  fcambio        DATE,
  ctipmov        NUMBER(1),
  sproduc        NUMBER(6),
  npoliza        VARCHAR2(50),
  nsiniestro     VARCHAR2(50),
  tdescri        VARCHAR2(2000),
  tdocume        VARCHAR2(2000),
  fliquid        DATE,
  cevento        VARCHAR2(20),
  fcontab        DATE,
  sidepag        NUMBER(8),
  cusucre        VARCHAR2(20),
  fcreac         DATE,
  cramo          NUMBER(8),
  ccorred        NUMBER(4)
);
/