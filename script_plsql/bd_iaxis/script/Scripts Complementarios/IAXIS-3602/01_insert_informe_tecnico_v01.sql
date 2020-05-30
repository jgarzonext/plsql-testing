/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-3602 INFORME TECNICO 
   IAXIS-3602 - 30/04/2019  SHUBHENDU 
***********************************************************************************************************************/ 
--
DELETE FROM DET_LANZAR_INFORMES WHERE CEMPRES = 24 AND CMAP = 'informeTechnico'; 
--
Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values (24,'informeTechnico',1,'Informe De Tecnico','Reporte_Informe_technico.jasper');
Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values (24,'informeTechnico',2,'Informe De Tecnico','Reporte_Informe_technico.jasper');
Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values (24,'informeTechnico',8,'Informe De Tecnico','Reporte_Informe_technico.jasper');
--
/*insert */
delete from detvalores where cvalor = 2100 and catribu = 75;

insert into detvalores values(2100,8,75,'Informe Tecnico');
insert into detvalores values(2100,2,75,'Informe Tecnico');
insert into detvalores values(2100,1,75,'Informe Tecnico');

/* Delete the row */
delete from prod_plant_cab ppc where ppc.ccodplan ='CONF800102' and  ppc.ctipo = 75 and ppsc.sproduc = 0;



/*Insert table*/

delete from prod_plant_cab ppc where ppc.ccodplan ='CONF800109' and  ppc.ctipo = 75 and ppsc.sproduc = 0;
delete from DETPLANTILLAS ppc where ppc.ccodplan ='CONF800109' and  ppc.TDESCRIP = 'Informe Technica';
delete from CODIPLANTILLAS ppc where ppc.ccodplan ='CONF800109' and  ppc.IDCONSULTA = 0;


Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,
CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (0,75,'CONF800109',1,to_date('05/01/2017','DD/MM/YYYY'),
null,null,0,null,null,null,null,null,null,'AXIS',sysdate,null,null);

Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) values
 ('CONF800109',0,'S',1,1,1,2,null,null);



Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA)
values ('CONF800109',8,'Informe Technica','Report_Inform_Technico.jasper','.',null,0,null);


--Detalles del plazo
delete from axis_literales where slitera in (89906258,89906259,89906260,89906261,89906262,89906263); 
delete from AXIS_CODLITERALES where slitera in (89906258,89906259,89906260,89906261,89906262,89906263);
Insert into AXIS_CODLITERALES (SLITERA,CLITERA) values (89906258,2);

--Interventor
Insert into AXIS_CODLITERALES (SLITERA,CLITERA) values (89906259,2);

--Supervisor
Insert into AXIS_CODLITERALES (SLITERA,CLITERA) values (89906260,2);

--Observaciones
Insert into AXIS_CODLITERALES (SLITERA,CLITERA) values (89906261,2);

--Fecha elaboración
Insert into AXIS_CODLITERALES (SLITERA,CLITERA) values (89906262,2);

--Fuente de Información
Insert into AXIS_CODLITERALES (SLITERA,CLITERA) values (89906263,2);


--Detalles del plazo
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (1,89906258,'Detalles del plazo');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (2,89906258,'Detalles del plazo');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (8,89906258,'Detalles del plazo');

--Interventor
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (1,89906259,'Interventor');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (2,89906259,'Interventor');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (8,89906259,'Interventor');

--Supervisor
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (1,89906260,'Supervisor');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (2,89906260,'Supervisor');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (8,89906260,'Supervisor');

--Observaciones
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (1,89906261,'Observaciones');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (2,89906261,'Observaciones');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (8,89906261,'Observaciones');

--Fecha elaboración
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (1,89906262,'Fecha elaboración');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (2,89906262,'Fecha elaboración');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (8,89906262,'Fecha elaboración');

--Fuente de Información
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (1,89906263,'Fuente de Información');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (2,89906263,'Fuente de Información');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (8,89906263,'Fuente de Información');

delete from CFG_FORM_DEP where CCFGDEP in (99840261) and CITORIG = 'DOCUMENTO' and TVALORIG in ('73','74','75') and CITDEST in ('Supervisor','Interventor','DEPLAZO','FELABORACION','FUENTEDEINFO','NPAGO','TRAMITAC');

/*ON SELECTING 73 NOTHING WILL BE SHOWN*/
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','73','Supervisor',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','73','Interventor',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','73','DEPLAZO',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','73','FELABORACION',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','73','FUENTEDEINFO',1,0);

--/*ON SELECT 74 ONLY NPAGO AND TRAMITE SHOW*/
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','74','Supervisor',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','74','Interventor',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','74','DEPLAZO',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','74','FELABORACION',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','74','FUENTEDEINFO',1,0);

/* ON SELECTING INFORME TECHNICO  ONE FIELD WILL BE SHOWN*/
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','75','Supervisor',1,1);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','75','Interventor',1,1);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','75','DEPLAZO',1,1);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','75','FELABORACION',1,1);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','75','FUENTEDEINFO',1,1);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','75','NPAGO',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840261,'DOCUMENTO','75','TRAMITAC',1,0);

commit;

/