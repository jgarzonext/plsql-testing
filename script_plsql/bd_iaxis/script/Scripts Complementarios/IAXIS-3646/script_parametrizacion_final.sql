delete from  AXIS_LITERALES
where SLITERA = 89906286;

delete from AXIS_CODLITERALES
WHERE SLITERA = 89906286;

delete from CFG_LANZAR_INFORMES_PARAMS where CEMPRES = 24 and CFORM = 'AXISLIST003' and CMAP = 'Formulario_CGS' and TEVENTO = 'GENERAL' and SPRODUC = 0 and CCFGFORM = 'GENERAL';



delete from CFG_LANZAR_INFORMES where CEMPRES = 24 and  CFORM = 'AXISLIST003' and  CMAP = 'Formulario_CGS' and TEVENTO = 'GENERAL' and SPRODUC = 0 and SLITERA = 89906286 and  LPARAMS is null and
GENERA_REPORT = 1 and   CCFGFORM = 'GENERAL' and LEXPORT = 'XLSX | PDF' and CTIPO = 1 and CGENREC = 0 and  CAREA = 1;
  
delete from DET_LANZAR_INFORMES where CEMPRES = 24 and CMAP = 'Formulario_CGS' and CIDIOMA = 8;










insert into AXIS_CODLITERALES 
values (89906286, 2);


insert into AXIS_LITERALES
values (1, 89906286, 'Formulario de conocimientos grabados');
insert into AXIS_LITERALES
values (2, 89906286, 'Formulario de conocimientos grabados');
insert into AXIS_LITERALES
values (8, 89906286, 'Formulario de conocimientos grabados');




INSERT INTO DET_LANZAR_INFORMES VALUES (24, 'Formulario_CGS', 8, 'Reporte de formulario de conocimientos grabados', 'Formulario_conocimientograbadas.jasper');


 INSERT INTO  CFG_LANZAR_INFORMES
                  (CEMPRES, CFORM,  CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS,  GENERA_REPORT,  CCFGFORM,
LEXPORT, CTIPO, CGENREC, CAREA
                  )
           VALUES (24, 'AXISLIST003', 'Formulario_CGS', 'GENERAL', 0, 89906286,
                   null, 1, 'GENERAL', 'XLSX | PDF', 1, 0, 1
                  );


  
				  
				  
	 
				  
				  


INSERT INTO CFG_LANZAR_INFORMES_PARAMS
                  (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, 
NORDER, SLITERA, CTIPO, NOTNULL, LVALOR
                  )
           VALUES (24, 'AXISLIST003', 'Formulario_CGS', 'GENERAL', 0, 'GENERAL',
                   'PFINICIO', 1, 9000526, 3, 1, null
                  );


INSERT INTO CFG_LANZAR_INFORMES_PARAMS
                  (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, 
NORDER, SLITERA, CTIPO, NOTNULL, LVALOR
                  )
           VALUES (24, 'AXISLIST003', 'Formulario_CGS', 'GENERAL', 0, 'GENERAL',
                   'PFFIN', 2, 9000527, 3, 1, null
                  );
                  
                  
Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values (24,'AXISLIST003','Formulario_CGS','GENERAL',0,'GENERAL','SUCURSAL',3,9909330,1,1,'SELECT:select 0 v , ''TODAS'' d FROM dual UNION select distinct AG.cagente v,AG.cagente||'' - ''||PAC_REDCOMERCIAL.ff_desagente (AG.cagente, f_usu_idioma ,4 ) d FROM agentes AG WHERE AG.ctipage = 2 ORDER BY 1 ');

commit;
				  
				  /

