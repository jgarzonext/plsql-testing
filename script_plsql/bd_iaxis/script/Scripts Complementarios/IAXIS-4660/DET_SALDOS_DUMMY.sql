-- Create table
create table DET_SALDOS_DUMMY
(
  saldo_id     NUMBER not null,
  sucur        NUMBER,
  nitc         VARCHAR2(20),
  nitage       VARCHAR2(20),
  poliza       VARCHAR2(20),
  certif       VARCHAR2(20),
  fecini       DATE,
  fecter       DATE,
  fecexp       DATE,
  prima        NUMBER,
  iva          NUMBER,
  gastos       NUMBER,
  nomage       VARCHAR2(200),
  direccion    VARCHAR2(300),
  telefono     VARCHAR2(15),
  ciudad       VARCHAR2(50),
  fechacorte   DATE,
  madurez      NUMBER,
  ramo         NUMBER,
  tip_id_aseg  NUMBER,
  codram       VARCHAR2(6),
  calificacion VARCHAR2(1),
  probabilidad NUMBER,
  edad         NUMBER,
  codigo       VARCHAR2(20),
  tipcer       VARCHAR2(1),
  consorcio    VARCHAR2(2),
  moneda       NUMBER,
  trm          NUMBER,
  prima_me     NUMBER,
  por_com      NUMBER,
  part_int     NUMBER,
  vlr_comi     NUMBER,
  cod_int      VARCHAR2(20),
  dir_age      VARCHAR2(300),
  tel_age      VARCHAR2(15),
  ciudad_age   VARCHAR2(50),
  clave        VARCHAR2(20),
  nomsuc       VARCHAR2(150),
  procesado    VARCHAR2(2),
  codpla       VARCHAR2(6),
  directo      NUMBER,
  tipo_cart    NUMBER,
  serviefe     VARCHAR2(2),
  constancia   VARCHAR2(2),
  gestion      VARCHAR2(2),
  preimp       VARCHAR2(20),
  nrocta       VARCHAR2(20)
);
/

alter table DET_SALDOS_DUMMY
add constraint SALDO_ID_PK primary key (SALDO_ID);
/
  
-- Create sequence 
create sequence SALDO_ID
minvalue 1
maxvalue 1000000000000000000
start with 1
increment by 1
cache 20; 
/