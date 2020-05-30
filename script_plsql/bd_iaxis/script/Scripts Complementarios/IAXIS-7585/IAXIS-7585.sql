DECLARE
  v_contexto NUMBER := 0;
BEGIN

  v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));

delete CFG_LANZAR_INFORMES where cmap = 'Sin_Pag_Reco_Reser_Rea';
delete DET_LANZAR_INFORMES where cmap = 'Sin_Pag_Reco_Reser_Rea';
delete CFG_LANZAR_INFORMES_PARAMS where cmap = 'Sin_Pag_Reco_Reser_Rea';
delete AXIS_LITERALES where slitera = 89908043;
delete AXIS_CODLITERALES where slitera = 89908043;


      
 Insert into CFG_LANZAR_INFORMES (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,SLITERA,LPARAMS,GENERA_REPORT,CCFGFORM,LEXPORT,CTIPO,CGENREC,CAREA) values 
   (24,'AXISLIST003','Sin_Pag_Reco_Reser_Rea','GENERAL',0,89908043,null,1,'GENERAL','PDF|XLSX',1,0,9);       
       
 Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME)
 values (24,'Sin_Pag_Reco_Reser_Rea',8,'Reporte Siniestros Pagados, Recobros y Reservas','Sin_Pag_Reco_Reser_Rea.jasper');
        
       
 Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) values
  ('24','AXISLIST003','Sin_Pag_Reco_Reser_Rea','GENERAL','0','GENERAL','FECHA_DESDE','1','9902360','3','1', null);
 
 Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) values
  ('24','AXISLIST003','Sin_Pag_Reco_Reser_Rea','GENERAL','0','GENERAL','FECHA_HASTA','2','9902361','3','1', null);
  
  
  
      
  insert into AXIS_CODLITERALES (slitera, clitera) values (89908043, 2); 
  
  insert into AXIS_LITERALES(CIDIOMA, SLITERA, TLITERA) VALUES (8,89908043 , 'Reporte Siniestros Pagados, Recobros y Reservas');
  
  COMMIT;

END;