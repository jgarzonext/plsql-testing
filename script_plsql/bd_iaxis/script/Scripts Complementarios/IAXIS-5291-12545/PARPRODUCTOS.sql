DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE parproductos WHERE cparpro = 'RESTA_PRIMA_ANTERIOR' AND sproduc IN(8062);
	DELETE desparam WHERE cparam = 'RESTA_PRIMA_ANTERIOR';
	DELETE codparam WHERE cparam = 'RESTA_PRIMA_ANTERIOR';

	INSERT INTO codparam (cparam, cutili, ctipo, cgrppar, cobliga, tdefecto, cvisible) VALUES ('RESTA_PRIMA_ANTERIOR', 1, 2, 'GEN', 0, 0, 1);

	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('RESTA_PRIMA_ANTERIOR', 1, 'Si resta la prima actual a la anterior');
	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('RESTA_PRIMA_ANTERIOR', 2, 'Si resta la prima actual a la anterior');
	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('RESTA_PRIMA_ANTERIOR', 8, 'Si resta la prima actual a la anterior');

	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (8062, 'RESTA_PRIMA_ANTERIOR', 1);
	
	COMMIT;
	
END;
/