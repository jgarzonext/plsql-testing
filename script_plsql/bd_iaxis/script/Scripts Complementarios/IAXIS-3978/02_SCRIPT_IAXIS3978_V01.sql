/* Formatted on 15/08/2019 17:00*/
/* **************************** 15/08/2019 17:00 **********************************************************************
Versión           Descripción
01.               -Se insertan los registros faltantes para Buenaventura y Popayán.
                  -Se insertan registros faltantes para producto Performance Bond. 
IAXIS-3978        15/08/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
-- Buenaventura
--
DELETE FROM sgt_subtabs_det s WHERE s.csubtabla = 9000014 AND s.ccla2 = 20104;
--
insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80009, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80011, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80002, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8016, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8001, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8009, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8017, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8025, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8002, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8003, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8004, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8010, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8011, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8012, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8018, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8019, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8020, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8026, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8027, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8028, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8038, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8046, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8039, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8040, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8041, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8047, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8048, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8049, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8033, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8035, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8037, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8031, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8034, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80001, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80003, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80007, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8032, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8029, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8030, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8013, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8014, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8015, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
--
-- Popayán
--
DELETE FROM sgt_subtabs_det s WHERE s.csubtabla = 9000014 AND s.ccla2 = 20130;
--
insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80009, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80011, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80002, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8015, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8016, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8001, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8009, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8017, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8025, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8002, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8003, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8004, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8010, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8011, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8012, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8018, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8019, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8020, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8026, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8027, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8028, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8038, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8046, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8039, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8040, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8041, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8047, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8048, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8049, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8033, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8035, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8037, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8031, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8034, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80001, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80003, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80007, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8032, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8029, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8030, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8013, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 8014, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
--
-- Performance Bond (Nueva producción)
--
DELETE FROM sgt_subtabs_det s WHERE s.csubtabla = 9000014 AND s.ccla1 = 80012;
--
insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 10102, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 10106, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 10109, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 10111, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 10134, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 10135, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20101, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20103, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20104, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20105, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20107, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20108, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20112, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20115, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20116, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20117, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20118, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20122, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20123, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20124, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20126, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20127, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20128, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20131, null, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20133, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000014, 1, 80012, 20136, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
--
-- Performance Bond (endosos)
--
DELETE FROM sgt_subtabs_det s WHERE s.csubtabla = 9000015 AND s.ccla1 = 80012;
--
insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 10000, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 10102, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 10106, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 10109, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 10111, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 10134, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 10135, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20000, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20101, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20103, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20104, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20105, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20107, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20108, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20112, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20115, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20116, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20117, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20118, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20122, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20123, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20124, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20125, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20126, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20127, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20128, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20130, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20131, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20133, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20134, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20135, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000015, 1, 80012, 20136, null, null, null, null, null, null, 7000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
--
COMMIT;
--
EXCEPTION
   WHEN OTHERS THEN
   dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/

