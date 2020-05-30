DELETE FROM axis_literales WHERE SLITERA IN (89907076,89907075);
DELETE FROM axis_codliterales WHERE SLITERA IN (89907076,89907075);
--
insert into axis_codliterales (SLITERA, CLITERA)
values (89907075, 3);
--
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 89907075, 'Variación en la reserva en Pesos');
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 89907075, 'Variació en la reserva en Pesos');
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 89907075, 'Variación en la reserva en Pesos');
--
insert into axis_codliterales (SLITERA, CLITERA)
values (89907076, 3);
--
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 89907076, 'Reexpresión');
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 89907076, 'Reexpresión');
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 89907076, 'Reexpresión');
--
insert into axis_codliterales (SLITERA, CLITERA)
values (89907077, 3);
--
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 89907077, 'Transacción pesos');
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 89907077, 'Transacción pesos');
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 89907077, 'Transacción pesos');
--
COMMIT;
/