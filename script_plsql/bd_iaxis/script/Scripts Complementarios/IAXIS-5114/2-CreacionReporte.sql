INSERT INTO CFG_LANZAR_INFORMES(CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC,CAREA) 
VALUES('24', 'AXISLIST003', 'ListadoLiquidacionReaseguro', 'GENERAL', 0, 89907054, NULL, 1, 'GENERAL', 'PDF', 1, 0, 4);

--Parametro No Proceso
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR) 
VALUES ( 24, 'AXISLIST003', 'ListadoLiquidacionReaseguro', 'GENERAL', 0, 'GENERAL', 'psproces', 1, 9000493, 1, 1, '');

--Detalle
INSERT INTO DET_LANZAR_INFORMES ( CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME) 
VALUES ( 24, 'ListadoLiquidacionReaseguro', 8, 'Liquidación Reaseguro', 'liquidacionesReaseguro.jasper' );

commit;