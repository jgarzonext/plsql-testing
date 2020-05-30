create table CUENTASSAP
(
  ccuenta   NUMBER,
  codcuenta NUMBER not null,
  linea     NUMBER
);
-- Create/Recreate indexes 
create unique index CUENTASSAP_INDEX1 on CUENTASSAP (CODCUENTA, CCUENTA);
-- Create/Recreate primary, unique and foreign key constraints 
alter table CUENTASSAP
  add constraint CUENTASSAP_PK primary key (CODCUENTA);

GRANT SELECT, INSERT, UPDATE, DELETE ON AXIS.CUENTASSAP TO AXIS00;
create or replace synonym AXIS.CUENTASSAP for AXIS00.CUENTASSAP; 