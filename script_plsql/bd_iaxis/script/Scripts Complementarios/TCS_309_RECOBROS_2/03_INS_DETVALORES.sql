insert into valores (CVALOR, CIDIOMA, TVALOR)
values ('8002012', 1, 'Clase de cuenta');
insert into valores (CVALOR, CIDIOMA, TVALOR)
values ('8002012', 2, 'Clase de cuenta');
insert into valores (CVALOR, CIDIOMA, TVALOR)
values ('8002012', 8, 'Clase de cuenta');

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values ('8002012', 1, 1, 'Ahorros');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values ('8002012', 1, 2, 'Corriente');

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values ('8002012', 2, 1, 'Ahorros');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values ('8002012', 2, 2, 'Corriente');

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values ('8002012', 8, 1, 'Ahorros');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values ('8002012', 8, 2, 'Corriente');

COMMIT;
/