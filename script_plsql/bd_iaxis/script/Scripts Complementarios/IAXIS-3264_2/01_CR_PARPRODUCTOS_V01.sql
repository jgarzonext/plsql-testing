/**************************************************************
  IAXIS-3264 - JLTS - 19/01/2020
***************************************************************/
---> DELETE
-- PARPRODUCTOS
delete parproductos d
 where d.cparpro = 'BAJA_AMP_DEV_TOT';
-- DESPARAM
delete desparam d
 where d.cparam = 'BAJA_AMP_DEV_TOT';
-- CODPARAM
delete codparam d
 where d.cparam = 'BAJA_AMP_DEV_TOT';
---> INSERT
-- CODPARAM
insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('BAJA_AMP_DEV_TOT', 1, 4, 'GEN', 1621, 0, null, 1);
-- DESPARAM
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('BAJA_AMP_DEV_TOT', 1, 'Indica si el suplement de baixa d''empara es retorna com la suma dels registres DETRECIBO anteriors');
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('BAJA_AMP_DEV_TOT', 2, 'Indica si el suplemento de baja de amparo se devuelve como la suma de los registros DETRECIBO anteriores');
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('BAJA_AMP_DEV_TOT', 8, 'Indica si el suplemento de baja de amparo se devuelve como la suma de los registros DETRECIBO anteriores');
-- PARPRODUCTO
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80001, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80002, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80003, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80004, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80005, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80006, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80007, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80008, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80009, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80010, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80011, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (8062, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (8063, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80038, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80039, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80040, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80041, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80042, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80043, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80044, 'BAJA_AMP_DEV_TOT', 1, null, null, null);
COMMIT
/
