delete from DESCUENTA where CCUENTA  in (413705);
Insert into DESCUENTA (CCUENTA,TDESCRI,TCONDIC,SLITERA,CGROUP) values (413705,'LIBERACION',' pac_anulacion.f_anulada_al_emitir(sseguro)=0',null,2);

delete from DETMODCONTA_INTERF where nlinea  in (1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531);
delete from DETMODCONTA where nlinea  in (1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1500,null,null,'CONSTITUCION RESERVA AÑO ACTUAL EN PESOS COP :CUMPLIMIENTO ','514605',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1501,null,null,'CONSTITUCION RESERVA AÑO ACTUAL EN PESOS COP :CUMPLIMIENTO ','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1502,null,null,'AUMENTO DE RESERVA AÑO ACTUAL EN PESOS COP:CUMPLIMIENTO ','514605',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1503,null,null,'AUMENTO DE RESERVA AÑO ACTUAL EN PESOS COP:CUMPLIMIENTO ','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1504,null,null,'DISMINUCION DE RESERVA AÑO ACTUAL EN PESOS COP:CUMPLIMIENTO ','514605',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1505,null,null,'DISMINUCION DE RESERVA AÑO ACTUAL EN PESOS COP:CUMPLIMIENTO ','265005',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1506,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR  COP :CUMPLIMIENTO ','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1507,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR  COP :CUMPLIMIENTO ','413705',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1508,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR CON DISMINUCION DE RESERVA AÑO ACTUAL COP:CUMPLIMIENTO ','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1509,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR CON DISMINUCION DE RESERVA AÑO ACTUAL COP:CUMPLIMIENTO ','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1510,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR CON DISMINUCION DE RESERVA AÑO ACTUAL COP:CUMPLIMIENTO ','514605',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1511,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR CON DISMINUCION DE RESERVA AÑO ACTUAL COP:CUMPLIMIENTO ','413705',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1512,null,null,'LIBERACION DE RESERVA AÑO ACTUAL  COP :CUMPLIMIENTO ','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1513,null,null,'LIBERACION DE RESERVA AÑO ACTUAL  COP :CUMPLIMIENTO ','514605',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1514,null,null,'CONSTITUCION DE RESERVA AÑO ACTUAL EN PESOS CON PRIORIDAD EN PESOS  COP:CUMPLIMIENTO ','514605',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1515,null,null,'CONSTITUCION DE RESERVA AÑO ACTUAL EN PESOS CON PRIORIDAD EN PESOS  COP:CUMPLIMIENTO ','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1516,null,null,'CONSTITUCION RESERVA AÑO ACTUAL EN PESOS COP :RESPONSABILIDAD CIVIL','514605',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1517,null,null,'CONSTITUCION RESERVA AÑO ACTUAL EN PESOS COP :RESPONSABILIDAD CIVIL','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1518,null,null,'AUMENTO DE RESERVA AÑO ACTUAL EN PESOS COP:RESPONSABILIDAD CIVIL','514605',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1519,null,null,'AUMENTO DE RESERVA AÑO ACTUAL EN PESOS COP:RESPONSABILIDAD CIVIL','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1520,null,null,'DISMINUCION DE RESERVA AÑO ACTUAL EN PESOS COP:RESPONSABILIDAD CIVIL','514605',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1521,null,null,'DISMINUCION DE RESERVA AÑO ACTUAL EN PESOS COP:RESPONSABILIDAD CIVIL','265005',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1522,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR  COP :RESPONSABILIDAD CIVIL','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1523,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR  COP :RESPONSABILIDAD CIVIL','413705',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1524,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR CON DISMINUCION DE RESERVA AÑO ACTUAL COP:RESPONSABILIDAD CIVIL','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1525,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR CON DISMINUCION DE RESERVA AÑO ACTUAL COP:RESPONSABILIDAD CIVIL','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1526,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR CON DISMINUCION DE RESERVA AÑO ACTUAL COP:RESPONSABILIDAD CIVIL','514605',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1527,null,null,'LIBERACION DE RESERVA AÑO ANTERIOR CON DISMINUCION DE RESERVA AÑO ACTUAL COP:RESPONSABILIDAD CIVIL','413705',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1528,null,null,'LIBERACION DE RESERVA AÑO ACTUAL  COP :RESPONSABILIDAD CIVIL','265005',null,null,null,'H',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1529,null,null,'LIBERACION DE RESERVA AÑO ACTUAL  COP :RESPONSABILIDAD CIVIL','514605',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1530,null,null,'CONSTITUCION DE RESERVA AÑO ACTUAL EN PESOS CON PRIORIDAD EN PESOS  COP:RESPONSABILIDAD CIVIL','514605',null,null,null,'D',null);
Insert into DETMODCONTA (SMODCON,CEMPRES,CPROGRA,NLINEA,CCLAVEP,CCLAVEN,TDESCRI,CCUENTA,CCOMPAN,CME,CBAJA,TCUENTA,TSCUADRE) values (1,24,null,1531,null,null,'CONSTITUCION DE RESERVA AÑO ACTUAL EN PESOS CON PRIORIDAD EN PESOS  COP:RESPONSABILIDAD CIVIL','265005',null,null,null,'H',null);
insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1500, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(strc.iconstres_moncia,0)   importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc ,sin_tramita_reserva str
     ,sin_siniestro ssn , seguros sg ,tomadores t
WHERE sg.sseguro = ssn.sseguro
  and strc.nsinies = ssn.nsinies
  and strc.nsinies = str.nsinies
  and strc.nmovres = str.nmovres
  and strc.nsinies = #nsinies
  and strc.idres = #idres
  and strc.nmovres = #nmovres
  and strc.nmovresdet = #ndetmovres  
  and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1501, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(strc.iconstres_moncia,0)  importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1502, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(strc.iaumenres_moncia,0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres = #nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1503, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(strc.iaumenres_moncia,0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1504, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(strc.idismires_moncia,0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1505, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(strc.idismires_moncia,0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1506, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(strc.iliberares_moncia,0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1507, 2, '413705', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(strc.iliberares_moncia,0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1508, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1509, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(strc.idismires_moncia,0) + nvl(strc.iliberares_moncia,0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1510, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(strc.idismires_moncia importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1511, 2, '413705', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(strc.iliberares_moncia , 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1512, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1513, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1514, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1515, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1516, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1517, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1518, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1519, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1520, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1521, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1522, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1523, 2, '413705', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1524, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1525, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1526, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1527, 2, '413705', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1528, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1529, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1530, 2, '514605', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);

insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 1531, 2, '265005', 'SELECT substr(#cuenta,-4) coletilla, ''#descrip'' descrip,
nvl(str.ireserva_moncia,str.ireserva) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(0,0), 15, ''0'')
|| LPAD(NVL(0,0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,sg.cagente,null,null),null,null,null),0), 12, ''0'') 
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(SG.SSEGURO, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,TRUNC(f_sysdate) fecha
from sin_tramita_reservadet strc
,sin_tramita_reserva str
,sin_siniestro ssn
, seguros sg
,tomadores t
WHERE
sg.sseguro=ssn.sseguro
and strc.nsinies=ssn.nsinies
and strc.nsinies= str.nsinies  and str.idres = strc.idres and strc.nmovres=str.nmovres
and strc.nsinies= #nsinies and strc.idres = #idres  and strc.nmovresdet = #ndetmovres and strc.nmovres=#nmovres
and t.sseguro    =   sg.sseguro', '1', null, 1);
--
COMMIT;
--
/