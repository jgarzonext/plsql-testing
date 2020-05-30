DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 
    
	     --
DELETE FROM axis_literales
WHERE slitera IN (89906299, 89906300);
DELETE FROM AXIS_CODLITERALES 
WHERE SLITERA IN (89906299, 89906300);
delete from CFG_LANZAR_INFORMES
where cmap like 'Det_suscripcion_diaria';
delete from CFG_LANZAR_INFORMES_PARAMS
where cmap like 'Det_suscripcion_diaria';
delete from DET_LANZAR_INFORMES
where cmap like 'Det_suscripcion_diaria';
COMMIT;

COMMIT;

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES (89906299, 3); 
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES (89906300, 3); 
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES (1, 89906299, 'Detallado de Expedición Diaria Suscriptor'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES (2, 89906299, 'Detallado de Expedición Diaria Suscriptor'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES (8, 89906299, 'Detallado de Expedición Diaria Suscriptor');
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES (1, 89906300, 'Código Suscriptor'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES (2, 89906300, 'Código Suscriptor');  
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES (8, 89906300, 'Código Suscriptor');  
     
Insert into CFG_LANZAR_INFORMES (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,SLITERA,LPARAMS,GENERA_REPORT,CCFGFORM,LEXPORT,CTIPO,CGENREC,CAREA) 
values (24,'AXISLIST003','Det_suscripcion_diaria','GENERAL',0,89906299,null,1,'GENERAL','XLSX|PDF',1,0,2);
Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values (24,'AXISLIST003','Det_suscripcion_diaria','GENERAL',0,'GENERAL','FECHA_CORTE_DESDE',1,9902360,3,1,null);
Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values (24,'AXISLIST003','Det_suscripcion_diaria','GENERAL',0,'GENERAL','FECHA_CORTE_HASTA',2,9902361,3,1,null);
Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values (24,'AXISLIST003','Det_suscripcion_diaria','GENERAL',0,'GENERAL','SUCURSAL_DESDE',3,9910689,2,1,'SELECT:select distinct AG.cagente v, AG.cagente || '' - '' || PAC_REDCOMERCIAL.ff_desagente (AG.cagente, f_usu_idioma ,4 ) d FROM agentes AG WHERE AG.ctipage = 2 ORDER BY 1 ');
Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values (24,'AXISLIST003','Det_suscripcion_diaria','GENERAL',0,'GENERAL','SUCURSAL_HASTA',4,9910690,2,1,'SELECT:select distinct AG.cagente v, AG.cagente || '' - '' || PAC_REDCOMERCIAL.ff_desagente (AG.cagente, f_usu_idioma ,4 ) d FROM agentes AG WHERE AG.ctipage = 2 ORDER BY 1');
Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values (24,'AXISLIST003','Det_suscripcion_diaria','GENERAL',0,'GENERAL','SUSCRIPTOR',5,89906300,1,0,'SELECT:select distinct u.cusuari v, u.cusuari d from usuarios u where u.cempres = 24 and u.cidioma = 8 order by u.cusuari asc');

Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME)
values (24,'Det_suscripcion_diaria',1,'Detallado de Expedición Diaria Suscriptor','Det_suscripcion_diaria.jasper');
Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME)
values (24,'Det_suscripcion_diaria',2,'Detallado de Expedición Diaria Suscriptor','Det_suscripcion_diaria.jasper');
Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME)
values (24,'Det_suscripcion_diaria',8,'Detallado de Expedición Diaria Suscriptor','Det_suscripcion_diaria.jasper');

COMMIT;
END;
/