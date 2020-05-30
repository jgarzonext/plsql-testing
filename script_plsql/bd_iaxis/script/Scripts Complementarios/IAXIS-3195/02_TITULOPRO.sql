DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE titulopro
	SET trotulo = 'CDCE'
	WHERE cramo = 801
	AND cmodali = 7
	AND ctipseg = 2
	AND ccolect = 0;

	UPDATE titulopro
	SET ttitulo = 'Cumplimiento Derivado Contrato CA', trotulo = 'CDC CA'
	WHERE cramo = 801
	AND cmodali = 8
	AND ctipseg = 1
	AND ccolect = 0;

	UPDATE titulopro
	SET ttitulo = 'Cumplimiento Derivado Contrato Dólar CA', trotulo = 'CDCD CA'
	WHERE cramo = 801
	AND cmodali = 9
	AND ctipseg = 1
	AND ccolect = 0;

	UPDATE titulopro
	SET ttitulo = 'Cumplimiento Derivado Contrato Euro CA', trotulo = 'CDCE CA'
	WHERE cramo = 801
	AND cmodali = 9
	AND ctipseg = 2
	AND ccolect = 0;
	
	COMMIT;
	
END;
/