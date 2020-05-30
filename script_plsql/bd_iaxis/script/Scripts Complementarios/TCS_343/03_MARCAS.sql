DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, cconsorcio, casegurado, ccodeudor, cbenef, caccionista, cintermed, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0113', 'Ley de insolvencia', 2, 3, 89906215, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, f_user, f_sysdate);
        
    COMMIT;

END;
