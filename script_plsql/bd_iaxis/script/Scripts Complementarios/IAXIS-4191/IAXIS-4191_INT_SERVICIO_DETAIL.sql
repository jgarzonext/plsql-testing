create table INT_SERVICIO_DETAIL
(
  cinterf VARCHAR2(10),
  nombre  VARCHAR2(200),
  empresa NUMBER,
  estado  VARCHAR2(10)
);

--Grant 
grant select, insert, update, delete on AXIS.INT_SERVICIO_DETAIL to AXIS00;


-- Utilizar para crear synonym

create or replace synonym AXIS.INT_SERVICIO_DETAIL for AXIS00.INT_SERVICIO_DETAIL;

/


insert into INT_SERVICIO_DETAIL(cinterf,nombre,empresa,estado)
values('I017','Personas',24,'S');

insert into INT_SERVICIO_DETAIL(cinterf,nombre,empresa,estado)
values('I031','Asientos',24,'S');

insert into INT_SERVICIO_DETAIL(cinterf,nombre,empresa,estado)
values('l003','Recaudo',24,'S');

insert into INT_SERVICIO_DETAIL(cinterf,nombre,empresa,estado)
values('I072','Web Compliance',24,'S');     

commit;
/

