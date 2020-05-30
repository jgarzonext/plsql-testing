---> DELETE
-- AXIS_LITERALES
delete axis_literales where SLITERA in (89907107);
-- AXIS_CODLITERALES
delete axis_codliterales where SLITERA in (89907107);
--
---> INSERT 
-- AXIS_CODLITERALES
-- 89907107
insert into axis_codliterales (SLITERA, CLITERA)
values (89907107, 6);
-- AXIS_LITERALES
-- 89907107
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 89907107, 'Pre-validador Movimientos de reserva.');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 89907107, 'Pre-validador Movimientos de reserva.');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 89907107, 'Pre-validador Movimientos de reserva.');
commit
/
