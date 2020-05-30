-- DELETE
delete axis_literales a
where a.slitera = 3000000;
--
delete axis_codliterales a
where a.slitera = 3000000;
-- INSERT
insert into axis_codliterales (SLITERA, CLITERA)
values (3000000, 6);
--
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 3000000, 'Error en la función F_COMIS_CORRE_COA');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 3000000, 'Error en la función F_COMIS_CORRE_COA');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 3000000, 'Error en la función F_COMIS_CORRE_COA');
commit
/
