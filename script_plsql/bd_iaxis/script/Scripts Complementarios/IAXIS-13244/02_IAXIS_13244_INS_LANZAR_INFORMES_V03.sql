---> DELETE
-- DET_LANZAR_INFORMES
delete det_lanzar_informes d where d.cmap = 'PreValPagoSiniestros';
-- CFG_LANZAR_INFORMES_PARAMS
delete cfg_lanzar_informes_params d where d.cmap = 'PreValPagoSiniestros';
-- CFG_LANZAS_INFORME
delete cfg_lanzar_informes d where d.cmap = 'PreValPagoSiniestros';
---> INSERT
-- CFG_LANZAR_INFORMES_PARAMS
--
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'PreValPagoSiniestros', 'GENERAL', 0, 'GENERAL', 'PFPERINI', 1, 9000526, 3, 1, null);
--
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'PreValPagoSiniestros', 'GENERAL', 0, 'GENERAL', 'PFPERFIN', 2, 9000527, 3, 1, null);
--
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'PreValPagoSiniestros', 'GENERAL', 0, 'GENERAL', 'PSPROCES', 3, 9000493, 2, 1, null);
-- DET_LANZAR_INFORMES
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'PreValPagoSiniestros', 1, 'Pre-validador de Siniestros Pagados.', 'PreValPagoSiniestros.jasper');
--
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'PreValPagoSiniestros', 2, 'Pre-validador de Siniestros Pagados.', 'PreValPagoSiniestros.jasper');
--
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'PreValPagoSiniestros', 8, 'Pre-validador de Siniestros Pagados.', 'PreValPagoSiniestros.jasper');
-- DET_LANZAR_INFORMES
insert into cfg_lanzar_informes ( cempres, cform, cmap, tevento, sproduc, slitera, lparams, genera_report, ccfgform, 
                                  lexport, ctipo, cgenrec, carea)
values (24,'AXISLIST003','PreValPagoSiniestros','GENERAL',0,89907106,null,1,'GENERAL','XLSX',1,0,9);
commit
/
