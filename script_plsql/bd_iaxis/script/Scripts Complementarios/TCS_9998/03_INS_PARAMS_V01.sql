BEGIN
insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('DBLINK', 4, 1, 'GEN', 1, 0, null, 1);
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
--
BEGIN
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('DBLINK', 1, 'DBLINK DE IAXIS A OSIRIS');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
BEGIN
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('DBLINK', 2, 'DBLINK DE IAXIS A OSIRIS');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
BEGIN
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('DBLINK', 8, 'DBLINK DE IAXIS A OSIRIS');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
--
BEGIN
insert into parinstalacion (CPARAME, CTIPPAR, TVALPAR, NVALPAR, FVALPAR)
values ('DBLINK', 1, '@PREPRODUCCION', null, null);
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
