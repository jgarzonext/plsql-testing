---> DELETE
-- DET_LANZAR_INFORMES
delete det_lanzar_informes d where d.cmap = 'PreValMovResSiniestros';
-- CFG_LANZAR_INFORMES_PARAMS
delete cfg_lanzar_informes_params d where d.cmap = 'PreValMovResSiniestros';
-- CFG_LANZAS_INFORME
delete cfg_lanzar_informes d where d.cmap = 'PreValMovResSiniestros';
---> INSERT
-- CFG_LANZAR_INFORMES_PARAMS
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'PreValMovResSiniestros', 'GENERAL', 0, 'GENERAL', 'PSPROCES', 13, 9000493, 2, 1, null);
-- DET_LANZAR_INFORMES
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'PreValMovResSiniestros', 1, 'Pre-validador Movimientos de reserva.', 'PreValMovResSiniestros.jasper');
--
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'PreValMovResSiniestros', 2, 'Pre-validador Movimientos de reserva.', 'PreValMovResSiniestros.jasper');
--
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'PreValMovResSiniestros', 8, 'Pre-validador Movimientos de reserva.', 'PreValMovResSiniestros.jasper');
-- DET_LANZAR_INFORMES
insert into cfg_lanzar_informes ( cempres, cform, cmap, tevento, sproduc, slitera, lparams, genera_report, ccfgform, 
                                  lexport, ctipo, cgenrec, carea)
values (24,'AXISLIST003','PreValMovResSiniestros','GENERAL',0,89907107,null,1,'GENERAL','XLSX',1,0,9);
commit
/
