DELETE      axis_literales
         WHERE slitera = 89908019;

   DELETE      axis_codliterales
         WHERE slitera = 89908019;

   INSERT INTO axis_codliterales
               (slitera, clitera
               )
        VALUES (89908019, 2
               );

   INSERT INTO axis_literales
               (cidioma, slitera,
                tlitera
               )
        VALUES (1, 89908019,
                'Reporte de Cupos'
               );

   INSERT INTO axis_literales
               (cidioma, slitera,
                tlitera
               )
        VALUES (2, 89908019,
                'Reporte de Cupos'
               );

   INSERT INTO axis_literales
               (cidioma, slitera,
                tlitera
               )
        VALUES (8, 89908019,
                'Reporte de Cupos'
               );

   COMMIT;
Insert into CFG_LANZAR_INFORMES
   (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, 
    SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, 
    CTIPO, CGENREC, CAREA)
 Values
   (24, 'AXISLIST003', 'ReporteCupos', 'GENERAL', 0, 
    89908019, NULL, 1, 'GENERAL', 'XLSX', 
    1, 0, 9);
    
Insert into CFG_LANZAR_INFORMES_PARAMS
   (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, 
    CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, 
    NOTNULL, LVALOR)
 Values
   (24, 'AXISLIST003', 'ReporteCupos', 'GENERAL', 0, 
    'GENERAL', 'FECHA_DESDE', 1, 9902360, 3, 
    1, NULL);
Insert into CFG_LANZAR_INFORMES_PARAMS
   (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, 
    CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, 
    NOTNULL, LVALOR)
 Values
   (24, 'AXISLIST003', 'ReporteCupos', 'GENERAL', 0, 
    'GENERAL', 'FECHA_HASTA', 2, 9902361, 3, 
    1, NULL);
    
Insert into DET_LANZAR_INFORMES
   (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
 Values
   (24, 'ReporteCupos', 8, 'ReporteCupos', 'ReporteCupos.jasper');
COMMIT;
