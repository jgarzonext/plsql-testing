insert into CODPARAM (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('CONVIVENCIA', 7, 1, 'GEN', 1, 0, null, 1);
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('CONVIVENCIA', 1, 'VARIABLE DE ENCENDIDO Y APAGADO DE LA CONVIVENCIA => 0=Apagado 1=Encendido');
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('CONVIVENCIA', 2, 'VARIABLE DE ENCENDIDO Y APAGADO DE LA CONVIVENCIA => 0=Apagado 1=Encendido');
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('CONVIVENCIA', 8, 'VARIABLE DE ENCENDIDO Y APAGADO DE LA CONVIVENCIA => 0=Apagado 1=Encendido');
insert into parEMPRESAS (CEMPRES, CPARAM, NVALPAR, TVALPAR, FVALPAR)
values (24,'CONVIVENCIA', null, '1', null);
commit;
/