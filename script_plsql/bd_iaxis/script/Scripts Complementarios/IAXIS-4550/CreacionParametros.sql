--select * from cfg_lanzar_informes_params
--where cmap='ListadoNominaContratos';

--select * from cfg_lanzar_informes_params
--where cmap='ListadoCondicionContratosProp';

--select * from cfg_lanzar_informes_params
--where cmap='ListadoCondicionContratosNoProp';

--NOMINA DE CONTRATOS
--Parametro Tipo de Contrato
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR) 
VALUES ( 24, 'AXISLIST003', 'ListadoNominaContratos', 'GENERAL', 0, 'GENERAL', 'P_TIPCON', 1, 9902261, 1, 1, 'SELECT:select catribu v,tatribu d from detvalores where cidioma = pac_md_common.f_get_cxtidioma() and cvalor=106');

--Parametro Numero de Contrato
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoNominaContratos', 'GENERAL', 0, 'GENERAL', 'P_SCONTRA', 2, 9000536, 1, 1, NULL );
 
 --Parametro Version
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoNominaContratos', 'GENERAL', 0, 'GENERAL', 'P_NVERSIO', 3, 9000577, 1, 1, NULL );


--CONDICIONES DE CONTRATOS PROPORCIONALES
--Parametro Tipo de Contrato
--INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
--VALUES ( 24, 'AXISLIST003', 'ListadoCondicionContratosProp', 'GENERAL', 0, 'GENERAL', 'PTIPCON', 1, 9902261, 1, 1, 'SELECT:select catribu v,tatribu d from detvalores where cidioma = pac_md_common.f_get_cxtidioma() and cvalor=106');

--Parametro Numero de Contrato
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoCondicionContratosProp', 'GENERAL', 0, 'GENERAL', 'P_SCONTRA', 2, 9000536, 1, 1, NULL );
 
--Parametro Version
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoCondicionContratosProp', 'GENERAL', 0, 'GENERAL', 'P_NVERSIO', 3, 9000577, 1, 1, NULL );


--CONDICIONES DE CONTRATOS NO PROPORCIONALES
--Parametro Tipo de Contrato
--INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
--VALUES ( 24, 'AXISLIST003', 'ListadoCondicionContratosNoProp', 'GENERAL', 0, 'GENERAL', 'PTIPCON', 1, 9902261, 1, 1, 'SELECT:select catribu v,tatribu d from detvalores where cidioma = pac_md_common.f_get_cxtidioma() and cvalor=106');

--Parametro Numero de Contrato
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoCondicionContratosNoProp', 'GENERAL', 0, 'GENERAL', 'P_SCONTRA', 2, 9000536, 1, 1, NULL );
 
--Parametro Version
INSERT INTO CFG_LANZAR_INFORMES_PARAMS ( CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES ( 24, 'AXISLIST003', 'ListadoCondicionContratosNoProp', 'GENERAL', 0, 'GENERAL', 'P_NVERSIO', 3, 9000577, 1, 1, NULL );