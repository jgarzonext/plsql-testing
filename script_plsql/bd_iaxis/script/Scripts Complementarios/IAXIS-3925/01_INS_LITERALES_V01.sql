-- Se eliminan registros existentes
delete axis_literales a
where a.slitera = 2000090;

delete axis_codliterales a
where a.slitera = 2000090;
--
delete axis_literales a
where a.slitera = 2000091;

delete axis_codliterales a
where a.slitera = 2000091;
--
delete axis_literales a
where a.slitera = 2000092;

delete axis_codliterales a
where a.slitera = 2000092;
--
delete axis_literales a
where a.slitera = 2000093;

delete axis_codliterales a
where a.slitera = 2000093;

-- Se insertan los nuevos registros
insert into axis_codliterales (SLITERA, CLITERA)
values (2000090, 6);

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 2000090, 'Existe más de un Rango Dian activo');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 2000090, 'Existe más de un Rango Dian activo');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 2000090, 'Existe más de un Rango Dian activo');
--
insert into axis_codliterales (SLITERA, CLITERA)
values (2000091, 6);

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 2000091, 'Error en el proceso de Rango Dian');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 2000091, 'Error en el proceso de Rango Dian');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 2000091, 'Error en el proceso de Rango Dian');
--
insert into axis_codliterales (SLITERA, CLITERA)
values (2000092, 6);

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 2000092, 'Existe más de un Rango Dian inactivo a activar');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 2000092, 'Existe más de un Rango Dian inactivo a activar');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 2000092, 'Existe más de un Rango Dian inactivo a activar');
--
insert into axis_codliterales (SLITERA, CLITERA)
values (2000093, 6);

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 2000093, 'Error al insertar en la tabla RANGO_DIAN_MOVSEGURO');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 2000093, 'Error al insertar en la tabla RANGO_DIAN_MOVSEGURO');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 2000093, 'Error al insertar en la tabla RANGO_DIAN_MOVSEGURO');
COMMIT
/
