DECLARE
	v_contexto NUMBER := 0;
BEGIN
	
	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	UPDATE sgt_formulas
	SET formula = 'PAC_FORMUL_CONF.F_TASA_CONVENIO_RC(SSEGURO, NRIESGO, NMOVIMI)'
	WHERE clave = 248022;
	
	
	COMMIT;
	
END;
/