/* Formatted on 15/08/2019 15:00*/
/* **************************** 15/08/2019 15:00 **********************************************************************
Versión           Descripción
01.               -Se actualizan y revalidan los registros de primas mínimas para endosos (RCE).
IAXIS-5031        15/08/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
DELETE FROM sgt_subtabs_det s WHERE s.cempres = 24 AND s.csubtabla = 9000008 AND s.cversubt = 1 AND s.ccla1 IN (80038, 80039, 80040, 80044, 8062, 8063, 8064);
--
insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 10102, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20112, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 10109, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 10111, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 10134, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 10135, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20107, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20108, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20117, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20123, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20126, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20127, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20136, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 10102, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 10106, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 10109, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 10111, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 10134, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 10135, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20101, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20103, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20104, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20105, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20107, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 250000, 20108, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20112, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20115, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20116, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20117, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20118, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20122, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20123, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20124, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20126, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 250000, 20127, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 250000, 20128, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 250000, 20130, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20131, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 5000, 20133, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 1000, 250000, 20136, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 10109, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20112, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20116, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20117, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 10111, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20103, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20104, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20107, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20115, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20118, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20122, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20123, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20126, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 10102, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 10106, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 10135, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20101, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20105, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20124, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20131, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 10134, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 10102, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 10109, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 10111, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 10134, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 10135, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20107, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20108, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20112, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20117, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20123, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20126, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20127, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20128, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20130, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, -2000, 1000, 20136, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 10102, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 10106, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 10109, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 10111, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 10134, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 10135, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20101, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20103, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20104, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20105, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20107, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 250000, 20108, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20112, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20115, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20116, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20117, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20118, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20122, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20123, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20124, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20126, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 250000, 20127, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 250000, 20128, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 250000, 20130, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20131, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 5000, 20133, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 1000, 250000, 20136, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 10109, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20112, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20116, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20117, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20133, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 10111, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20103, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20104, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20107, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20115, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20118, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20122, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20123, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20126, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 10102, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 10106, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 10135, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20101, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20105, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20124, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 20131, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 4, 5000, 250000, 10134, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 10102, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 10109, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 10111, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 10134, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 10135, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20107, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20108, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20112, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20117, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20123, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20126, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20127, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20128, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20130, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, -2000, 1000, 20136, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 10102, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 10106, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 10109, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 10111, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 10134, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 10135, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20101, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20103, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20104, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20105, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20107, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 500000, 20108, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20112, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20115, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20116, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20117, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20118, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20122, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20123, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20124, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20126, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 500000, 20127, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 500000, 20128, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 500000, 20130, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20131, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 5000, 20133, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 1000, 500000, 20136, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 10109, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20112, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20116, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20117, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20133, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 10111, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20103, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20104, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20107, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20115, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20118, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20122, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20123, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20126, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 10102, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 10106, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 10135, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20101, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20105, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20124, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 20131, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20128, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20130, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 5, 5000, 500000, 10134, null, null, null, 500000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, 5000, 250000, 20133, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 10102, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 10109, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 10111, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 10134, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 10135, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20107, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20108, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20112, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20117, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20123, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20126, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20127, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20128, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20130, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, -1, 2, 20136, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 8, 10102, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 11, 10111, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 8, 10134, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 8, 10135, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 7, 20107, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 8, 20108, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 8, 20112, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 7, 20117, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 6, 20123, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 6, 20126, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 8, 20127, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 8, 20128, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 7, 20130, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 8, 20136, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 10106, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 10109, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 20101, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 20103, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 20104, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 20105, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 20115, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 20116, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 20118, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 20122, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 20124, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 20131, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 2, 3, 20133, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 11, 10109, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 6, 20115, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 5, 20116, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 5, 20133, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 11, 20118, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 14, 10106, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 14, 20101, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 14, 20103, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 14, 20104, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 11, 20122, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 11, 20124, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 14, 20131, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 0, 3, 14, 20105, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 10102, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 10109, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 10111, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 10134, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 10135, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20107, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20108, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20112, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20117, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20123, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20126, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20127, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20128, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20130, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, -1, 2, 20136, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 8, 10102, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 11, 10111, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 8, 10134, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 8, 10135, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 7, 20107, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 8, 20108, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 8, 20112, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 7, 20117, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 6, 20123, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 6, 20126, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 8, 20127, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 8, 20128, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 7, 20130, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 8, 20136, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 10106, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 10109, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 20101, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 20103, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 20104, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 20105, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 20115, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 20116, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 20118, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 20122, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 20124, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 20131, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 2, 3, 20133, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 11, 10109, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 6, 20115, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 5, 20116, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 5, 20133, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 11, 20118, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 14, 10106, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 14, 20101, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 14, 20103, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 14, 20104, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 11, 20122, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 11, 20124, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 14, 20131, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80039, 1, 3, 14, 20105, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 10102, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 7, 10109, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 14, 10111, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 10134, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 10135, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 20107, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 20108, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 20112, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 4, 20117, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 20123, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 20126, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 20127, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 20128, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 20130, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 2, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, -1, 5, 20136, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 4, 20115, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 3, 20116, null, null, null, 3, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 6, 20133, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 3, 10106, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 3, 20101, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 3, 20103, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 3, 20104, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 3, 20105, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 7, 20118, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 3, 20122, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 3, 20124, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 2, 3, 20131, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 3, 9, 10106, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 3, 9, 20101, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 3, 9, 20103, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 3, 9, 20104, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 3, 14, 20124, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 3, 9, 20131, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 3, 9, 20105, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 0, 3, 7, 20122, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 10102, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 7, 10109, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 14, 10111, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 10134, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 10135, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 20107, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 20108, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 20112, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 4, 20117, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 20123, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 20126, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 20127, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 20128, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 20130, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 2, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, -1, 5, 20136, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 4, 20115, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 3, 20116, null, null, null, 3, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 6, 20133, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 3, 10106, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 3, 20101, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 3, 20103, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 3, 20104, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 3, 20105, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 7, 20118, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 3, 20122, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 3, 20124, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 2, 3, 20131, null, null, null, 2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 3, 9, 10106, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 3, 9, 20101, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 3, 9, 20103, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 3, 9, 20104, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 3, 14, 20124, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 3, 9, 20131, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 3, 9, 20105, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80040, 1, 3, 7, 20122, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 10102, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 10109, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 10111, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 10134, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 10135, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20107, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20108, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20112, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20117, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20123, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20126, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20127, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20128, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20130, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, -2000, 1000, 20136, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 10102, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 10106, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 10109, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 10111, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 10134, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 10135, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20101, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20103, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20104, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20105, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20107, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20112, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20115, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20116, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20117, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20118, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20122, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20123, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20124, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20126, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20131, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 5000, 20133, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 10000, 20130, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 10000, 20108, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 10000, 20127, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 10000, 20128, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 1000, 10000, 20136, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20115, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20133, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20107, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20117, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20123, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20126, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 10102, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 10134, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 10135, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20112, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20116, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 10106, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 10109, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 10111, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20101, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20103, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20104, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20105, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20118, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20122, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20124, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8062, 0, 5000, 10000, 20131, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 10102, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 10109, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 10111, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 10134, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 10135, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, -2000, 1000, 20136, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 10102, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 10106, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 10109, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 10111, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 10134, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 10135, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20101, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20103, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20104, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20105, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20107, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 20000, 20108, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20112, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20115, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20116, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20117, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20118, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20122, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20123, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20124, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20131, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20133, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 100000, 20130, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 100000, 20108, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 100000, 20127, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 100000, 20128, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 100000, 20136, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20115, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20133, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20107, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20117, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20123, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20126, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 10102, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 10134, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 10135, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20107, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20108, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20112, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20117, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20123, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20126, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20127, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20128, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20130, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, -2000, 1000, 20136, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 10102, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 10106, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 10109, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 10111, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 10134, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 10135, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20101, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20112, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20116, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 10106, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 10109, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 10111, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20101, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20103, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20104, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20105, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20118, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20122, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20124, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 5000, 100000, 20131, null, null, null, 100000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 10102, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 10109, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 10111, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 10134, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 10135, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20107, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20108, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20112, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20117, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20123, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20126, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20127, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20128, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20130, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, -2000, 1000, 20136, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 10102, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 10106, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 10109, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 10111, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 10134, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 10135, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20101, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20103, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20104, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20105, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20103, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20104, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20105, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20107, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20112, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20115, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20116, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20117, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20118, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20122, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20123, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20124, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8063, 0, 1000, 5000, 20126, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20126, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 20000, 20127, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 20000, 20128, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 20000, 20130, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20131, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 5000, 20133, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 1000, 20000, 20136, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 10109, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20112, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20116, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20117, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20133, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 10111, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20103, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20104, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20107, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20115, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20118, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20122, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20123, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20126, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 10102, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 10106, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 10135, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20101, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20105, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20124, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 20131, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 0, 5000, 20000, 10134, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 10102, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 10109, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 10111, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 10134, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 10135, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20107, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20108, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20112, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20117, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20123, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20126, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20127, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20128, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20130, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, -2000, 1000, 20136, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 10102, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 10106, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 10109, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 10111, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 10134, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 10135, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20101, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20103, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20104, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20105, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20107, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 15000, 20108, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20112, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20115, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20116, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20117, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20118, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20122, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20123, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20124, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20126, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 15000, 20127, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 15000, 20128, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 12500, 20130, null, null, null, 12500, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20131, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 5000, 20133, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 1000, 15000, 20136, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 20000, 10109, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 15000, 20112, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 15000, 20116, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 12500, 20117, null, null, null, 12500, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 10000, 20133, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 20000, 10111, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 20000, 20103, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 20000, 20104, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 12500, 20107, null, null, null, 12500, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 10000, 20115, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 20000, 20118, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 20000, 20122, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 12931, 20123, null, null, null, 12931, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 12931, 20126, null, null, null, 12931, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 15000, 10102, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 20000, 10106, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 15000, 10135, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 20000, 20101, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 20000, 20105, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 20000, 20124, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20107, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20112, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20115, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20116, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20117, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20118, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20122, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20123, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20124, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20126, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20131, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 5000, 20133, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 25000, 20130, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 25000, 20108, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 25000, 20127, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 25000, 20128, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 1000, 25000, 20136, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20115, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20133, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20107, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20117, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20123, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20126, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 10102, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 10134, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 10135, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20112, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20116, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 10106, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 10109, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 10111, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20101, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20103, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20104, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20105, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20118, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20122, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20124, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 8064, 0, 5000, 25000, 20131, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 20000, 20131, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80038, 1, 5000, 15000, 10134, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 10102, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 10109, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 10111, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 10134, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 10135, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20107, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20108, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20112, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20117, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20123, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20126, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20127, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20128, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20130, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20133, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, -2000, 1000, 20136, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 10102, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 10106, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 10109, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 10111, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 10134, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 10135, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20101, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20103, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20104, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20105, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20107, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 250000, 20108, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20112, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20115, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20116, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20117, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20118, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20122, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20123, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20124, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20126, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 250000, 20127, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 250000, 20128, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 250000, 20130, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20131, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 5000, 20133, null, null, null, 5000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 1000, 250000, 20136, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 10109, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20112, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20116, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20117, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20133, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 10111, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20103, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20104, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20107, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20115, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20118, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20122, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20123, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20126, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 10102, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 10106, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 10135, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20101, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20105, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20124, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 20131, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 2, 5000, 250000, 10134, null, null, null, 250000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 10102, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 10106, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 10109, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 10111, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 10134, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 10135, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20101, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20103, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20104, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20105, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20107, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20108, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20112, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20115, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20116, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20117, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20118, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20122, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20123, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20124, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20126, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20127, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20128, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20130, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 9000008, 1, 80044, 3, -2000, 1000, 20131, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

--
commit;
EXCEPTION
   WHEN OTHERS THEN
   dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     rollback;
End;
/

