-- Se borran los datos que ya no corresponden
-- CONTEXTO
select pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD')) FROM dual;
-- DELETE
DELETE psu_usuagru_nivel p where p.cusuagru > 45;
--
DELETE psu_desusuagru p where p.cusuagru > 45;
--
DELETE psu_usuagru p where p.cusuagru > 45;
--
DELETE psu_codusuagru p where p.cusuagru > 45;
--
DELETE psu_controlpro p WHERE sproduc < 80000;
--
COMMIT
/
