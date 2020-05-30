-- Se eliminan los registros existentes
delete axis_literales a
where a.slitera = 2000094;
--
delete axis_codliterales a
where a.slitera = 2000094;
-- Se insertan los nuevos registros
insert into axis_codliterales (SLITERA, CLITERA)
values (2000094, 3);
--
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 2000094, 'Calificación riesgo endeudamiento');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 2000094, 'Calificación riesgo endeudamiento');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 2000094, 'Calificación riesgo endeudamiento');
COMMIT
/
