
DELETE FROM SGT_SUBTABS_DET WHERE CEMPRES=24 AND CSUBTABLA=9000020 AND CVERSUBT=1;
DELETE FROM SGT_SUBTABS_DES WHERE CEMPRES=24 AND CSUBTABLA=9000020;
DELETE FROM SGT_SUBTABS_VER WHERE CEMPRES=24 AND CSUBTABLA=9000020;
DELETE FROM SGT_SUBTABS WHERE CEMPRES=24 AND CSUBTABLA=9000020;
Insert into SGT_SUBTABS (CEMPRES,CSUBTABLA,FALTA,FBAJA,CUSUALT,FMODIFI,CUSUMOD) values (24,9000020,to_date('15/08/2019','DD/MM/YYYY'),null,F_USER,null,null);

Insert into SGT_SUBTABS_VER (CEMPRES,CSUBTABLA,FEFECTO,CVERSUBT,FALTA,CUSUALT,FMODIFI,CUSUMOD) values (24,9000020,to_date('15/08/2019','DD/MM/YYYY'),1,to_date('15/08/2019','DD/MM/YYYY'),F_USER,null,null);

Insert into SGT_SUBTABS_DES (CEMPRES,CSUBTABLA,CIDIOMA,TSUBTABLA,TCLA1,TCLA2,TCLA3,TCLA4,TCLA5,TCLA6,TCLA7,TCLA8,TVAL1,TVAL2,TVAL3,TVAL4,TVAL5,TVAL6,FALTA,CUSUALT,FMODIFI,CUSUMOD,TCLA9,TCLA10,TVAL7,TVAL8,TVAL9,TVAL10) values (24,9000020,1,'Mapeador de escenarios de cierre','Tipus de persona relacionada (ctipper_rel)',null,null,null,null,null,null,null,'Es permet com pagador Alternatiu (1-Sí, 0-No)','Tipus d pagador Alternatiu (ctippagalt)',null,null,null,null,to_date('15/08/2019','DD/MM/YYYY'),F_USER,null,null,null,null,null,null,null,null);
Insert into SGT_SUBTABS_DES (CEMPRES,CSUBTABLA,CIDIOMA,TSUBTABLA,TCLA1,TCLA2,TCLA3,TCLA4,TCLA5,TCLA6,TCLA7,TCLA8,TVAL1,TVAL2,TVAL3,TVAL4,TVAL5,TVAL6,FALTA,CUSUALT,FMODIFI,CUSUMOD,TCLA9,TCLA10,TVAL7,TVAL8,TVAL9,TVAL10) values (24,9000020,2,'Mapeador de escenarios de cierre','Tipo de persona relacionada (ctipper_rel)',null,null,null,null,null,null,null,'Se permite como Pagador Alternativo (1-Sí, 0-No)','Tipo de Pagador Alternativo (ctippagalt)',null,null,null,null,to_date('15/08/2019','DD/MM/YYYY'),F_USER,null,null,null,null,null,null,null,null);
Insert into SGT_SUBTABS_DES (CEMPRES,CSUBTABLA,CIDIOMA,TSUBTABLA,TCLA1,TCLA2,TCLA3,TCLA4,TCLA5,TCLA6,TCLA7,TCLA8,TVAL1,TVAL2,TVAL3,TVAL4,TVAL5,TVAL6,FALTA,CUSUALT,FMODIFI,CUSUMOD,TCLA9,TCLA10,TVAL7,TVAL8,TVAL9,TVAL10) values (24,9000020,8,'Mapeador de escenarios de cierre','Tipo de persona relacionada (ctipper_rel)',null,null,null,null,null,null,null,'Se permite como Pagador Alternativo (1-Sí, 0-No)','Tipo de Pagador Alternativo (ctippagalt)',null,null,null,null,to_date('15/08/2019','DD/MM/YYYY'),F_USER,null,null,null,null,null,null,null,null);
--
insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1503, 801, 264, 0, 0, null, null, null, 264, 2650050100, 265005, 1503, null, null, to_date('10-09-2019 18:16:12', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:02', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1502, 801, 264, 0, 0, null, null, null, 264, 5146050101, 514605, 1502, null, null, to_date('10-09-2019 18:16:12', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1501, 801, 264, 0, 0, null, null, null, 264, 2650050100, 265005, 1501, null, null, to_date('10-09-2019 18:16:12', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1503, 802, 264, 0, 0, null, null, null, 264, 2650050100, 265005, 1503, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:02', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1502, 802, 264, 0, 0, null, null, null, 264, 5146050101, 514605, 1502, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:02', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1501, 802, 264, 0, 0, null, null, null, 264, 2650050100, 265005, 1501, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:02', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1500, 802, 264, 0, 0, null, null, null, 264, 5146050101, 514605, 1500, null, null, to_date('29-11-2019 11:30:39', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1500, 801, 264, 0, 0, null, null, null, 264, 5146050101, 514605, 1500, null, null, to_date('10-09-2019 18:16:12', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1504, 802, 268, 0, 0, null, null, null, 268, 5146050101, 514605, 1504, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1505, 802, 268, 0, 0, null, null, null, 268, 2650050100, 265005, 1505, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1505, 801, 268, 0, 0, null, null, null, 268, 2650050100, 265005, 1505, null, null, to_date('10-09-2019 18:16:13', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1504, 801, 268, 0, 0, null, null, null, 268, 5146050101, 514605, 1504, null, null, to_date('10-09-2019 18:16:13', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1507, 802, 269, 0, 0, null, null, null, 269, 4137050101, 413705, 1507, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ANTERIOR', 'COP', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1507, 801, 269, 0, 0, null, null, null, 269, 4137050101, 413705, 1507, null, null, to_date('10-09-2019 18:16:13', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ANTERIOR', 'COP', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1506, 802, 269, 0, 0, null, null, null, 269, 2650050100, 265005, 1506, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ANTERIOR', 'COP', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1506, 801, 269, 0, 0, null, null, null, 269, 2650050100, 265005, 1506, null, null, to_date('10-09-2019 18:16:13', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ANTERIOR', 'COP', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1510, 802, 270, 0, 0, null, null, null, 270, 5146050101, 514605, 1510, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'LIBERADISM');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1511, 802, 270, 0, 0, null, null, null, 270, 4137050101, 413705, 1511, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'LIBERADISM');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1511, 801, 270, 0, 0, null, null, null, 270, 4137050101, 413705, 1511, null, null, to_date('10-09-2019 18:16:15', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'LIBERADISM');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1510, 801, 270, 0, 0, null, null, null, 270, 5146050101, 514605, 1510, null, null, to_date('10-09-2019 18:16:14', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'LIBERADISM');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1509, 801, 270, 0, 0, null, null, null, 270, 2650050100, 265005, 1509, null, null, to_date('10-09-2019 18:16:14', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'LIBERADISM');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1509, 802, 270, 0, 0, null, null, null, 270, 2650050100, 265005, 1509, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'COP', null, 'LIBERADISM');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1500, 802, 417, 1, 1, null, null, null, 417, 5146050101, 514605, 1500, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1502, 802, 417, 1, 1, null, null, null, 417, 5146050101, 514605, 1502, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1501, 801, 417, 1, 1, null, null, null, 417, 2650050100, 265005, 1501, null, null, to_date('10-09-2019 18:16:15', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1500, 801, 417, 1, 1, null, null, null, 417, 5146050101, 514605, 1500, null, null, to_date('10-09-2019 18:16:15', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1503, 802, 417, 1, 1, null, null, null, 417, 2650050100, 265005, 1503, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1502, 801, 417, 1, 1, null, null, null, 417, 5146050101, 514605, 1502, null, null, to_date('10-09-2019 18:16:16', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1501, 802, 417, 1, 1, null, null, null, 417, 2650050100, 265005, 1501, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1503, 801, 417, 1, 1, null, null, null, 417, 2650050100, 265005, 1503, null, null, to_date('10-09-2019 18:16:17', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1502, 802, 418, 0, 1, null, null, null, 418, 5146050101, 514605, 1502, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1503, 802, 418, 0, 1, null, null, null, 418, 2650050100, 265005, 1503, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1503, 801, 418, 0, 1, null, null, null, 418, 2650050100, 265005, 1503, null, null, to_date('10-09-2019 18:16:16', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1502, 801, 418, 0, 1, null, null, null, 418, 5146050101, 514605, 1502, null, null, to_date('10-09-2019 18:16:16', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'AUMENTO');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1501, 801, 418, 0, 1, null, null, null, 418, 2650050100, 265005, 1501, null, null, to_date('10-09-2019 18:16:15', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1500, 801, 418, 0, 1, null, null, null, 418, 5146050101, 514605, 1500, null, null, to_date('10-09-2019 18:16:15', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1500, 802, 418, 0, 1, null, null, null, 418, 5146050101, 514605, 1500, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1501, 802, 418, 0, 1, null, null, null, 418, 2650050100, 265005, 1501, null, null, to_date('29-11-2019 11:30:40', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'CONSTITUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1504, 801, 419, 1, 1, null, null, null, 419, 5146050101, 514605, 1504, null, null, to_date('10-09-2019 18:16:17', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1504, 802, 419, 1, 1, null, null, null, 419, 5146050101, 514605, 1504, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1505, 802, 419, 1, 1, null, null, null, 419, 2650050100, 265005, 1505, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1505, 801, 419, 1, 1, null, null, null, 419, 2650050100, 265005, 1505, null, null, to_date('10-09-2019 18:16:17', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1505, 801, 420, 0, 1, null, null, null, 420, 2650050100, 265005, 1505, null, null, to_date('10-09-2019 18:16:18', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ANTERIOR', 'USD', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1504, 801, 420, 0, 1, null, null, null, 420, 5146050101, 514605, 1504, null, null, to_date('10-09-2019 18:16:17', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ANTERIOR', 'USD', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1505, 802, 420, 0, 1, null, null, null, 420, 2650050100, 265005, 1505, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ANTERIOR', 'USD', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1504, 802, 420, 0, 1, null, null, null, 420, 5146050101, 514605, 1504, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ANTERIOR', 'USD', null, 'DISMINUCION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1507, 801, 421, 1, 1, null, null, null, 421, 4137050101, 413705, 1507, null, null, to_date('10-09-2019 18:16:18', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1506, 801, 421, 1, 1, null, null, null, 421, 2650050100, 265005, 1506, null, null, to_date('10-09-2019 18:16:18', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1507, 802, 421, 1, 1, null, null, null, 421, 4137050101, 413705, 1507, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1506, 802, 421, 1, 1, null, null, null, 421, 2650050100, 265005, 1506, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1506, 802, 422, 0, 1, null, null, null, 422, 2650050100, 265005, 1506, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1507, 802, 422, 0, 1, null, null, null, 422, 4137050101, 413705, 1507, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1506, 801, 422, 0, 1, null, null, null, 422, 2650050100, 265005, 1506, null, null, to_date('10-09-2019 18:16:18', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1507, 801, 422, 0, 1, null, null, null, 422, 4137050101, 413705, 1507, null, null, to_date('10-09-2019 18:16:19', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERACION');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1510, 802, 423, 0, 1, null, null, null, 423, 5146050101, 514605, 1510, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERADISM');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1509, 802, 423, 0, 1, null, null, null, 423, 2650050100, 265005, 1509, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERADISM');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1511, 802, 423, 0, 1, null, null, null, 423, 4137050101, 413705, 1511, null, null, to_date('29-11-2019 11:30:41', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERADISM');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1510, 801, 423, 0, 1, null, null, null, 423, 5146050101, 514605, 1510, null, null, to_date('10-09-2019 18:16:19', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERADISM');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1509, 801, 423, 0, 1, null, null, null, 423, 2650050100, 265005, 1509, null, null, to_date('10-09-2019 18:16:19', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERADISM');

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000020, 1, 1511, 801, 423, 0, 1, null, null, null, 423, 4137050101, 413705, 1511, null, null, to_date('10-09-2019 18:16:19', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('02-12-2019 16:30:55', 'dd-mm-yyyy hh24:mi:ss'), 'TALLER33', null, null, 'ACTUAL', 'USD', null, 'LIBERADISM');
--
commit;
/