DELETE FROM sgt_subtabs_det WHERE csubtabla = 9000016 AND ccla1 = 411;
--
insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000016, 1, 411, 0, 0, null, null, null, null, null, 322, 1, null, null, null, null, to_date('23-01-2020 15:15:17', 'dd-mm-yyyy hh24:mi:ss'), F_USER, to_date('23-01-2020 15:15:17', 'dd-mm-yyyy hh24:mi:ss'), F_USER, null, null, 'pagosin', null, null, null);
insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000016, 1, 411, 0, 8, null, null, null, null, null, 382, 1, null, null, null, null, to_date('23-01-2020 15:15:17', 'dd-mm-yyyy hh24:mi:ss'), F_USER, to_date('23-01-2020 15:15:17', 'dd-mm-yyyy hh24:mi:ss'), F_USER, null, null, 'pagosin', null, null, null);

COMMIT;