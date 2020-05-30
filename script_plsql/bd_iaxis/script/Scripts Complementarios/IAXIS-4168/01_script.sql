DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 

BEGIN

SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto FROM DUAL;
   
   delete from AXIS_LITERALES where SLITERA = 89907039;
   delete from AXIS_CODLITERALES where SLITERA  = 89907039;
   
    INSERT INTO AXIS_CODLITERALES (CLITERA, SLITERA) VALUES (3,89907039);
	INSERT INTO AXIS_LITERALES VALUES (1,89907039,'Reporte de bitacora de ingenieria');
	INSERT INTO AXIS_LITERALES VALUES (2,89907039,'Reporte de bitacora de ingenieria');
	INSERT INTO AXIS_LITERALES VALUES (8,89907039,'Reporte de bitacora de ingenieria');
	
	delete from CFG_LANZAR_INFORMES
	where cmap like 'BitacoraIngenieria';

	Insert into CFG_LANZAR_INFORMES (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,SLITERA,LPARAMS,GENERA_REPORT,CCFGFORM,LEXPORT,CTIPO,CGENREC,CAREA) values 
	('24','AXISLIST003','BitacoraIngenieria','GENERAL','0','89907039',null,'1','GENERAL','XLSX | PDF','1','0','3');

	delete from DET_LANZAR_INFORMES
	where cmap like 'BitacoraIngenieria';

	Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values 
	('24','BitacoraIngenieria','1','Reporte de bitacora de ingenieria','bitacora.jasper');
	Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values 
	('24','BitacoraIngenieria','2','Reporte de bitacora de ingenieria','bitacora.jasper');
	Insert into DET_LANZAR_INFORMES (CEMPRES,CMAP,CIDIOMA,TDESCRIP,CINFORME) values 
	('24','BitacoraIngenieria','8','Reporte de bitacora de ingenieria','bitacora.jasper');

	delete from CFG_LANZAR_INFORMES_PARAMS
	where cmap = 'BitacoraIngenieria';

	Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
	values ('24','AXISLIST003','BitacoraIngenieria','GENERAL','0','GENERAL','RAMO','3','100784','1','1','SELECT: select 0 v, ''TODOS'' d from dual union SELECT cramo v, tramo d FROM ramos WHERE cidioma = 8');
	
	Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
	values ('24','AXISLIST003','BitacoraIngenieria','GENERAL','0','GENERAL','FINICIO','1','9000526','3','1',null);
	
	Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
	values ('24','AXISLIST003','BitacoraIngenieria','GENERAL','0','GENERAL','FFIN','2','9000527','3','1',null);

   commit;
END;
/