--
delete detvalores d where d.cvalor = 8002013;
--
delete valores d where d.cvalor = 8002013;
--
insert into valores (CVALOR, CIDIOMA, TVALOR)
values (8002013, 8, 'Estado Rango Dian');
--
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002013, 1, 1, 'Actiu');

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002013, 1, 2, 'Inactiu');

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002013, 2, 1, 'Activo');

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002013, 2, 2, 'Inactivo');

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002013, 8, 1, 'Activo');

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002013, 8, 2, 'Inactivo');

COMMIT;
/
