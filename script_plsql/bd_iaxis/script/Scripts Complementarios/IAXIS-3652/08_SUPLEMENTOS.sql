DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE prodmotmov WHERE sproduc = 80012 AND cmotmov IN (237, 239);

	DELETE  pds_supl_permite
	WHERE cconfig IN (SELECT cconfig FROM pds_supl_config
					  WHERE sproduc = 80012 AND cmotmov IN (237, 239));

	DELETE pds_supl_validacio
	WHERE cconfig IN (SELECT cconfig FROM pds_supl_config
					  WHERE sproduc = 80012 AND cmotmov IN (237, 239));

	DELETE pds_supl_cod_config
	WHERE cconfig IN (SELECT cconfig FROM pds_supl_config
					  WHERE sproduc = 80012 AND cmotmov IN (237, 239));

	DELETE pds_supl_form
	WHERE cconfig IN (SELECT cconfig FROM pds_supl_config
					  WHERE sproduc = 80012 AND cmotmov IN (237, 239));

	DELETE pds_supl_config WHERE sproduc = 80012 AND cmotmov IN (237, 239);
	
	COMMIT;
	
END;
/