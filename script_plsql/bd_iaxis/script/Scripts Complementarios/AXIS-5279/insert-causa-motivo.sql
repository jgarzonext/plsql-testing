DECLARE 
 maximo NUMBER;

BEGIN
select MAX(SCAUMOT)+1 INTO maximo from sin_causa_motivo;

DELETE   sin_causa_motivo WHERE SCAUMOT=maximo AND CCAUSIN=9056;
insert into sin_causa_motivo (SCAUMOT, CCAUSIN, CMOTSIN, CPAGAUT, CMOTMOV, CMOTFIN, CMOVIMI, CUSUALT, FALTA, CUSUMOD, FMODIFI, CDESAUT, CESTTRA, CSUBTRA, CESTPAG, CFORPAG, CESTVAL, CULTPAG, CMOTRCZ, CTIPSIN, CCONPAG, CCAUIND, CANUREHA)
values (maximo, 9056, 0, 0, null, null, null, 'AXIS_CONF', to_date('04-08-2016 18:49:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, null, null, null, null, null, null, null, null, 191, 7, null);

DELETE   sin_gar_causa_motivo WHERE SCAUMOT=maximo  AND SPRODUC=80011 AND CGARANT=7017;
DELETE   sin_gar_causa_motivo WHERE SCAUMOT=maximo  AND SPRODUC=80011 AND CGARANT=7018;
insert into sin_gar_causa_motivo (SCAUMOT, SPRODUC, CACTIVI, CGARANT, CTRAMIT, CUSUALT, FALTA, CUSUMOD, FMODIFI, ICOSMIN, ICOSMAX)
values (maximo, 80011, 0, 7017, 0, 'AXIS_CONF', to_date('04-08-2016 18:49:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into sin_gar_causa_motivo (SCAUMOT, SPRODUC, CACTIVI, CGARANT, CTRAMIT, CUSUALT, FALTA, CUSUMOD, FMODIFI, ICOSMIN, ICOSMAX)
values (maximo, 80011, 0, 7018, 0, 'AXIS_CONF', to_date('04-08-2016 18:49:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
COMMIT;
END;