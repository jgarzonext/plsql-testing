create table MOVCONTASAP
(
  nrecibo      NUMBER,
  cagente      NUMBER,
  nmovimi      NUMBER,
  sseguro      NUMBER,
  ramo         NUMBER default 0,
  ctipcoa      NUMBER,
  ctiprec      NUMBER,
  codescenario NUMBER default 0,
  estado       NUMBER default 0,
  evento       VARCHAR2(50)
);
create index MOVCONTASAP_INDEX1 on MOVCONTASAP (NRECIBO, CAGENTE, NMOVIMI, SSEGURO, RAMO, CTIPCOA, CTIPREC, CODESCENARIO, ESTADO, EVENTO);