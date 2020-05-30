DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906331;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906331;

INSERT INTO AXIS_CODLITERALES (CLITERA, SLITERA) VALUES (3,89906331);
INSERT INTO AXIS_LITERALES VALUES (1,89906331,'Reporte de Traspasos De Cartera');
INSERT INTO AXIS_LITERALES VALUES (2,89906331,'Reporte de Traspasos De Cartera');
INSERT INTO AXIS_LITERALES VALUES (8,89906331,'Reporte de Traspasos De Cartera');

delete from CFG_LANZAR_INFORMES
where cmap like 'TraspasosDeCartera';

Insert into CFG_LANZAR_INFORMES (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,SLITERA,LPARAMS,GENERA_REPORT,CCFGFORM,LEXPORT,CTIPO,CGENREC,CAREA) values 
('24','AXISAGE012','TraspasosDeCartera','GENERAL','0','89906331',null,'1','GENERAL','PDF','1','0','6');

delete from DET_LANZAR_INFORMES
where cmap like 'TraspasosDeCartera';

Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values 
('24','TraspasosDeCartera','1','Reporte de Reporte de Traspasos De Cartera','TraspasosDeCartera.jasper');
Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values 
('24','TraspasosDeCartera','2','Reporte de Reporte de Traspasos De Cartera','TraspasosDeCartera.jasper');
Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values 
('24','TraspasosDeCartera','8','Reporte de Reporte de Traspasos De Cartera','TraspasosDeCartera.jasper');

delete from CFG_LANZAR_INFORMES_PARAMS
where cmap = 'TraspasosDeCartera';

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values ('24','AXISAGE012','TraspasosDeCartera','GENERAL','0','GENERAL','SPROC','4','1000576','1','1',null);

commit;
/