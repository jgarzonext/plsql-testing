delete cfg_lanzar_informes_params c
where c.cmap = 'reporteConvenio'
/
delete cfg_lanzar_informes c
 where c.cmap = 'reporteConvenio'
/
delete det_lanzar_informes d
 where d.cmap = 'reporteConvenio'
/

BEGIN
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'reporteConvenio', 1, 'reporteConvenio', 'reporteConvenio.jasper');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        NULL;
END;
/
BEGIN
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'reporteConvenio', 2, 'reporteConvenio', 'reporteConvenio.jasper');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        NULL;
END;
/
BEGIN
insert into det_lanzar_informes (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
values (24, 'reporteConvenio', 8, 'reporteConvenio', 'reporteConvenio.jasper');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        NULL;
END;
/
--
BEGIN
insert into cfg_lanzar_informes (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC, CAREA)
values (24, 'AXISLIST003', 'reporteConvenio', 'GENERAL', 0, 89906226, null, 1, 'GENERAL', 'XLSX', 1, 0, 6);
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        NULL;
END;
/
--
BEGIN
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'reporteConvenio', 'GENERAL', 0, 'GENERAL', 'PFINICIO', 1, 9000526, 3, 1, null);
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        NULL;
END;
/
BEGIN
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'reporteConvenio', 'GENERAL', 0, 'GENERAL', 'PFFIN', 2, 9000527, 3, 1, null);
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        NULL;
END;
/
BEGIN
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'reporteConvenio', 'GENERAL', 0, 'GENERAL', 'PNNUMIDE', 3, 9904434, 1, 0, null);
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        NULL;
END;
/
BEGIN
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'reporteConvenio', 'GENERAL', 0, 'GENERAL', 'PCAGENTE', 4, 100584, 1, 0, null);
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        NULL;
END;
/
BEGIN
insert into cfg_lanzar_informes_params (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
values (24, 'AXISLIST003', 'reporteConvenio', 'GENERAL', 0, 'GENERAL', 'PCCONVENIO', 5, 9902590, 1, 0, 'SELECT:select 0 V, ''TODOS'' D FROM DUAL UNION select idconvcomesp V,idconvcomesp_D d FROM ( SELECT distinct idconvcomesp,idconvcomesp||''.''||tdesconv idconvcomesp_D from CONVCOMISESP) order by 1');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        NULL;
END;
/
