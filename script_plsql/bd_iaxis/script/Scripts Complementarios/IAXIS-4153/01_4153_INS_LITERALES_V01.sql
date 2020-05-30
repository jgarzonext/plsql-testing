-- Se eliminan registros existentes
delete axis_literales a
where a.slitera = 2000095;

delete axis_codliterales a
where a.slitera = 2000095;
--
-- Se insertan los nuevos registros
insert into axis_codliterales (SLITERA, CLITERA)
values (2000095, 6);

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 2000095, 'Estado abonado');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 2000095, 'Estado abonado');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 2000095, 'Estado abonado');
COMMIT
/
