BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_COMRECIBO_UAT','TABLE');
END;
/
create table MIG_COMRECIBO_UAT
(
  mig_pk            VARCHAR2(50),
  mig_fk            VARCHAR2(50),
  nrecibo           NUMBER,
  nnumcom           NUMBER(6),
  cagente           NUMBER,
  cestrec           NUMBER(1),
  fmovdia           DATE,
  fcontab           DATE,
  icombru           NUMBER,
  icomret           NUMBER,
  icomdev           NUMBER,
  iretdev           NUMBER,
  nmovimi           NUMBER(4),
  icombru_moncia    NUMBER,
  icomret_moncia    NUMBER,
  icomdev_moncia    NUMBER,
  iretdev_moncia    NUMBER,
  fcambio           DATE,
  cgarant           NUMBER(4),
  icomcedida        NUMBER,
  icomcedida_moncia NUMBER,
  ccompan           NUMBER(3),
  ivacomisi         NUMBER,
  mig_fk2           VARCHAR2(50),
  creccia			VARCHAR2(50)
);
/