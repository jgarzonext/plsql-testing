DECLARE
  v_contexto NUMBER := 0;
BEGIN

  v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));

delete CFG_LANZAR_INFORMES where cmap = 'Validador_Reserv_Bruta_Sinies';
delete DET_LANZAR_INFORMES where cmap = 'Validador_Reserv_Bruta_Sinies';
delete CFG_LANZAR_INFORMES_PARAMS where cmap = 'Validador_Reserv_Bruta_Sinies';
delete AXIS_LITERALES where slitera = 89908011;
delete AXIS_CODLITERALES where slitera = 89908011;


      
 Insert into CFG_LANZAR_INFORMES (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,SLITERA,LPARAMS,GENERA_REPORT,CCFGFORM,LEXPORT,CTIPO,CGENREC,CAREA) values 
   (24,'AXISLIST003','Validador_Reserv_Bruta_Sinies','GENERAL',0,89908011,null,1,'GENERAL','PDF|XLSX',1,0,9);       
       
 Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values (24,'Validador_Reserv_Bruta_Sinies',8,'Validador de Reservas Brutas Siniestros','Validador_Reserv_Bruta_Sinies.jasper');
        
       
 Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) values
  ('24','AXISLIST003','Validador_Reserv_Bruta_Sinies','GENERAL','0','GENERAL','FECHA_DESDE','1','9902360','3','1', null);
 
 Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) values
  ('24','AXISLIST003','Validador_Reserv_Bruta_Sinies','GENERAL','0','GENERAL','FECHA_HASTA','2','9902361','3','1', null);
  
  
  
      
  insert into AXIS_CODLITERALES (slitera, clitera) values (89908011, 2); 
  
  insert into AXIS_LITERALES(CIDIOMA, SLITERA, TLITERA) VALUES (8,89908011, 'Validador de Reservas Brutas Siniestros');
  
  COMMIT;

END;