---> DELETE
-- AXIS_LITERALES
delete axis_literales where SLITERA= 89907103;
-- AXIS_CODLITERALES
delete axis_codliterales where SLITERA= 89907103;
--
---> INSERT 
-- AXIS_CODLITERALES
insert into axis_codliterales (SLITERA, CLITERA)
values (89907103, 2);
-- AXIS_LITERALES
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 89907103, 'DETALLES DE EMISIÓN POR RECIBOS');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 89907103, 'DETALLES DE EMISIÓN POR RECIBOS');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 89907103, 'DETALLES DE EMISIÓN POR RECIBOS');
commit
/
