--select C.*, f_axis_literales(slitera,8) TLITERA  from CFG_LANZAR_INFORMES C
--where cform = 'AXISLIST003' and ctipo = 1 and carea = 4;

--Nomina de contratos
INSERT INTO CFG_LANZAR_INFORMES(CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC,CAREA) 
VALUES('24', 'AXISLIST003', 'ListadoNominaContratos', 'GENERAL', 0, 89907024, NULL, 1, 'GENERAL', 'PDF|XLSX', 1, 0, 4);
 
--Condiciones de los Contratos Proporcionales
INSERT INTO CFG_LANZAR_INFORMES(CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC,CAREA) 
VALUES('24', 'AXISLIST003', 'ListadoCondicionContratosProp', 'GENERAL', 0, 89907025, NULL, 1, 'GENERAL', 'PDF|XLSX', 1, 0, 4);

--Condiciones de los Contratos No Proporcionales
INSERT INTO CFG_LANZAR_INFORMES(CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC,CAREA) 
VALUES('24', 'AXISLIST003', 'ListadoCondicionContratosNoProp', 'GENERAL', 0, 89907029, NULL, 1, 'GENERAL', 'PDF|XLSX', 1, 0, 4);