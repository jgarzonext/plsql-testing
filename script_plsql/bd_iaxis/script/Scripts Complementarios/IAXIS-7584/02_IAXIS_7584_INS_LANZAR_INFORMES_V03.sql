---> DELETE
-- DET_LANZAR_INFORMES
delete det_lanzar_informes d where d.cmap = 'DetEmisRecibos';
-- CFG_LANZAR_INFORMES_PARAMS
delete cfg_lanzar_informes_params d where d.cmap = 'DetEmisRecibos';
-- CFG_LANZAR_INFORMES
delete cfg_lanzar_informes d where d.cmap = 'DetEmisRecibos';
---> INSERT
-- CFG_LANZAR_INFORMES
insert into cfg_lanzar_informes (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC, CAREA)
values (24, 'AXISLIST003', 'DetEmisRecibos', 'GENERAL', 0, 89907103, null, 1, 'GENERAL', 'XLSX', 1, 0, 9);
-- CFG_LANZAR_INFORMES_PARAMS
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'DetEmisRecibos', 'GENERAL', 0, 'GENERAL', 'PANIO', 1, 101606, 1, 1, null);
--
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'DetEmisRecibos', 'GENERAL', 0, 'GENERAL', 'PMES', 2, 9000495, 1, 1, 'SELECT:SELECT Rownum v, TO_CHAR(to_date(''01''||lpad(Rownum,2,''0'')||''1900'', ''DDMMYYYY''), ''Month'',''nls_date_language=spanish'') d From dual Connect By Rownum <= 12');
-- DET_LANZAR_INFORMES
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'DetEmisRecibos', 1, 'Detalles de emisión por recibos', 'DetEmisRecibos.jasper');
--
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'DetEmisRecibos', 2, 'Detalles de emisión por recibos', 'DetEmisRecibos.jasper');
--
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'DetEmisRecibos', 8, 'Detalles de emisión por recibos', 'DetEmisRecibos.jasper');
commit
/

