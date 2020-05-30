create table ESCENARIOSAP
(
  codescenario NUMBER not null,
  codcuenta    NUMBER not null,
  producto     NUMBER not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table ESCENARIOSAP
  add constraint ESCENARIOSAP_PK primary key (CODESCENARIO, PRODUCTO, CODCUENTA);
alter table ESCENARIOSAP
  add constraint ESCENARIOSAP_FK foreign key (CODCUENTA)
  references CUENTASSAP (CODCUENTA) on delete cascade;