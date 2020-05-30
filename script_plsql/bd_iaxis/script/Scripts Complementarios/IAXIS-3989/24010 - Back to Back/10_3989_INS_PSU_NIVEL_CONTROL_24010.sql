-- INS PSU_NIVEL_CONTROL (24010)
-- CONTEXTO
select pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD')) FROM dual;
-- CUMPLIMIENTO
DELETE psu_nivel_control p
 WHERE p.ccontrol = 24010
/
-- NIVEL 2900
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80001, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80002, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80003, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80004, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80005, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80006, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80007, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80008, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80009, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80010, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80011, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80012, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
-- NIVEL 0											

BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80001, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80002, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80003, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80004, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80005, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80006, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80007, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80008, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80009, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80010, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80011, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80012, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
-- RC
-- NIVEL 2900
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80038, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80039, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80040, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80041, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80042, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80043, 1,1, 2900, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
-- NIVEL 0
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80038, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80039, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80040, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80041, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80042, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/	
BEGIN
insert into psu_nivel_control (CCONTROL, SPRODUC, NVALINF, NVALSUP, CNIVEL, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24010,80043, 0,0, 0, f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
COMMIT
/