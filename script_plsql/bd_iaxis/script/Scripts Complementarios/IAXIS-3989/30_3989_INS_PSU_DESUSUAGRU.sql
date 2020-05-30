-- INS PSU_DESUSUAGRU
-- CONTEXTO
select pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD')) FROM dual;
-- CUMPLIMIENTO
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('63', 8, 'L7-1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('62', 8, 'L7-2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('61', 8, 'L6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('60', 8, 'L5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('59', 8, 'L4A', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('58', 8, 'L4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('57', 8, 'L3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('56', 8, 'L2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('55', 8, 'L1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('54', 8, 'L0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('53', 8, 'LG5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('52', 8, 'LG4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('51', 8, 'LG3 - LK3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('50', 8, 'LK2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('49', 8, 'LK1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('48', 8, 'LG2 - LK3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('47', 8, 'LG1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('46', 8, 'L', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
-- RC
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('78', 8, 'R14', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('77', 8, 'R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('76', 8, 'R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('75', 8, 'R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('74', 8, 'R10', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('73', 8, 'R9', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('72', 8, 'R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('71', 8, 'R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('70', 8, 'R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('69', 8, 'R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('68', 8, 'R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('67', 8, 'R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('66', 8, 'R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('65', 8, 'R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('64', 8, 'R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
-- CUMPLIMIENTO Y RC
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('282', 8, 'L7-1 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('281', 8, 'L7-1 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('280', 8, 'L7-1 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('279', 8, 'L7-1 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('278', 8, 'L7-1 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('277', 8, 'L7-1 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('276', 8, 'L7-1 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('275', 8, 'L7-1 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('274', 8, 'L7-1 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('273', 8, 'L7-1 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('272', 8, 'L7-1 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('271', 8, 'L7-1 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('270', 8, 'L7-2 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('269', 8, 'L7-2 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('268', 8, 'L7-2 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('267', 8, 'L7-2 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('266', 8, 'L7-2 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('265', 8, 'L7-2 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('264', 8, 'L7-2 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('263', 8, 'L7-2 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('262', 8, 'L7-2 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('261', 8, 'L7-2 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('260', 8, 'L7-2 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('259', 8, 'L7-2 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('258', 8, 'L6 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('257', 8, 'L6 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('256', 8, 'L6 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('255', 8, 'L6 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('254', 8, 'L6 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('253', 8, 'L6 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('252', 8, 'L6 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('251', 8, 'L6 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('250', 8, 'L6 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('249', 8, 'L6 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('248', 8, 'L6 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('247', 8, 'L6 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('246', 8, 'L5 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('245', 8, 'L5 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('244', 8, 'L5 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('243', 8, 'L5 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('242', 8, 'L5 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('241', 8, 'L5 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('240', 8, 'L5 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('239', 8, 'L5 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('238', 8, 'L5 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('237', 8, 'L5 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('236', 8, 'L5 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('235', 8, 'L5 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('234', 8, 'L4 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('233', 8, 'L4 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('232', 8, 'L4 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('231', 8, 'L4 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('230', 8, 'L4 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('229', 8, 'L4 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('228', 8, 'L4 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('227', 8, 'L4 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('226', 8, 'L4 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('225', 8, 'L4 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('224', 8, 'L4 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('223', 8, 'L4 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('222', 8, 'L3 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('221', 8, 'L3 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('220', 8, 'L3 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('219', 8, 'L3 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('218', 8, 'L3 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('217', 8, 'L3 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('216', 8, 'L3 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('215', 8, 'L3 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('214', 8, 'L3 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('213', 8, 'L3 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('212', 8, 'L3 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('211', 8, 'L3 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('210', 8, 'L2 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('209', 8, 'L2 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('208', 8, 'L2 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('207', 8, 'L2 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('206', 8, 'L2 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('205', 8, 'L2 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('204', 8, 'L2 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('203', 8, 'L2 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('202', 8, 'L2 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('201', 8, 'L2 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('200', 8, 'L2 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('199', 8, 'L2 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('198', 8, 'L1 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('197', 8, 'L1 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('196', 8, 'L1 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('195', 8, 'L1 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('194', 8, 'L1 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('193', 8, 'L1 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('192', 8, 'L1 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('191', 8, 'L1 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('190', 8, 'L1 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('189', 8, 'L1 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('188', 8, 'L1 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('187', 8, 'L1 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('186', 8, 'L0 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('185', 8, 'L0 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('184', 8, 'L0 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('183', 8, 'L0 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('182', 8, 'L0 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('181', 8, 'L0 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('180', 8, 'L0 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('179', 8, 'L0 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('178', 8, 'L0 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('177', 8, 'L0 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('176', 8, 'L0 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('175', 8, 'L0 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('174', 8, 'LG5 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('173', 8, 'LG5 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('172', 8, 'LG5 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('171', 8, 'LG5 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('170', 8, 'LG5 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('169', 8, 'LG5 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('168', 8, 'LG5 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('167', 8, 'LG5 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('166', 8, 'LG5 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('165', 8, 'LG5 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('164', 8, 'LG5 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('163', 8, 'LG5 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('162', 8, 'LG4 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('161', 8, 'LG4 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('160', 8, 'LG4 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('159', 8, 'LG4 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('158', 8, 'LG4 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('157', 8, 'LG4 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('156', 8, 'LG4 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('155', 8, 'LG4 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('154', 8, 'LG4 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('153', 8, 'LG4 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('152', 8, 'LG4 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('151', 8, 'LG4 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('150', 8, 'LG3 - LK3 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('149', 8, 'LG3 - LK3 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('148', 8, 'LG3 - LK3 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('147', 8, 'LG3 - LK3 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('146', 8, 'LG3 - LK3 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('145', 8, 'LG3 - LK3 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('144', 8, 'LG3 - LK3 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('143', 8, 'LG3 - LK3 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('142', 8, 'LG3 - LK3 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('141', 8, 'LG3 - LK3 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('140', 8, 'LG3 - LK3 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('139', 8, 'LG3 - LK3 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('138', 8, 'LK2 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('137', 8, 'LK2 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('136', 8, 'LK2 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('135', 8, 'LK2 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('134', 8, 'LK2 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('133', 8, 'LK2 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('132', 8, 'LK2 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('131', 8, 'LK2 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('130', 8, 'LK2 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('129', 8, 'LK2 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('128', 8, 'LK2 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('127', 8, 'LK2 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('126', 8, 'LK1 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('125', 8, 'LK1 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('124', 8, 'LK1 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('123', 8, 'LK1 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('122', 8, 'LK1 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('121', 8, 'LK1 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('120', 8, 'LK1 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('119', 8, 'LK1 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('118', 8, 'LK1 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('117', 8, 'LK1 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('116', 8, 'LK1 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('115', 8, 'LK1 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('114', 8, 'LG2 - LK3 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('113', 8, 'LG2 - LK3 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('112', 8, 'LG2 - LK3 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('111', 8, 'LG2 - LK3 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('110', 8, 'LG2 - LK3 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('109', 8, 'LG2 - LK3 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('108', 8, 'LG2 - LK3 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('107', 8, 'LG2 - LK3 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('106', 8, 'LG2 - LK3 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('105', 8, 'LG2 - LK3 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('104', 8, 'LG2 - LK3 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('103', 8, 'LG2 - LK3 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('102', 8, 'LG1 <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('101', 8, 'LG1 <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('100', 8, 'LG1 <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('99', 8, 'LG1 <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('98', 8, 'LG1 <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('97', 8, 'LG1 <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('96', 8, 'LG1 <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('95', 8, 'LG1 <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('94', 8, 'LG1 <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('93', 8, 'LG1 <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('92', 8, 'LG1 <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('91', 8, 'LG1 <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('90', 8, 'L <-> R13', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('89', 8, 'L <-> R12', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('88', 8, 'L <-> R11', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('87', 8, 'L <-> R8', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('86', 8, 'L <-> R7', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('85', 8, 'L <-> R6', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('84', 8, 'L <-> R5', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('83', 8, 'L <-> R4', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('82', 8, 'L <-> R3', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('81', 8, 'L <-> R2', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('80', 8, 'L <-> R1', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/
BEGIN
insert into psu_desusuagru (CUSUAGRU, CIDIOMA, TUSUAGRU, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('79', 8, 'L <-> R0', f_user, f_sysdate, null, null);
EXCEPTION
WHEN OTHERS THEN
NULL;
END;
/

COMMIT
/