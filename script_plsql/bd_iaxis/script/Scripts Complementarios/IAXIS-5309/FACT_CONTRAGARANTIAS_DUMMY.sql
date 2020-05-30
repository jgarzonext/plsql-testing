-- Create table
create table FACT_CONTRAGARANTIAS_DUMMY
(
  fact_contra_id   NUMBER not null,
  fk_persona       VARCHAR2(12),
  tipogarantia     VARCHAR2(4000),
  clasegarantia    VARCHAR2(4000),
  fechaemision     DATE,
  fechacerrada     DATE,
  fecharetirada    DATE,
  fecharadicada    DATE,
  fechavencimiento DATE,
  fk_sucur         NUMBER,
  fk_codf1         NUMBER,
  codf2            NUMBER,
  codf3            NUMBER,
  codf4            NUMBER,
  codf5            NUMBER,
  descripcion      VARCHAR2(100),
  estadogarantia   VARCHAR2(4000),
  fk_monedagar     NUMBER,
  numdocumento     NUMBER,
  numdocaux        VARCHAR2(100),
  numradicacion    VARCHAR2(100),
  poliza           NUMBER,
  valorgarantia    NUMBER,
  valorcerrado     NUMBER,
  tenedor          VARCHAR2(4000),
  fk_sucrea        NUMBER,
  sucmod           VARCHAR2(20),
  fk_fecrea        NUMBER,
  fecmod           DATE,
  fecha_inicio     DATE,
  fecha_fin        DATE
);
/
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACT_CONTRAGARANTIAS_DUMMY
add constraint FACT_CONTRA_ID_PK primary key (FACT_CONTRA_ID);
/

-- Create sequence 
create sequence SEQ_FACT_CONTRA
minvalue 1
maxvalue 1000000000000000000000
start with 1
increment by 1
cache 20;
/
