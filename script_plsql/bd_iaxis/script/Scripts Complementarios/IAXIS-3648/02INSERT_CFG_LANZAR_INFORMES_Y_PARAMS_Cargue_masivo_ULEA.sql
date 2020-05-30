

DELETE FROM CFG_LANZAR_INFORMES WHERE (CMAP) LIKE 'Cargue_masivo_ULEA';
Insert into CFG_LANZAR_INFORMES (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,SLITERA,LPARAMS,GENERA_REPORT,CCFGFORM,LEXPORT,CTIPO,CGENREC,CAREA) values (24,'AXISLIST003','Cargue_masivo_ULEA','GENERAL',0,89907026,null,1,'GENERAL','XLSX|PDF',1,0,3);


delete from DET_LANZAR_INFORMES where CMAP='Cargue_masivo_ULEA' and CIDIOMA=8;
Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values (24,'Cargue_masivo_ULEA',8,'Informe Tecnico','CARGUE_MASIVO_ULEA.jasper');


delete from CFG_LANZAR_INFORMES_PARAMS where cmap='Cargue_masivo_ULEA' and TPARAM='FECHA';
Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) values (24,'AXISLIST003','Cargue_masivo_ULEA','GENERAL',0,'GENERAL','FECHA',1,100562,3,1,null);


delete from CFG_LANZAR_INFORMES_PARAMS where cmap='Cargue_masivo_ULEA' and TPARAM='CRAMO';
Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) values (24,'AXISLIST003','Cargue_masivo_ULEA','GENERAL',0,'GENERAL','CRAMO',2,100784,2,1,'SELECT:select 0 V, ''TODOS'' D FROM DUAL UNION select CRAMO v, tramo d from ramos where cidioma = 8 order by V');



delete from CFG_LANZAR_INFORMES_PARAMS where cmap='Cargue_masivo_ULEA' and TPARAM='VALORULEA';
Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) values (24,'AXISLIST003','Cargue_masivo_ULEA','GENERAL',0,'GENERAL','VALORULEA',3,89907027,1,1,null);

commit;

