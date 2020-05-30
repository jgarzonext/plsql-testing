-- Configuration Script

insert into AXIS_CODLITERALES(slitera, clitera)
values(89906277,3);

insert into axis_literales(cidioma, slitera, tlitera)
values(8,89906277,'Cargue de reserva - Informe de Comite');


insert into cfg_files (CEMPRES, CPROCESO, TDESTINO, TDESTINO_BBDD, CDESCRIP, TPROCESO, TPANTALLA, CACTIVO, TTABLA, CPARA_ERROR, CBORRA_FICH, CBUSCA_HOST, CFORMATO_DECIMALES, CTABLAS, CJOB, CDEBUG, NREGMASIVO)
values (24, 405, '/app/iaxis12c/tabext', 'TABEXT', 89906277, 'pac_cargas_generico.F_EJECUTAR_CARGA_INFORME', 'AXISINT001', 1, 'DATOS_INFORME_COMITE', 0, 0, 0, 0, 'POL', null, 99, 1);

commit;

/