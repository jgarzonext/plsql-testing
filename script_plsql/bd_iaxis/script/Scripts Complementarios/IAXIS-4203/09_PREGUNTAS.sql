DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE codipregun
	SET ctipgru = 2
	WHERE cpregun = 4211;
	
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (4211,5,0,802,1,80038,1,19,'',1,null,null,1,null,'','T','R',1,2,0,1,1,0,null,null,null);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (4211,6,0,802,1,80039,1,19,'',1,null,null,1,null,'','T','R',1,2,0,1,1,0,null,null,null);

	UPDATE pregunpro
	SET ctarpol = 1, ccalcular =1
	WHERE sproduc IN (80038, 80039)
	AND cpregun = 623;
	
	
	COMMIT;
	
END;
/