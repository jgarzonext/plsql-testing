-- MAX_FACTOR_S;
delete parempresas p
where p.cempres = 24
  and p.cparam = 'MAX_FACTOR_S';
--
delete desparam d
 where d.cparam = 'MAX_FACTOR_S';
--
delete codparam c
 where c.cparam = 'MAX_FACTOR_S';
--
insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('MAX_FACTOR_S', 5, 2, 'GEN', 80, 0, null, 1);
--
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('MAX_FACTOR_S', 1, 'Máximo factor S, modelo de cupos');

insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('MAX_FACTOR_S', 2, 'Máximo factor S, modelo de cupos');

insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('MAX_FACTOR_S', 8, 'Máximo factor S, modelo de cupos');
--
insert into parempresas (CEMPRES, CPARAM, NVALPAR, TVALPAR, FVALPAR)
values (24, 'MAX_FACTOR_S', 3, null, null);
-- MAX_CUPOS_SUGER;
delete parempresas p
where p.cempres = 24
  and p.cparam = 'MAX_CUPOS_SUGER';
--
delete desparam d
 where d.cparam = 'MAX_CUPOS_SUGER';
--
delete codparam c
 where c.cparam = 'MAX_CUPOS_SUGER';
--
insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('MAX_CUPOS_SUGER', 5, 2, 'GEN', 81, 0, null, 1);
--
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('MAX_CUPOS_SUGER', 1, 'Máximo cupo sugerido de empresas');

insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('MAX_CUPOS_SUGER', 2, 'Máximo cupo sugerido de empresas');

insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('MAX_CUPOS_SUGER', 8, 'Máximo cupo sugerido de empresas');
--
insert into parempresas (CEMPRES, CPARAM, NVALPAR, TVALPAR, FVALPAR)
values (24, 'MAX_CUPOS_SUGER', 3, null, null);
-- INGR_MIN_PROMANU_CLI;
delete parempresas p
where p.cempres = 24
  and p.cparam = 'INGR_MIN_PROMANU_CLI';
--
delete desparam d
 where d.cparam = 'INGR_MIN_PROMANU_CLI';
--
delete codparam c
 where c.cparam = 'INGR_MIN_PROMANU_CLI';
--
insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('INGR_MIN_PROMANU_CLI', 5, 2, 'GEN', 82, 0, null, 1);
--
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('INGR_MIN_PROMANU_CLI', 1, 'Ingreso mínimo promedio anual cliente');

insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('INGR_MIN_PROMANU_CLI', 2, 'Ingreso mínimo promedio anual cliente');

insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('INGR_MIN_PROMANU_CLI', 8, 'Ingreso mínimo promedio anual cliente');
--
insert into parempresas (CEMPRES, CPARAM, NVALPAR, TVALPAR, FVALPAR)
values (24, 'INGR_MIN_PROMANU_CLI', 11, null, null);
COMMIT
/

