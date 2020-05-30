-- Create table
create table FACT_CONTRAGARANTIAS_BDG_DUMMY
(
  fcg_id                NUMBER not null,
  fk_persona            VARCHAR2(50),
  tipogarantia          VARCHAR2(250),
  clasegarantia         VARCHAR2(250),
  fechaemision          DATE,
  fechacerrada          DATE,
  fecharetirada         DATE,
  fecharadicada         DATE,
  fechavencimiento      DATE,
  fk_sucur              NUMBER,
  fk_codf1              VARCHAR2(20),
  codf2                 VARCHAR2(20),
  codf3                 VARCHAR2(20),
  codf4                 VARCHAR2(20),
  codf5                 VARCHAR2(20),
  estadogarantia        VARCHAR2(250),
  fk_monedagar          NUMBER,
  numdocumento          VARCHAR2(20),
  numdocaux             VARCHAR2(20),
  numradicacion         VARCHAR2(20),
  fk_pol                NUMBER,
  fk_tomador            VARCHAR2(20),
  fk_asegurado          VARCHAR2(20),
  fk_beneficiario       VARCHAR2(20),
  fk_dim_contragarantia NUMBER,
  valorgarantia         NUMBER,
  valorcerrado          NUMBER,
  tenedor_desc          VARCHAR2(250),
  tenedor_cod           NUMBER,
  fk_sucrea             NUMBER,
  sucmod                VARCHAR2(20),
  fk_fecrea             NUMBER,
  fecmod                DATE,
  fecha_inicio          DATE,
  fecha_fin             DATE,
  fecha_registro        DATE,
  estado                VARCHAR2(50),
  start_estado          DATE,
  end_estado            DATE,
  fk_agente             NUMBER,
  fecha_control         DATE,
  estadogarantia_cod    NUMBER,
  tipogarantia_cod      NUMBER,
  clasegarantia_cod     NUMBER
);
/

-- Create/Recreate primary, unique and foreign key constraints 
alter table FACT_CONTRAGARANTIAS_BDG_DUMMY
add constraint FCG_ID_PK primary key (FCG_ID);
/

-- Create sequence 
create sequence FCG_ID
minvalue 1
maxvalue 1000000000000000000000
start with 1
increment by 1
cache 20;
/
    