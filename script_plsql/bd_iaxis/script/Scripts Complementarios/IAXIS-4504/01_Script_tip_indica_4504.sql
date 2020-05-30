--
Delete from SIN_DET_CAUSA_MOTIVO where SCAUMOT = 59880593;
--
insert into SIN_DET_CAUSA_MOTIVO (SCAUMOT, CTIPDES, CMODFIS, CUSUALT, FALTA, CUSUMOD, FMODIFI, CPAGAUT)
values (59880593, 0, 0, 'AXIS_CONF', to_date('04-08-2016 18:50:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0);

insert into SIN_DET_CAUSA_MOTIVO (SCAUMOT, CTIPDES, CMODFIS, CUSUALT, FALTA, CUSUMOD, FMODIFI, CPAGAUT)
values (59880593, 1, 0, 'AXIS_CONF', to_date('04-08-2016 18:50:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0);

insert into SIN_DET_CAUSA_MOTIVO (SCAUMOT, CTIPDES, CMODFIS, CUSUALT, FALTA, CUSUMOD, FMODIFI, CPAGAUT)
values (59880593, 5, 0, 'AXIS', to_date('28-04-2017 12:01:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0);

insert into SIN_DET_CAUSA_MOTIVO (SCAUMOT, CTIPDES, CMODFIS, CUSUALT, FALTA, CUSUMOD, FMODIFI, CPAGAUT)
values (59880593, 6, 0, 'AXIS', to_date('28-04-2017 12:01:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0);

insert into SIN_DET_CAUSA_MOTIVO (SCAUMOT, CTIPDES, CMODFIS, CUSUALT, FALTA, CUSUMOD, FMODIFI, CPAGAUT)
values (59880593, 53, 0, 'AXIS_CONF', to_date('04-08-2016 18:50:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0);
--
delete from tipos_indicadores where CTIPIND = 691;
delete from tipos_indicadores_det where CTIPIND = 691;
--
insert into tipos_indicadores (CTIPIND, TINDICA, CAREA, CTIPREG, CIMPRET, CCINDID, CINDSAP, FFALTA, FBAJA, CUSUALTA, CUSUMOD, CTIPCOAREA)
values (691, '19% - Directo Comisiones (R.Común)', 3, 1, 1, 'J1', null, to_date('01-01-2017', 'dd-mm-yyyy'), null, 'AXIS', null, null);
--
insert into tipos_indicadores_det (CTIPIND, NDETALL, PORCENT, CCLAING, IBASMIN, CPOSTAL, FVIGOR, FALTA, CUSUALTA)
values (691, 1, 19, 'S', 1, null, to_date('01-01-2017', 'dd-mm-yyyy'), to_date('18-12-2017 09:59:58', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS');
--
commit;