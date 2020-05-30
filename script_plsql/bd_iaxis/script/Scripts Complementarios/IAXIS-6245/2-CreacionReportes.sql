--Reporete Colocaciones Facultativas
INSERT INTO CFG_LANZAR_INFORMES(CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC,CAREA) 
VALUES('24', 'AXISLIST003', 'RColFacultativos', 'GENERAL', 0, 89908025, NULL, 1, 'GENERAL', 'PDF|XLSX', 1, 0, 9);

--Parametro Fecha Cierre
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR) 
VALUES ( 24, 'AXISLIST003', 'RColFacultativos', 'GENERAL', 0, 'GENERAL', 'PFINICIO', 1, 9908690, 3, 1, '');

INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR) 
VALUES ( 24, 'AXISLIST003', 'RColFacultativos', 'GENERAL', 0, 'GENERAL', 'PFFIN', 1, 9908691, 3, 1, '');

--Detalle
INSERT INTO DET_LANZAR_INFORMES ( CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME) 
VALUES ( 24, 'RColFacultativos', 8, 'Reporte Colocaciones Facultativas', 'RColFacultativos.jasper' );


COMMIT;