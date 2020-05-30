/* Formatted on 13/08/2019 17:00*/
/* **************************** 13/08/2019 17:00 **********************************************************************
Versin           Descripcin
01.               -Se actualizan y revalidan los registros de primas mnimas para nueva produccin.
                  -Se eliminan registros basura
02.               -Se eliminan los productos de CA.   
03.               -Se actualizan y revalidan los registros de primas mnimas para nueva produccin.
                  -Se insertan primas mínimas por actividad.               
IAXIS-3979        13/08/2019 Daniel Rodrguez
***********************************************************************************************************************/

BEGIN
--
DELETE FROM sgt_subtabs_det s WHERE s.cempres = 24 AND s.csubtabla = 8000011 AND s.cversubt = 2 AND s.ccla1 IN (80001,80002,80003,80004,80005,80006,80007,80008,80009,80010,80011,80012);
--
insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10109, 0, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10111, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10134, 0, null, null, null, null, null, 30000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10135, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20101, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20103, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20104, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20105, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20107, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20108, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20112, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20115, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20116, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20117, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20118, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20122, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20123, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20124, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20126, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20127, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20128, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20130, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20131, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20133, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20136, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10102, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10106, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10109, 1, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10111, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10134, 1, null, null, null, null, null, 30000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10135, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20101, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20103, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20104, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20105, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20107, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20108, 1, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20112, 1, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20115, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20116, 1, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20117, 1, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20118, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20122, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20123, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20124, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20126, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20127, 1, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20128, 1, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20130, 1, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20131, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20133, 1, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20136, 1, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10102, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10106, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10109, 2, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10111, 2, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10134, 2, null, null, null, null, null, 30000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10135, 2, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20101, 2, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20103, 2, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20104, 2, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20105, 2, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20107, 2, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20108, 2, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20112, 2, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20115, 2, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20116, 2, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20117, 2, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20118, 2, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20122, 2, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20123, 2, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20124, 2, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20126, 2, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20127, 2, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20128, 2, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20130, 2, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20131, 2, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20133, 2, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20136, 2, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10102, 2, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10106, 2, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10109, 3, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10111, 3, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10134, 3, null, null, null, null, null, 30000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10135, 3, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20101, 3, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20103, 3, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20104, 3, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20105, 3, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20107, 3, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20108, 3, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20112, 3, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20115, 3, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20116, 3, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20117, 3, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20118, 3, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20122, 3, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20123, 3, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20124, 3, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20126, 3, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20127, 3, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20128, 3, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20130, 3, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20131, 3, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20133, 3, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 20136, 3, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10102, 3, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80001, 10106, 3, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10102, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10106, 0, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10109, 0, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10111, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10134, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10135, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20101, 0, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20103, 0, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20104, 0, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20105, 0, null, null, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20107, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20108, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20112, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20115, 0, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20116, 0, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20117, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20118, 0, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20122, 0, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20123, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20124, 0, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20126, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20127, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20128, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20130, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20131, 0, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20133, 0, null, null, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20136, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10102, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10106, 1, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10109, 1, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10111, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10134, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10135, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20101, 1, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20103, 1, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20104, 1, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20105, 1, null, null, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20107, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20108, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20112, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20115, 1, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20116, 1, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20117, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20118, 1, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20122, 1, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20123, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20124, 1, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20126, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20127, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20128, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20130, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20131, 1, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20133, 1, null, null, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20136, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10102, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10106, 2, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10109, 2, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10111, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10134, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10135, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20101, 2, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20103, 2, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20104, 2, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20105, 2, null, null, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20107, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20108, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20112, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20115, 2, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20116, 2, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20117, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20118, 2, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20122, 2, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20123, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20124, 2, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20126, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20127, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20128, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20130, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20131, 2, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20133, 2, null, null, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20136, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10102, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10106, 3, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10109, 3, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10111, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10134, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 10135, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20101, 3, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20103, 3, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20104, 3, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20105, 3, null, null, null, null, null, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20107, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20108, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20112, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20115, 3, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20116, 3, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20117, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20118, 3, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20122, 3, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20123, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20124, 3, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20126, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20127, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20128, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20130, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20131, 3, null, null, null, null, null, 11, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20133, 3, null, null, null, null, null, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80002, 20136, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10102, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10106, 0, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10109, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10111, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10134, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10135, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20101, 0, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20103, 0, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20104, 0, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20105, 0, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20107, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20108, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20112, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20115, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20116, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20117, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20118, 0, null, null, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20122, 0, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20123, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20124, 0, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20126, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20127, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20128, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20130, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20131, 0, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20133, 0, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20136, 0, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10102, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10106, 1, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10109, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10111, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10134, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10135, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20101, 1, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20103, 1, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20104, 1, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20105, 1, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20107, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20108, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20112, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20115, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20116, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20117, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20118, 1, null, null, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20122, 1, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20123, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20124, 1, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20126, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20127, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20128, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20130, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20131, 1, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20133, 1, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20136, 1, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10102, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10106, 2, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10109, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10111, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10134, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10135, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20101, 2, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20103, 2, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20104, 2, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20105, 2, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20107, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20108, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20112, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20115, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20116, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20117, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20118, 2, null, null, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20122, 2, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20123, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20124, 2, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20126, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20127, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20128, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20130, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20131, 2, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20133, 2, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20136, 2, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10102, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10106, 3, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10109, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10111, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10134, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 10135, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20101, 3, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20103, 3, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20104, 3, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20105, 3, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20107, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20108, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20112, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20115, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20116, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20117, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20118, 3, null, null, null, null, null, 6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20122, 3, null, null, null, null, null, 9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20123, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20124, 3, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20126, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20127, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20128, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20130, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20131, 3, null, null, null, null, null, 7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20133, 3, null, null, null, null, null, 5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80003, 20136, 3, null, null, null, null, null, 4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 10102, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 10106, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 10109, 0, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 10111, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 10134, 0, null, null, null, null, null, 30000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 10135, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20101, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20103, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20104, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20105, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20107, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20108, 1, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20112, 1, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20115, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20116, 1, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20117, 1, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20118, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20122, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20123, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20124, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20126, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20127, 1, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20128, 1, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20130, 1, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20131, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20133, 1, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 20136, 1, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 10135, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20101, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20103, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20104, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20105, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20107, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20108, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20112, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20115, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20116, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20117, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20118, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20122, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20123, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20124, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20126, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20127, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20128, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20130, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20131, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20133, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80007, 20136, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 10102, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 10106, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 10109, 0, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 10111, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 10134, 0, null, null, null, null, null, 30000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 10135, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20101, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20103, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20104, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20105, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20107, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20108, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20112, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20115, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20116, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20117, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20118, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20122, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20123, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20124, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20126, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20127, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20128, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20130, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20131, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20133, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80009, 20136, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 10102, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 10106, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 10109, 0, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 10111, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 10134, 0, null, null, null, null, null, 30000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 10135, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20101, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20103, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20104, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20105, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20107, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20108, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20112, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20115, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20116, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20117, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20118, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20122, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20123, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20124, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20126, 0, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20127, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20128, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20130, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20131, 0, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20133, 0, null, null, null, null, null, 15000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80011, 20136, 0, null, null, null, null, null, 10000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 10102, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 10106, 1, null, null, null, null, null, 25000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 10109, 1, null, null, null, null, null, 12000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 10111, 1, null, null, null, null, null, 20000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into sgt_subtabs_det (SDETALLE, CEMPRES, CSUBTABLA, CVERSUBT, CCLA1, CCLA2, CCLA3, CCLA4, CCLA5, CCLA6, CCLA7, CCLA8, NVAL1, NVAL2, NVAL3, NVAL4, NVAL5, NVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, CCLA9, CCLA10, NVAL7, NVAL8, NVAL9, NVAL10)
values (sdetalle_conf.nextval, 24, 8000011, 2, 80012, 10134, 1, null, null, null, null, null, 30000, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
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

