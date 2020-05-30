DECLARE
	v_contexto NUMBER := 0;
	
	CURSOR prod_pesos IS
		SELECT bf.sproduc, p.cramo, p.cmodali, p.ctipseg, p.ccolect, bf.cactivi, bf.cgarant 
		FROM bf_progarangrup bf
		INNER JOIN productos p ON bf.sproduc = p.sproduc AND p.sproduc IN (80038, 80041, 80044)
		ORDER BY bf.sproduc, bf.cactivi, bf.cgarant;
		

	CURSOR prod_dolar IS
		SELECT bf.sproduc, p.cramo, p.cmodali, p.ctipseg, p.ccolect, bf.cactivi, bf.cgarant 
		FROM bf_progarangrup bf
		INNER JOIN productos p ON bf.sproduc = p.sproduc AND p.sproduc IN (80039, 80042)
		ORDER BY bf.sproduc, bf.cactivi, bf.cgarant;
		
	CURSOR prod_euros IS
		SELECT bf.sproduc, p.cramo, p.cmodali, p.ctipseg, p.ccolect, bf.cactivi, bf.cgarant 
		FROM bf_progarangrup bf
		INNER JOIN productos p ON bf.sproduc = p.sproduc AND p.sproduc IN (80040, 80043)
		ORDER BY bf.sproduc, bf.cactivi, bf.cgarant;

BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE pargaranpro WHERE cpargar = 'IMP_DEF_DEDUC' AND sproduc BETWEEN 80038 AND 80044;
	DELETE desparam WHERE cparam = 'IMP_DEF_DEDUC';
	DELETE codparam WHERE cparam = 'IMP_DEF_DEDUC';

	INSERT INTO codparam (cparam,cutili,ctipo,cgrppar,norden,cobliga,tdefecto,cvisible) VALUES ('IMP_DEF_DEDUC',3,2,'GEN',115,0,NULL,1);

	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('IMP_DEF_DEDUC', 1, 'Importe por defecto en deducibles');
	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('IMP_DEF_DEDUC', 2, 'Importe por defecto en deducibles');
	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('IMP_DEF_DEDUC', 8, 'Importe por defecto en deducibles');	

	FOR c IN prod_pesos LOOP
		
		INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) 
			VALUES (c.cramo, c.cmodali, c.ctipseg, c.ccolect, c.cactivi, c.cgarant, 'IMP_DEF_DEDUC', 100000, c.sproduc);
		
	END LOOP;
	
	FOR c IN prod_dolar LOOP
		
		INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) 
			VALUES (c.cramo, c.cmodali, c.ctipseg, c.ccolect, c.cactivi, c.cgarant, 'IMP_DEF_DEDUC', 34, c.sproduc);
		
	END LOOP;
	
	FOR c IN prod_euros LOOP
		
		INSERT INTO pargaranpro (cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) 
			VALUES (c.cramo, c.cmodali, c.ctipseg, c.ccolect, c.cactivi, c.cgarant, 'IMP_DEF_DEDUC', 30, c.sproduc);
		
	END LOOP;
	
	
    COMMIT;
	
END;
/
