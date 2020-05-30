/* Inserción literal para nombre reporte */
insert into AXIS_CODLITERALES (SLITERA, CLITERA)
values (89908061, 3);
--
insert into AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA)
values (1, 89908061, 'Listado Detalla Reservas Cedidas');
--
insert into AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA)
values (2, 89908061, 'Listado Detalla Reservas Cedidas');
--
insert into AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA)
values (8, 89908061, 'Listado Detalla Reservas Cedidas');
---> DELETE
-- DET_LANZAR_INFORMES
delete det_lanzar_informes d where d.cmap = 'ListDetReserCed';
-- CFG_LANZAR_INFORMES_PARAMS
delete cfg_lanzar_informes_params d where d.cmap = 'ListDetReserCed';
-- CFG_LANZAR_INFORMES
delete cfg_lanzar_informes d where d.cmap = 'ListDetReserCed';
---> INSERT
-- CFG_LANZAR_INFORMES
insert into cfg_lanzar_informes (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC, CAREA)
values (24, 'AXISLIST003', 'ListDetReserCed', 'GENERAL', 0, 89908061, null, 1, 'GENERAL', 'XLSX', 1, 0, 9);
-- CFG_LANZAR_INFORMES_PARAMS
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'DetCesionesCed', 'GENERAL', 0, 'GENERAL', 'SPROCES', 1, 9000493, 2, 1, null);
--
-- DET_LANZAR_INFORMES
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'ListDetReserCed', 1, 'Listado Detalla Reservas Cedidas', 'ListDetReserCed.jasper');
--
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'ListDetReserCed', 2, 'Listado Detalla Reservas Cedidas', 'ListDetReserCed.jasper');
--
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'ListDetReserCed', 8, 'Listado Detalla Reservas Cedidas', 'ListDetReserCed.jasper');
commit
/

