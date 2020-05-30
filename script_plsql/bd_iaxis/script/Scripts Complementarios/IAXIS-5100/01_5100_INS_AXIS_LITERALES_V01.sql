-- Borrado
delete axis_literales a
where a.slitera = 5000000;

delete axis_codliterales c
where c.slitera = 5000000;

-- Insersión
insert into axis_codliterales (slitera, clitera) values (5000000, 6);
--
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 5000000, 'No se puede crear más de una configuración para RC - Grupo RD - sucursal');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 5000000, 'No se puede crear más de una configuración para RC - Grupo RD - sucursal');

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 5000000, 'No se puede crear más de una configuración para RC - Grupo RD - sucursal');
-- 
COMMIT
/
