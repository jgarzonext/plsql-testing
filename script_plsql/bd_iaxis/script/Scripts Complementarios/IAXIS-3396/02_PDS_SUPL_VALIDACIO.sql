DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE pds_supl_validacio
	SET CCONFIG = 'conf_915_80007_suplemento_tf'
	WHERE CCONFIG = 'conf_915_8007_suplemento_tf';

	UPDATE pds_supl_validacio
	SET CCONFIG = 'conf_915_80008_suplemento_tf'
	WHERE CCONFIG = 'conf_915_8008_suplemento_tf';

	UPDATE pds_supl_validacio
	SET CCONFIG = 'conf_915_80009_suplemento_tf'
	WHERE CCONFIG = 'conf_915_8009_suplemento_tf';

	UPDATE pds_supl_validacio
	SET CCONFIG = 'conf_915_80010_suplemento_tf'
	WHERE CCONFIG = 'conf_915_8010_suplemento_tf';
	
	COMMIT;
	
END;
/