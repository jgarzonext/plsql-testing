--
delete axis_literales a
where a.slitera in (89906270, 89906271);

delete axis_codliterales a
where a.slitera in (89906270, 89906271);
--
insert into axis_codliterales (SLITERA, CLITERA)
values (89906270, 3);

insert into axis_codliterales (SLITERA, CLITERA)
values (89906271, 3);
--
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 89906270, 'Activo Corriente + Activo no corriente debe ser igual a Activo Total.');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 89906271, 'Pasivo Corriente + Pasivo no Corriente debe ser igual a Pasivo Total.');
COMMIT
/
