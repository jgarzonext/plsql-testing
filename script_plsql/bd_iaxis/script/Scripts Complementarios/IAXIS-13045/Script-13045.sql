
insert into int_servicio_detail (CINTERF, NOMBRE, EMPRESA, ESTADO)
values ('CONVI', 'Convivencia', 24, 'S');
COMMIT;
/


INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (89908038,2);

INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (1,89908038,'Reporte de servicio logs Convivencia');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (2,89908038,'Reporte de servicio logs Convivencia');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (8,89908038,'Reporte de servicio logs Convivencia');
  
  
INSERT INTO DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) 
VALUES (24,'ReporteServicioConvi',8,'Generar reporte de servicio logs para convivencia','ReporteServicioConvi.jasper'); 
    
INSERT INTO CFG_LANZAR_INFORMES (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,SLITERA,LPARAMS,GENERA_REPORT,CCFGFORM,LEXPORT,CTIPO,CGENREC,CAREA)
VALUES (24,'AXISLIST003','ReporteServicioConvi','GENERAL',0,89908038,NULL,1,'GENERAL','XLSX',1,0,1);  
   
   
INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES (24, 'AXISLIST003', 'ReporteServicioConvi', 'GENERAL', 0, 'GENERAL', 'PFINICIO', 3, 9910214, 3, 1, NULL);
  
INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES (24, 'AXISLIST003', 'ReporteServicioConvi', 'GENERAL', 0, 'GENERAL', 'PFFIN', 4, 9908886, 3, 1, NULL);
  
INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES (24, 'AXISLIST003', 'ReporteServicioConvi', 'GENERAL', 0, 'GENERAL', 'PNNUMIDE', 1, 9908121, 1, 1, NULL);
  
INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
VALUES (24, 'AXISLIST003', 'ReporteServicioConvi', 'GENERAL', 0, 'GENERAL', 'PESTADO', 2, 89907089, 1, 1, 'SELECT:SELECT DISTINCT ESTADO V, DECODE(ESTADO, 1, ''Éxito'', 2, ''Fallado'') D FROM SERVICIO_LOGS WHERE ESTADO <> 3 ORDER BY ESTADO');
    
COMMIT;
/
