DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE pregunpro WHERE cpregun  = 9802;
	DELETE preguntas WHERE cpregun  = 9802;
	DELETE codipregun WHERE cpregun  = 9802;
    

	INSERT INTO codipregun (cpregun, ctippre, ctipgru, tconsulta) VALUES (9802, 6, 3, 'SELECT rds.nmovimi, rds.ncertdian 
	FROM rango_dian_movseguro rds INNER JOIN recibos r ON r.sseguro = rds.sseguro AND rds.nmovimi = r.nmovimi AND r.ctiprec not in (8, 9)
	WHERE rds.sseguro = (SELECT ssegpol FROM estseguros WHERE npoliza = :PMT_NPOLIZA) 
	ORDER BY rds.nmovimi DESC');

	INSERT INTO preguntas (cpregun, cidioma, tpregun) VALUES (9802, 1, 'Certificat base a afectar');
	INSERT INTO preguntas (cpregun, cidioma, tpregun) VALUES (9802, 2, 'Certificado base a afectar');
	INSERT INTO preguntas (cpregun, cidioma, tpregun) VALUES (9802, 8, 'Certificado base a afectar');

	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 1, 0, 802, 2, 8062, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 1, 0, 802, 3, 8063, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 1, 0, 802, 4, 8064, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 6, 0, 801, 1, 80001, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 7, 0, 801, 1, 80002, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 7, 0, 801, 2, 80003, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 8, 0, 801, 1, 80004, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 9, 0, 801, 1, 80005, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 9, 0, 801, 2, 80006, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 10, 0, 801, 1, 80007, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 11, 0, 801, 1, 80008, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 12, 0, 801, 1, 80009, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 13, 0, 801, 1, 80010, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 14, 0, 801, 1, 80011, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 15, 0, 801, 1, 80012, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 5, 0, 802, 1, 80038, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 6, 0, 802, 1, 80039, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 6, 0, 802, 2, 80040, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 7, 0, 802, 1, 80041, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 8, 0, 802, 1, 80042, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 8, 0, 802, 2, 80043, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	INSERT INTO pregunpro (cpregun, cmodali, ccolect, cramo, ctipseg, sproduc, cpretip, npreord, tprefor, cpreobl, npreimp, cresdef, cofersn, cmodo, cnivel, ctarpol, cvisible, esccero, visiblecol, visiblecert, crecarg, ccalcular)
		VALUES(9802, 9, 0, 802, 1, 80044, 1, 24, NULL, 0, NULL, NULL, 1, 'S', 'R', 0, 2, 0, 0, 1, 0, NULL);
	
	
	COMMIT;
	
END;
/