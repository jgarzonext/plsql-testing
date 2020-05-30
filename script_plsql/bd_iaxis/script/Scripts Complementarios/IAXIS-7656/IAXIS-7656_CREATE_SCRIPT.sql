
    
    --insert in det_lanzar    
    Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) 
    values (24,'Reporte_Pre-Cierres_Siniestros_Recobros',8,'REPORTE DE SINIESTROS – RECOBROS','Reporte_Pre-Cierres_Siniestros_Recobros.jasper');
    
    --insert into AXIS_LITERALES
    Insert into AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (89907098,2);
    Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (1,89907098,'REPORTE DE SINIESTROS – RECOBROS');
    Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (2,89907098,'REPORTE DE SINIESTROS – RECOBROS');
    Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (8,89907098,'REPORTE DE SINIESTROS – RECOBROS');

    --insert in CFG_LANZAR_INFORMES
     Insert into CFG_LANZAR_INFORMES (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,SLITERA,LPARAMS,GENERA_REPORT,CCFGFORM,LEXPORT,CTIPO,CGENREC,CAREA)
     values (24,'AXISLIST003','Reporte_Pre-Cierres_Siniestros_Recobros','GENERAL',0,89907098,null,1,'GENERAL','XLSX',1,0,9);

    --insert in CFG_LANZAR_INFORMES_PARAMS
     Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
     values (24,'AXISLIST003','Reporte_Pre-Cierres_Siniestros_Recobros','GENERAL',0,'GENERAL','FECHA_DESDE',1,9902360,3,1,null);
     
     Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
     values (24,'AXISLIST003','Reporte_Pre-Cierres_Siniestros_Recobros','GENERAL',0,'GENERAL','FECHA_HASTA',2,9902361,3,1,null);

    Commit;
    