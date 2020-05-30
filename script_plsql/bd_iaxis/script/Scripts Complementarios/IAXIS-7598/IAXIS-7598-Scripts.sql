
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (89907087,2);
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (89907088,2);
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (89907089,2);

INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (1,89907087,'Reporte de servicio logs');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (2,89907087,'Reporte de servicio logs');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (8,89907087,'Reporte de servicio logs');
  
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (1,89907088,'Tipo de servicio');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (2,89907088,'Tipo de servicio');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (8,89907088,'Tipo de servicio');
  
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (1,89907089,'Estado de servicio');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (2,89907089,'Estado de servicio');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (8,89907089,'Estado de servicio');
  
  
INSERT INTO DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) 
VALUES (24,'ReporteServicioApp',8,'Generar reporte de servicio logs','ReporteServicio.jasper'); 
    
INSERT INTO CFG_LANZAR_INFORMES (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,SLITERA,LPARAMS,GENERA_REPORT,CCFGFORM,LEXPORT,CTIPO,CGENREC,CAREA)
VALUES (24,'AXISLIST003','ReporteServicioApp','GENERAL',0,89907087,NULL,1,'GENERAL','XLSX',1,0,1);  
   
   
INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES (24, 'AXISLIST003', 'ReporteServicioApp', 'GENERAL', 0, 'GENERAL', 'PFINICIO', 3, 9910214, 3, 1, NULL);
  
INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES (24, 'AXISLIST003', 'ReporteServicioApp', 'GENERAL', 0, 'GENERAL', 'PFFIN', 4, 9908886, 3, 1, NULL);
  
INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES (24, 'AXISLIST003', 'ReporteServicioApp', 'GENERAL', 0, 'GENERAL', 'PCINTERF', 1, 89907088, 1, 1, 'SELECT:SELECT S.CINTERF V, S.NOMBRE D FROM INT_SERVICIO_DETAIL S WHERE S.CINTERF IN (''I017'', ''I031'', ''l003'')');
  
INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES (24, 'AXISLIST003', 'ReporteServicioApp', 'GENERAL', 0, 'GENERAL', 'PESTADO', 2, 89907089, 1, 1, 'SELECT:SELECT DISTINCT ESTADO V, DECODE(ESTADO, 1, ''Éxito'', 2, ''Fallado'') D FROM SERVICIO_LOGS WHERE ESTADO <> 3 ORDER BY ESTADO');
    
COMMIT;
/