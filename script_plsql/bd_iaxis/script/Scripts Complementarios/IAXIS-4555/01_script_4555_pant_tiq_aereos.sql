DELETE from SGT_SUBTABS_DET where csubtabla = 9000023; 
DELETE FROM sgt_subtabs_des where csubtabla = 9000023; 
DELETE FROM sgt_subtabs_ver WHERE csubtabla = 9000023; 
DELETE FROM sgt_subtabs WHERE csubtabla = 9000023;

insert into sgt_subtabs (CEMPRES, CSUBTABLA, FALTA, FBAJA, CUSUALT, FMODIFI, CUSUMOD)
values (24, 9000023, f_sysdate, null, f_user, null, null);
insert into sgt_subtabs_ver (CEMPRES, CSUBTABLA, FEFECTO, CVERSUBT, FALTA, CUSUALT, FMODIFI, CUSUMOD)
values (24, 9000023, f_sysdate, 1, f_sysdate, f_user, null, null);
insert into sgt_subtabs_des (CEMPRES, CSUBTABLA, CIDIOMA, TSUBTABLA, TCLA1, TCLA2, TCLA3, TCLA4, TCLA5, TCLA6, TCLA7, TCLA8, TVAL1, TVAL2, TVAL3, TVAL4, TVAL5, TVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, TCLA9, TCLA10, TVAL7, TVAL8, TVAL9, TVAL10)
values (24, 9000023, 1, 'Validador de conceptos de pagos tiq y aero', 'Concepto Aerolinea', null, null, null, null, null, null, null, 'Concepto Agencia', null, null, null, null, null, f_sysdate, f_user, null, null, NULL, NULL, null, null, null, null);
insert into sgt_subtabs_des (CEMPRES, CSUBTABLA, CIDIOMA, TSUBTABLA, TCLA1, TCLA2, TCLA3, TCLA4, TCLA5, TCLA6, TCLA7, TCLA8, TVAL1, TVAL2, TVAL3, TVAL4, TVAL5, TVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, TCLA9, TCLA10, TVAL7, TVAL8, TVAL9, TVAL10)
values (24, 9000023, 2, 'Validador de conceptos de pagos tiq y aero', 'Concepto Aerolinea', null, null, null, null, null, null, null, 'Concepto Agencia', null, null, null, null, null, f_sysdate, f_user, null, null, NULL, NULL, null, null, null, null);
insert into sgt_subtabs_des (CEMPRES, CSUBTABLA, CIDIOMA, TSUBTABLA, TCLA1, TCLA2, TCLA3, TCLA4, TCLA5, TCLA6, TCLA7, TCLA8, TVAL1, TVAL2, TVAL3, TVAL4, TVAL5, TVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, TCLA9, TCLA10, TVAL7, TVAL8, TVAL9, TVAL10)
values (24, 9000023, 8, 'Validador de conceptos de pagos tiq y aero', 'Concepto Aerolinea', null, null, null, null, null, null, null, 'Concepto Agencia', null, null, null, null, null, f_sysdate, f_user, null, null, NULL, NULL, null, null, null, null);
insert into SGT_SUBTABS_DET (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000023, 1, 339, NULL, NULL, null, null, null, null, null, 341, null, null, null, null, null, f_sysdate, f_user, f_sysdate, f_user, null, null, NULL, null, null, null);
insert into SGT_SUBTABS_DET (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000023, 1, 395, NULL, NULL, null, null, null, null, null, 347, null, null, null, null, null, f_sysdate, f_user, f_sysdate, f_user, null, null, NULL, null, null, null);
insert into SGT_SUBTABS_DET (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000023, 1, 408, NULL, NULL, null, null, null, null, null, 410, null, null, null, null, null, f_sysdate, f_user, f_sysdate, f_user, null, null, NULL, null, null, null);
insert into SGT_SUBTABS_DET (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000023, 1, 342, NULL, NULL, null, null, null, null, null, 343, null, null, null, null, null, f_sysdate, f_user, f_sysdate, f_user, null, null, NULL, null, null, null);
--
DELETE FROM detvalores WHERE CVALOR = 8002028;
--
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002028, 8, 339, '20 - CAUSACIÓN GASTO TIQUETES AEREOS AEROLINEAS Y AGENCIA');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002028, 8, 395, '36 - CAUSACIÓN GASTO TIQUETES AEREOS AEROLINEAS Y AGENCIAS COASEGURO ACEPTADO');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002028, 8, 408, '367 - CAUSACIÓN GASTO TIQUETES AEREOS AEROLINEAS Y AGENCIAS COASEGURO CEDIDO CON SOLIDARIDAD');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002028, 8, 342, '368 - CAUSACIÓN GASTO TIQUETES AEREOS AEROLINEAS Y AGENCIA COASEGURO CEDIDO SIN SOLIDARIDAD');
--
DELETE FROM DETVALORES WHERE CVALOR = 803  AND CATRIBU IN (381,397);
COMMIT;
--