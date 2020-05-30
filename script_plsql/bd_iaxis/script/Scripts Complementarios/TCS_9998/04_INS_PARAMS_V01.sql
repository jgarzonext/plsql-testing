insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('CAPACIDAD_FINANCIERA', 5, 1, 'GEN', 1, 0, null, 1);
--
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('CAPACIDAD_FINANCIERA', 1, 'Capacitat financera (valor inferior)');

insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('CAPACIDAD_FINANCIERA', 2, 'Capacidad financiera (valor inferior)');

insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('CAPACIDAD_FINANCIERA', 8, 'Capacidad financiera (valor inferior)');
--
insert into parempresas (CEMPRES, CPARAM, NVALPAR, TVALPAR, FVALPAR)
values (24, 'CAPACIDAD_FINANCIERA',null, '1,2', null);
COMMIT
/
