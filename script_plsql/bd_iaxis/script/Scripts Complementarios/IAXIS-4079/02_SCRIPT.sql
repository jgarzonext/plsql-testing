delete from CFG_LANZAR_INFORMES
where cmap like 'listadoComercial';

Insert into CFG_LANZAR_INFORMES (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,SLITERA,LPARAMS,GENERA_REPORT,CCFGFORM,LEXPORT,CTIPO,CGENREC,CAREA) values 
('24','AXISLIST003','listadoComercial','GENERAL','0','89906324',null,'1','GENERAL','PDF|XLSX','1','0','6');

delete from DET_LANZAR_INFORMES
where cmap like 'listadoComercial';

Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values 
('24','listadoComercial','1','Reporte de liquidacion comercial','listadoComercial.jasper');
Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values 
('24','listadoComercial','2','Reporte de liquidacion comercial','listadoComercial.jasper');
Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values 
('24','listadoComercial','8','Reporte de liquidacion comercial','listadoComercial.jasper');

delete from CFG_LANZAR_INFORMES_PARAMS
where cmap = 'listadoComercial';

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values ('24','AXISLIST003','listadoComercial','GENERAL','0','GENERAL','PNIT','4','9905773','1','0',null);

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values ('24','AXISLIST003','listadoComercial','GENERAL','0','GENERAL','PFINICIO','1','9902360','3','1',null);

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values ('24','AXISLIST003','listadoComercial','GENERAL','0','GENERAL','PFFIN','2','9908885','3','1',null);

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values ('24','AXISLIST003','listadoComercial','GENERAL','0','GENERAL','PSUCURSAL','3','9909330','2','1','SELECT:select 0 V , ''TODAS'' D FROM dual UNION SELECT AG.CAGENTE V, pac_redcomercial.ff_desagente(ag.cagente,8 ,8) d FROM redcomercial rc,agentes ag  WHERE rc.cagente = ag.cagente AND rc.ctipage in (2,3) AND rc.cempres   = 24');

commit;
/