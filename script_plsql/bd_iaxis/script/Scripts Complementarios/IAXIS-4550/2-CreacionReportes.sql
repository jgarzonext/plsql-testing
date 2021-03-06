--NOMINA DE CONTRATOS
INSERT INTO CFG_LANZAR_INFORMES(CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC,CAREA) 
VALUES('24', 'AXISLIST003', 'ListadoNominaContratos', 'GENERAL', 0, 89907024, NULL, 1, 'GENERAL', 'PDF|XLSX', 1, 0, 4);

--Parametro Tipo de Contrato
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR) 
VALUES ( 24, 'AXISLIST003', 'ListadoNominaContratos', 'GENERAL', 0, 'GENERAL', 'P_TIPCONT', 1, 9902261, 1, 1, 'SELECT:select catribu v,tatribu d from detvalores where cidioma = pac_md_common.f_get_cxtidioma() and cvalor=106');

--Parametro Numero de Contrato
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoNominaContratos', 'GENERAL', 0, 'GENERAL', 'P_SCONTRA', 2, 9000536, 1, 1, NULL );
 
 --Parametro Version
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoNominaContratos', 'GENERAL', 0, 'GENERAL', 'P_NVERSIO', 3, 9000577, 1, 1, NULL );

--Detalle
INSERT INTO DET_LANZAR_INFORMES ( CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME) 
VALUES ( 24, 'ListadoNominaContratos', 8, 'N�minas de contratos', 'LNomContratos.jasper' );

--CONDICIONES DE CONTRATOS PROPORCIONALES
INSERT INTO CFG_LANZAR_INFORMES(CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC,CAREA) 
VALUES('24', 'AXISLIST003', 'ListadoCondicionContratosProp', 'GENERAL', 0, 89907025, NULL, 1, 'GENERAL', 'PDF|XLSX', 1, 0, 4);

--Parametro Numero de Contrato
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoCondicionContratosProp', 'GENERAL', 0, 'GENERAL', 'P_SCONTRA', 2, 9000536, 1, 1, NULL );
 
--Parametro Version
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoCondicionContratosProp', 'GENERAL', 0, 'GENERAL', 'P_NVERSIO', 3, 9000577, 1, 1, NULL );

--Detalle
INSERT INTO DET_LANZAR_INFORMES ( CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME) 
VALUES ( 24, 'ListadoCondicionContratosProp', 8, 'Condiciones de Contratos Proporcionales', 'LConContratosProp.jasper' );

--CONDICIONES DE CONTRATOS NO PROPORCIONALES
INSERT INTO CFG_LANZAR_INFORMES(CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC,CAREA) 
VALUES('24', 'AXISLIST003', 'ListadoCondicionContratosNoProp', 'GENERAL', 0, 89907029, NULL, 1, 'GENERAL', 'PDF|XLSX', 1, 0, 4);

--Parametro Numero de Contrato
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoCondicionContratosNoProp', 'GENERAL', 0, 'GENERAL', 'P_SCONTRA', 2, 9000536, 1, 1, NULL );
 
--Parametro Version
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoCondicionContratosNoProp', 'GENERAL', 0, 'GENERAL', 'P_NVERSIO', 3, 9000577, 1, 1, NULL );

--Detalle
INSERT INTO DET_LANZAR_INFORMES ( CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME) 
VALUES ( 24, 'ListadoCondicionContratosNoProp', 8, 'Condiciones de Contratos No Proporcionales', 'LConContratosNoProp.jasper' );  



COMMIT;