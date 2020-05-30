/* Formatted on 11/03/2019 11:00*/
/* **************************** 11/03/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Este script agrega el proceso de carga "Carga Score Canales"
IAXIS-2016         11/03/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
delete from cfg_files where cempres = 24 and cproceso = 229;
--
insert into cfg_files (CEMPRES, CPROCESO, TDESTINO, TDESTINO_BBDD, CDESCRIP, TPROCESO, TPANTALLA, CACTIVO, TTABLA, CPARA_ERROR, CBORRA_FICH, CBUSCA_HOST, CFORMATO_DECIMALES, CTABLAS, CJOB, CDEBUG, NREGMASIVO)
values (24, 229, '/app/iaxis12c/tabext', 'TABEXT', 89906236, 'PAC_CARGAS_CONF.f_eje_carga_score_canales', 'AXISINT001', 1, 'SCORE_CANALES', 0, 0, 0, 0, 'POL', null, 99, 1);
--
COMMIT;

