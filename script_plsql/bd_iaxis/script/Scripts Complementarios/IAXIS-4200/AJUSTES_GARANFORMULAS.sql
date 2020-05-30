DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE garanformula
	WHERE cgarant NOT IN (SELECT cgarant FROM garanpro WHERE sproduc = 80038)
	AND sproduc = 80038;
	
	DELETE garanformula
	WHERE cgarant NOT IN (SELECT cgarant FROM garanpro WHERE sproduc = 80039)
	AND sproduc = 80039;
	
	DELETE garanformula
	WHERE cgarant NOT IN (SELECT cgarant FROM garanpro WHERE sproduc = 80040)
	AND sproduc = 80040;
	
	UPDATE garanformula
	SET clave = 248028
	WHERE sproduc IN (80038, 80039, 80040)
	AND cactivi = 1
	AND cgarant NOT IN (7050, 7030)
	AND ccampo = 'ICAPCAL';
	
	UPDATE garanformula
	SET clave = 248028
	WHERE sproduc IN (80038, 80039, 80040)
	AND cactivi = 0
	AND cgarant NOT IN (7050, 7030, 7031, 7032, 7033, 7034, 7037, 7051, 7052, 7053, 7054, 7057)
	AND ccampo = 'ICAPCAL';
	
	DELETE pargaranpro WHERE cpargar = 'ORDEN_TARIF' AND sproduc IN (80038, 80039, 80040) AND cgarant IN (7050, 7030);
	
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 5, 1, 0, 0, 7050, 'ORDEN_TARIF', 1, 80038);
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 5, 1, 0, 0, 7030, 'ORDEN_TARIF', 2, 80038);
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 5, 1, 0, 1, 7050, 'ORDEN_TARIF', 1, 80038);
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 5, 1, 0, 1, 7030, 'ORDEN_TARIF', 2, 80038);
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 6, 1, 0, 0, 7050, 'ORDEN_TARIF', 1, 80039);
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 6, 1, 0, 0, 7030, 'ORDEN_TARIF', 2, 80039);
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 6, 1, 0, 1, 7050, 'ORDEN_TARIF', 1, 80039);
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 6, 1, 0, 1, 7030, 'ORDEN_TARIF', 2, 80039);
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 6, 2, 0, 0, 7050, 'ORDEN_TARIF', 1, 80040);
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 6, 2, 0, 0, 7030, 'ORDEN_TARIF', 2, 80040);
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 6, 2, 0, 1, 7050, 'ORDEN_TARIF', 1, 80040);
	INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 6, 2, 0, 1, 7030, 'ORDEN_TARIF', 2, 80040);

	
    COMMIT;
	
END;
/