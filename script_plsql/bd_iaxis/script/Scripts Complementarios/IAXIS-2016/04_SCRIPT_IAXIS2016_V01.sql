/* Formatted on 15/03/2019 11:00*/
/* **************************** 15/03/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Este script agrega el listado en el lanzador de reportes "Reporte histórico de calificaciones por tomador"
IAXIS-2016         15/03/2019 Daniel Rodríguez
***********************************************************************************************************************/

--
delete from det_lanzar_informes d where d.cempres = 24 and d.cmap = 'Scoring' and d.cidioma in (1,2,8);
--
delete from cfg_lanzar_informes c where  c.cempres = 24 AND c.cform = 'AXISLIST003' AND c.cmap = 'Scoring' AND c.tevento = 'GENERAL' AND c.sproduc = 0 AND c.ccfgform = 'GENERAL';
--
delete from cfg_lanzar_informes_params c where c.cempres = 24 and c.cform = 'AXISLIST003' and c.cmap = 'Scoring' and c.tevento = 'GENERAL' and c.sproduc = 0 and c.ccfgform = 'GENERAL' and c.tparam IN ('FECHAINI','FECHAFIN');
--
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'Scoring', 1, 'Base de datos Scoring', 'Scoring.jasper');
--
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'Scoring', 2, 'Base de datos Scoring', 'Scoring.jasper');
--
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'Scoring', 8, 'Base de datos Scoring', 'Scoring.jasper');
--
insert into cfg_lanzar_informes (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC, CAREA)
values (24, 'AXISLIST003', 'Scoring', 'GENERAL', 0, 89906090, 'AXISINT001', null, 'GENERAL', 'XLSX', 1, 0, 1);
--
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'Scoring', 'GENERAL', 0, 'GENERAL', 'FECHAFIN', 2, 9000527, 3, 0, null);
--
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'Scoring', 'GENERAL', 0, 'GENERAL', 'FECHAINI', 1, 9000526, 3, 0, null);
--
COMMIT;

