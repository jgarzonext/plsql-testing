-- Create table
create table ITC_IA_CMLO_BRIDGER
(
  seq_id            NUMBER,
  estado            VARCHAR2(20),
  identificacion    VARCHAR2(20),
  nombre            VARCHAR2(1000),
  tipo              VARCHAR2(200),
  tipo_persona      VARCHAR2(1),
  direccion         VARCHAR2(2000),
  ciudad            VARCHAR2(100),
  departamento      VARCHAR2(2000),
  zipcode           VARCHAR2(10),
  pais              VARCHAR2(200),
  unique_identifier VARCHAR2(20)
);

-- Create/Recreate primary, unique and foreign key constraints 
alter table ITC_IA_CMLO_BRIDGER
  add constraint ITC_IA_CMLO_SEQ_ID unique (SEQ_ID);
  
  
grant select, insert, update, delete on AXIS.ITC_IA_CMLO_BRIDGER to AXIS00;


-- Utilizar para crear synonym

create or replace synonym AXIS.ITC_IA_CMLO_BRIDGER for AXIS00.ITC_IA_CMLO_BRIDGER;