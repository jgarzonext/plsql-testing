-- Configuration Script

insert into AXIS_CODLITERALES(slitera, clitera)
values(89906321,3);

insert into axis_literales(cidioma, slitera, tlitera)
values(8,89906321,'Cargue Masivo - Pagos de Siniestro');

insert into cfg_files (CEMPRES, CPROCESO, TDESTINO, TDESTINO_BBDD, CDESCRIP, TPROCESO, TPANTALLA, CACTIVO, TTABLA, CPARA_ERROR, CBORRA_FICH, CBUSCA_HOST, CFORMATO_DECIMALES, CTABLAS, CJOB, CDEBUG, NREGMASIVO)
values (24, 407, '/app/iaxis12c/tabext', 'TABEXT', 89906321, 'pac_cargas_generico.f_ejecutar_cargue_masivo_job', 'AXISINT001', 1, 'int_carga_generico', 0, 0, 0, 1, 'SIN', 0, 99, 1);

commit;
/