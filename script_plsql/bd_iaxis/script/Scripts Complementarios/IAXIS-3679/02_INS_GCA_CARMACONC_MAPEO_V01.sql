-- Borra mapeo
delete gca_cargaconc_mapeo;
-- Inserta mapeo
insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 108, 'TO_NUMBER(TRIM(DECODE(campo14,CHR(39)||0||CHR(39),campo15,campo14)))', 'IMOVIMI_MONCIA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'campo19', 'ITOTALR_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'campo08', 'NPOLIZA_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'campo18', 'NMADUREZ_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'campo02', 'TNOMCLI_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(1, campo10), null)', 'CAGENTE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(2, campo10), null)', 'NNUMIDECLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(3, campo10), null)', 'TNOMCLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(4, campo10), null)', 'NPOLIZA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(5, campo10), null)', 'NCERTIF', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(6, campo10), null)', 'NRECIBO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(7, campo10), null)', 'NMADUREZ', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(8, campo10), null)', 'ITOTALR', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(9, campo10), null)', 'ICOMISION', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(10, campo10), null)', 'CMONEDA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(11, campo10), null)', 'COUTSOURCING', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, '0', 'CREPETIDO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCE'',campo08,campo10,campo19), null)', 'CCRUCE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCEDET'',campo08,campo10,campo19), null)', 'CCRUCEDET', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADO'',campo08,campo10,campo19), null)', 'CESTADO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'campo07', 'NRECIBO_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'campo03', 'NPOLIZA_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'campo12', 'ITOTALR_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'campo11', 'TNOMCLI_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'campo15', 'NMADUREZ_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(1, campo07), null)', 'CAGENTE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(2, campo07), null)', 'NNUMIDECLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(3, campo07), null)', 'TNOMCLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(4, campo07), null)', 'NPOLIZA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(5, campo07), null)', 'NCERTIF', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(6, campo07), null)', 'NRECIBO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(7, campo07), null)', 'NMADUREZ', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(8, campo07), null)', 'ITOTALR', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(9, campo07), null)', 'ICOMISION', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(10, campo07), null)', 'CMONEDA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(11, campo07), null)', 'COUTSOURCING', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, '0', 'CREPETIDO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCE'',campo03, campo07, campo12 ), null)', 'CCRUCE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCEDET'',campo03, campo07, campo12 ), null)', 'CCRUCEDET', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADOI'',campo03, campo07, campo12 ), null)', 'CESTADOI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADO'',campo03, campo07, campo12 ), null)', 'CESTADO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'campo15', 'NRECIBO_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'campo08', 'NPOLIZA_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'campo11', 'ITOTALR_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'campo04', 'TNOMCLI_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(1, campo15), null)', 'CAGENTE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(2, campo15), null)', 'NNUMIDECLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(3, campo15), null)', 'TNOMCLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(4, campo15), null)', 'NPOLIZA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(5, campo15), null)', 'NCERTIF', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(6, campo15), null)', 'NRECIBO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(7, campo15), null)', 'NMADUREZ', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(8, campo15), null)', 'ITOTALR', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(9, campo15), null)', 'ICOMISION', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(10, campo15), null)', 'CMONEDA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(11, campo15), null)', 'COUTSOURCING', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, '0', 'CREPETIDO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCE'',campo08, campo15, campo11 ), null)', 'CCRUCE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCEDET'',campo08, campo15, campo11 ), null)', 'CCRUCEDET', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADOI'',campo08, campo15, campo11 ), null)', 'CESTADOI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 103, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADO'',campo08, campo15, campo11 ), null)', 'CESTADO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'campo14', 'NRECIBO_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'campo11', 'NPOLIZA_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'campo03', 'TNOMCLI_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'campo20', 'ITOTALR_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(1, campo14), null)', 'CAGENTE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(2, campo14), null)', 'NNUMIDECLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(3, campo14), null)', 'TNOMCLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(4, campo14), null)', 'NPOLIZA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(5, campo14), null)', 'NCERTIF', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(6, campo14), null)', 'NRECIBO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(7, campo14), null)', 'NMADUREZ', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(8, campo14), null)', 'ITOTALR', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(9, campo14), null)', 'ICOMISION', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(10, campo14), null)', 'CMONEDA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(11, campo14), null)', 'COUTSOURCING', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, '0', 'CREPETIDO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCE'',campo11, campo14, campo20 ), null)', 'CCRUCE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCEDET'',campo11, campo14, campo20 ), null)', 'CCRUCEDET', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADOI'',campo11, campo14, campo20 ), null)', 'CESTADOI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADO'',campo11, campo14, campo20 ), null)', 'CESTADO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'campo06', 'NRECIBO_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'campo04', 'NPOLIZA_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'campo14', 'TNOMCLI_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(1, campo06), null)', 'CAGENTE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(2, campo14), null)', 'NNUMIDECLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(3, campo14), null)', 'TNOMCLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(4, campo06), null)', 'NPOLIZA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(5, campo14), null)', 'NCERTIF', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(6, campo06), null)', 'NRECIBO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(7, campo06), null)', 'NMADUREZ', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(8, campo06), null)', 'ITOTALR', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(9, campo06), null)', 'ICOMISION', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(10, campo06), null)', 'CMONEDA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(11, campo06), null)', 'COUTSOURCING', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, '0', 'CREPETIDO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCE'',campo04, campo06, campo12 ), null)', 'CCRUCE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCEDET'',campo04, campo06, campo12 ), null)', 'CCRUCEDET', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADOI'',campo04, campo06, campo12 ), null)', 'CESTADOI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADO'',campo04, campo06, campo12 ), null)', 'CESTADO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'campo09', 'NRECIBO_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'campo07', 'NPOLIZA_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'campo13', 'ITOTALR_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'campo02', 'TNOMCLI_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'campo16', 'NMADUREZ_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(1, campo09), null)', 'CAGENTE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(2, campo09), null)', 'NNUMIDECLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(3, campo09), null)', 'TNOMCLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(4, campo09), null)', 'NPOLIZA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(5, campo09), null)', 'NCERTIF', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(6, campo09), null)', 'NRECIBO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(7, campo09), null)', 'NMADUREZ', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(8, campo09), null)', 'ITOTALR', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(9, campo09), null)', 'ICOMISION', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(10, campo09), null)', 'CMONEDA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(11, campo09), null)', 'COUTSOURCING', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, '0', 'CREPETIDO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCE'',campo07, campo09, campo13 ), null)', 'CCRUCE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCEDET'',campo07, campo09, campo13 ), null)', 'CCRUCEDET', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADOI'',campo07, campo09, campo13 ), null)', 'CESTADOI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADO'',campo07, campo09, campo13 ), null)', 'CESTADO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'campo11', 'NRECIBO_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'campo09', 'NPOLIZA_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'campo19', 'ITOTALR_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'campo07', 'TNOMCLI_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(1, campo11), null)', 'CAGENTE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(2, campo11), null)', 'NNUMIDECLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(3, campo11), null)', 'TNOMCLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(4, campo11), null)', 'NPOLIZA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(5, campo11), null)', 'NCERTIF', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(6, campo11), null)', 'NRECIBO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(7, campo11), null)', 'NMADUREZ', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(8, campo11), null)', 'ITOTALR', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(9, campo11), null)', 'ICOMISION', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(10, campo11), null)', 'CMONEDA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(11, campo11), null)', 'COUTSOURCING', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, '0', 'CREPETIDO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCE'',campo09, campo11, campo19 ), null)', 'CCRUCE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCEDET'',campo09, campo11, campo19 ), null)', 'CCRUCEDET', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADOI'',campo09, campo11, campo19 ), null)', 'CESTADOI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADO'',campo09, campo11, campo19 ), null)', 'CESTADO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'campo03', 'NRECIBO_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'campo01', 'NPOLIZA_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'campo07', 'TNOMCLI_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'campo06', 'NMADUREZ_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'campo11', 'ITOTALR_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(1, campo03), null)', 'CAGENTE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(2, campo03), null)', 'NNUMIDECLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(3, campo03), null)', 'TNOMCLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(4, campo03), null)', 'NPOLIZA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(5, campo03), null)', 'NCERTIF', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(6, campo03), null)', 'NRECIBO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(7, campo03), null)', 'NMADUREZ', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(8, campo03), null)', 'ITOTALR', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(9, campo03), null)', 'ICOMISION', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_datos_recibo_t(10, campo03), null)', 'CMONEDA', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_datos_recibo_n(11, campo03), null)', 'COUTSOURCING', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, '0', 'CREPETIDO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCE'',campo01, campo03, campo11 ), null)', 'CCRUCE', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_conciliacion(''CCRUCEDET'',campo01, campo03, campo11 ), null)', 'CCRUCEDET', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADOI'',campo01, campo03, campo11 ), null)', 'CESTADOI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADO'',campo01, campo03, campo11 ), null)', 'CESTADO', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 108, 'campo06', 'NNUMIDECLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 108, 'campo09', 'TNOMCLI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 108, 'campo06', 'NDOCSAP', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 108, 'TO_DATE(campo10,''DD/MM/YYYY'')', 'FDOC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 108, 'TO_DATE(campo11,''DD/MM/YYYY'')', 'FCONTAB', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 108, 'campo08', 'CSUCURSAL', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'campo01', 'NNUMIDE_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'campo10', 'NRECIBO_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'campo21', 'VRSALDO_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'nvl(pac_cargas_conf.f_get_conciliacion(''CESTADOI'',campo08,campo10,campo19), null)', 'CESTADOI', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'campo05', 'NCERTIF_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 101, 'campo09', 'NCERTIF_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 102, 'campo08', 'NNUMIDE_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'campo02', 'NNUMIDE_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'campo12', 'NCERTIF_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'campo01', 'NNUMIDE_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 104, 'campo21', 'NMADUREZ_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'campo05', 'NCERTIF_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 105, 'campo12', 'ITOTALR_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 106, 'campo08', 'NCERTIF_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'campo06', 'NNUMIDE_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'campo10', 'NCERTIF_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 107, 'campo17', 'NMADUREZ_FIC', null, null, null, null, null);

insert into gca_cargaconc_mapeo (CEMPRES, CFICHERO, TCOLORI, TCOLDEST, TCOLCIA, FBAJA, CUSUALT, CUSUMOD, FMODIFI)
values (24, 109, 'campo02', 'NCERTIF_FIC', null, null, null, null, null);
-- Se elimina la cabecera de las conciliaciones
delete GCA_CONCILIACIONCAB;
-- Se elimina el detalle de las conciliaciones
delete GCA_CONCILIACIONDET;
commit
/
