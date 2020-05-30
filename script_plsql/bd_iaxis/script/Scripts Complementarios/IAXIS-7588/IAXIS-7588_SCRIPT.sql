    
    --insert in det_lanzar    
    Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) 
    values (24,'DetalleComisionesGeneradasIntermediarios',8,'Detalle Comisiones generadas Intermediarios','DetalleComisionesGeneradasIntermediarios.jasper');
    
    --insert into AXIS_LITERALES
    Insert into AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (89907090,2);
    Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (1,89907090,'DETALLE COMISIONES GENERADAS INTERMEDIARIOS');
    Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (2,89907090,'DETALLE COMISIONES GENERADAS INTERMEDIARIOS');
    Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (8,89907090,'DETALLE COMISIONES GENERADAS INTERMEDIARIOS');

    --insert in CFG_LANZAR_INFORMES
     Insert into CFG_LANZAR_INFORMES (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,SLITERA,LPARAMS,GENERA_REPORT,CCFGFORM,LEXPORT,CTIPO,CGENREC,CAREA)
     values (24,'AXISLIST003','DetalleComisionesGeneradasIntermediarios','GENERAL',0,89907090,null,1,'GENERAL','XLSX',1,0,9);

    --insert in CFG_LANZAR_INFORMES_PARAMS
     Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
     values (24,'AXISLIST003','DetalleComisionesGeneradasIntermediarios','GENERAL',0,'GENERAL','FECHA_DESDE',1,9902360,3,1,null);
     
     Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
     values (24,'AXISLIST003','DetalleComisionesGeneradasIntermediarios','GENERAL',0,'GENERAL','FECHA_HASTA',2,9902361,3,1,null);

     Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR)
     values (24,'AXISLIST003','DetalleComisionesGeneradasIntermediarios','GENERAL',0,'GENERAL','SUCURSAL_DESDE',3,9910689,2,1,'SELECT:select a.cagente v, a.cagente || ''.'' || PAC_REDCOMERCIAL.ff_desagente (a.cagente, 8 ,8 ) d
     FROM agentes a, redcomercial r WHERE a.ctipage in (2,3)  AND r.cagente = a.cagente  AND r.fmovfin IS NULL  ORDER BY 1');

     Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR)
     values (24,'AXISLIST003','DetalleComisionesGeneradasIntermediarios','GENERAL',0,'GENERAL','SUCURSAL_HASTA',4,9910690,2,1,'SELECT:select a.cagente v, a.cagente || ''.'' || PAC_REDCOMERCIAL.ff_desagente (a.cagente, 8 ,8 ) d
     FROM agentes a, redcomercial r WHERE a.ctipage in (2,3)  AND r.cagente = a.cagente  AND r.fmovfin IS NULL  ORDER BY 1');
	 
	 commit;
	 /