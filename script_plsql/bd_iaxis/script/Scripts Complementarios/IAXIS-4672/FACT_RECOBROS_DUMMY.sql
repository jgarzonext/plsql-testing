-- Create table
create table FACT_RECOBROS_DUMMY
(
  seq_fact_recobros    NUMBER not null,
  sucur                NUMBER,
  certif               VARCHAR2(1000),
  poliza               NUMBER,
  siniestro            VARCHAR2(14),
  fecdoc               DATE,
  interes              NUMBER,
  capital              NUMBER,
  vaseg                NUMBER,
  codram               NUMBER(8),
  rec_tipo_cruce       CHAR(2),
  rec_numero_cruce     NUMBER(8),
  rec_tipo_transaccion VARCHAR2(4000),
  rec_tipo_valor       CHAR(1),
  rec_desc_transaccion VARCHAR2(4000),
  rec_tipcoa           NUMBER
);
/

-- Create/Recreate primary, unique and foreign key constraints 
alter table FACT_RECOBROS_DUMMY
add constraint FACT_RECOBROS_ID primary key (SEQ_FACT_RECOBROS);
/

-- Create sequence 
create sequence SEQ_FACT_RECOBROS
minvalue 1
maxvalue 1000000000000000000000
start with 1
increment by 1
cache 20;
/