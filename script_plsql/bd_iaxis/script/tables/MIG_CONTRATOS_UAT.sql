BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CONTRATOS_UAT','TABLE');
END;
/
create table MIG_CONTRATOS_UAT
(
  mig_pk          VARCHAR2(50) not null,
  mig_fk          VARCHAR2(50) not null,
  nversion        NUMBER not null,
  scontra         NUMBER,
  nversio         NUMBER(2) not null,
  npriori         NUMBER(2) not null,
  fconini         DATE not null,
  nconrel         NUMBER(6),
  fconfin         DATE,
  iautori         NUMBER,
  iretenc         NUMBER,
  iminces         NUMBER,
  icapaci         NUMBER,
  iprioxl         NUMBER,
  ppriosl         NUMBER,
  tcontra         VARCHAR2(50),
  tobserv         VARCHAR2(80),
  pcedido         NUMBER(5,2),
  priesgos        NUMBER(5,2),
  pdescuento      NUMBER(5,2),
  pgastos         NUMBER(5,2),
  ppartbene       NUMBER(5,2),
  creafac         NUMBER(1),
  pcesext         NUMBER(5,2),
  cgarrel         NUMBER(1),
  cfrecul         NUMBER(2),
  sconqp          NUMBER(6),
  nverqp          NUMBER(2),
  iagrega         NUMBER,
  imaxagr         NUMBER,
  pdeposito       NUMBER(17),
  cdetces         NUMBER(1),
  clavecbr        NUMBER(6),
  cercartera      NUMBER(2),
  nanyosloss      NUMBER(2),
  cbasexl         NUMBER(1),
  closscorridor   NUMBER(5),
  ccappedratio    NUMBER(5),
  scontraprot     NUMBER(6),
  cestado         NUMBER(2),
  nversioprot     NUMBER(2),
  iprimaesperadas NUMBER(17),
  ctpreest        NUMBER(1),
  pcomext         NUMBER,
  fconfinaux      DATE,
  nretpol         NUMBER,
  nretcul         NUMBER
);
/