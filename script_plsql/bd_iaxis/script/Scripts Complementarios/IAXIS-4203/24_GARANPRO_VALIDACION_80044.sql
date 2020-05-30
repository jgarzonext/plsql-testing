DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	DELETE pregunprogaran 
	WHERE sproduc =  80044
	AND cpregun IN (4066, 4211);
	
	DELETE garanpro_validacion
	WHERE sproduc = 80044
	AND tvalgar = 'pac_propio_garanproval_conf.f_val_preg_incom(4211)';
	
	
	UPDATE pregunpro
	SET cpreobl = 0
	WHERE sproduc =  80044
	AND cpregun = 4211;
	
	UPDATE pregunpro
	SET cpretip = 2, ctarpol = 1, ccalcular =  1
	WHERE sproduc =  80044
	AND cpregun = 623;
	
	UPDATE pregunprogaran
	SET cpreobl = 0
	WHERE sproduc =  80044
	AND cpregun != 8001;
	
	DELETE pregunprogaran
	WHERE sproduc = 80044
	AND cpregun = 4822
	AND cgarant = 7050;
	
	
	INSERT INTO pregunprogaran (sproduc,cactivi,cgarant,cpregun,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,esccero,visiblecol,visiblecert,cvisible,cmodo) 
		VALUES (80044,2,7050,4822,1,4,NULL,0,NULL,0,0,NULL,NULL,0,0,1,2,'T');
	INSERT INTO pregunprogaran (sproduc,cactivi,cgarant,cpregun,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,esccero,visiblecol,visiblecert,cvisible,cmodo) 
		VALUES (80044,3,7050,4822,1,4,NULL,0,NULL,0,0,NULL,NULL,0,0,1,2,'T');
	INSERT INTO pregunprogaran (sproduc,cactivi,cgarant,cpregun,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,esccero,visiblecol,visiblecert,cvisible,cmodo) 
		VALUES (80044,4,7050,4822,1,4,NULL,0,NULL,0,0,NULL,NULL,0,0,1,2,'T');
	INSERT INTO pregunprogaran (sproduc,cactivi,cgarant,cpregun,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,esccero,visiblecol,visiblecert,cvisible,cmodo)
		VALUES (80044,5,7050,4822,1,4,NULL,0,NULL,0,0,NULL,NULL,0,0,1,2,'T');

	
	COMMIT;
	
END;
/