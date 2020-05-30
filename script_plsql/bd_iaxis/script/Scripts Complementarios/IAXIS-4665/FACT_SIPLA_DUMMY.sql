-- Create table
create table FACT_SIPLA_DUMMY
(
  sipla_id      NUMBER not null,
  sucur         NUMBER,
  nomsucur      VARCHAR2(50),
  nomcli        VARCHAR2(150),
  nitc          VARCHAR2(20),
  nomage        VARCHAR2(150),
  nitag         VARCHAR2(20),
  primaprod     NUMBER,
  estado_sipla  NUMBER,
  v_session     NUMBER,
  fechadoc      DATE,
  sin           NUMBER,
  des           NUMBER,
  con           NUMBER,
  sucrea        VARCHAR2(20),
  geo_id        NUMBER,
  tie_id        NUMBER,
  codigo        NUMBER,
  numradicacion NUMBER,
  fecharadicada DATE,
  fecha_control DATE,
  tipodocumento NUMBER,
  fecexp        DATE
);
/

-- Create/Recreate primary, unique and foreign key constraints 
alter table FACT_SIPLA_DUMMY
add constraint SIPLA_ID_PK primary key (SIPLA_ID);
/
  
-- Create sequence 
create sequence SIPLA_ID
minvalue 1
maxvalue 1000000000000000
start with 1
increment by 1
cache 20;
/