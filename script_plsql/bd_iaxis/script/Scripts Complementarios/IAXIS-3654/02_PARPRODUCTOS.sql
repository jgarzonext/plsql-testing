DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE parproductos WHERE cparpro = 'TRATA_REC_SUSPENSION' AND sproduc IN (80001, 80002, 80003);
	
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80001, 'TRATA_REC_SUSPENSION', 0);	
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80002, 'TRATA_REC_SUSPENSION', 0);	
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80003, 'TRATA_REC_SUSPENSION', 0);	
	
	UPDATE parproductos
	SET cvalpar = 0
	WHERE cparpro = 'PERMITE_SUSPENSION'
	AND sproduc BETWEEN 80004 AND 80011;
	
	
	COMMIT;
	
END;
/