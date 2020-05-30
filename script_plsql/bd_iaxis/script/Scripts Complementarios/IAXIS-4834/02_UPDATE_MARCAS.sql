ALTER TABLE per_agr_marcas DISABLE CONSTRAINT per_agr_marcas_agr_marcas_fk;
/


DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	UPDATE agr_marcas
	SET cmarca = '0300'
	WHERE cmarca = '0200';

	UPDATE agr_marcas
	SET cmarca = '0301'
	WHERE cmarca = '0201';

	UPDATE per_agr_marcas
	SET cmarca = '0300'
	WHERE cmarca = '0200';

	UPDATE per_agr_marcas
	SET cmarca = '0301'
	WHERE cmarca = '0201';

	
	COMMIT;
	
END;
/


ALTER TABLE per_agr_marcas ENABLE CONSTRAINT per_agr_marcas_agr_marcas_fk;
/
