DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));
	
	
	DELETE respuestas WHERE cpregun = 9803;
	DELETE pregunpro WHERE cpregun = 9803 AND sproduc IN (8062, 8063, 8064, 80038, 80039, 80040, 80041, 80042, 80043, 80044);
	DELETE clausupreg WHERE cpregun = 9803;
	DELETE codirespuestas WHERE cpregun = 9803;
	DELETE preguntas WHERE cpregun = 9803;
	DELETE codipregun WHERE cpregun = 9803;
	
	
	INSERT INTO codipregun (cpregun, ctippre, ctipgru, tconsulta) VALUES (9803, 1, NULL, NULL);

	INSERT INTO preguntas (cpregun, cidioma, tpregun) VALUES (9803, 1, 'Té beneficiari addicional?');
	INSERT INTO preguntas (cpregun, cidioma, tpregun) VALUES (9803, 2, '¿Tiene beneficiario adicional?');
	INSERT INTO preguntas (cpregun, cidioma, tpregun) VALUES (9803, 8, '¿Tiene beneficiario adicional?');
	
	INSERT INTO codirespuestas (cpregun, crespue) VALUES (9803, 0);
	INSERT INTO codirespuestas (cpregun, crespue) VALUES (9803, 1);
	
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (9803, 1, 0, 802, 2, 8062, 2, 23, NULL, 0, NULL, NULL, 0, NULL, NULL, 'T', 'P', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (9803, 1, 0, 802, 3, 8063, 2, 23, NULL, 0, NULL, NULL, 0, NULL, NULL, 'T', 'P', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (9803, 1, 0, 802, 4, 8064, 2, 23, NULL, 0, NULL, NULL, 0, NULL, NULL, 'T', 'P', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (9803, 5, 0, 802, 1, 80038, 2, 23, NULL, 0, NULL, NULL, 0, NULL, NULL, 'T', 'P', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (9803, 6, 0, 802, 1, 80039, 2, 23, NULL, 0, NULL, NULL, 0, NULL, NULL, 'T', 'P', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (9803, 6, 0, 802, 2, 80040, 2, 23, NULL, 0, NULL, NULL, 0, NULL, NULL, 'T', 'P', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (9803, 7, 0, 802, 1, 80041, 2, 23, NULL, 0, NULL, NULL, 0, NULL, NULL, 'T', 'P', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (9803, 8, 0, 802, 1, 80042, 2, 23, NULL, 0, NULL, NULL, 0, NULL, NULL, 'T', 'P', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (9803, 8, 0, 802, 2, 80043, 2, 23, NULL, 0, NULL, NULL, 0, NULL, NULL, 'T', 'P', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular, tmodalidad, ctipconv) VALUES (9803, 9, 0, 802, 1, 80044, 2, 23, NULL, 0, NULL, NULL, 0, NULL, NULL, 'T', 'P', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);
	
	INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (1,9803,8,'Si',NULL);
	INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (0,9803,8,'No',NULL);
	INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (1,9803,2,'Si',NULL);
	INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (0,9803,2,'No',NULL);
	INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (1,9803,1,'Si',NULL);
	INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (0,9803,1,'No',NULL);
	
	
	COMMIT;
	
END;
/