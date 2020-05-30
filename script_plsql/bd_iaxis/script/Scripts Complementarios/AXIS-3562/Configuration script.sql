-- Configuration Script

insert into AXIS_CODLITERALES(slitera, clitera)
values(89906287,3);

insert into AXIS_CODLITERALES(slitera, clitera)
values(89906288,3);


insert into axis_literales(cidioma, slitera, tlitera)
values(8,89906287,'Carga Datos Sarlaf - Juridica');

insert into axis_literales(cidioma, slitera, tlitera)
values(8,89906288,'Carga Datos Sarlaf - Natural');


insert into cfg_files (CEMPRES, CPROCESO, TDESTINO, TDESTINO_BBDD, CDESCRIP, TPROCESO, TPANTALLA, CACTIVO, TTABLA, CPARA_ERROR, CBORRA_FICH, CBUSCA_HOST, CFORMATO_DECIMALES, CTABLAS, CJOB, CDEBUG, NREGMASIVO)
values (24, 402, '/app/iaxis12c/tabext', 'TABEXT', 89906287, 'PAC_CARGAS_CONF.F_CARGA_DATSARLAF_J', 'AXISINT001', 1, 'DATOS_SARLAF_J', 0, 0, 0, 0, 'POL', null, 99, 1);

insert into cfg_files (CEMPRES, CPROCESO, TDESTINO, TDESTINO_BBDD, CDESCRIP, TPROCESO, TPANTALLA, CACTIVO, TTABLA, CPARA_ERROR, CBORRA_FICH, CBUSCA_HOST, CFORMATO_DECIMALES, CTABLAS, CJOB, CDEBUG, NREGMASIVO)
values (24, 403, '/app/iaxis12c/tabext', 'TABEXT', 89906288, 'PAC_CARGAS_CONF.F_CARGA_DATSARLAF_N', 'AXISINT001', 1, 'DATOS_SARLAF_N', 0, 0, 0, 0, 'POL', null, 99, 1);

commit;
/