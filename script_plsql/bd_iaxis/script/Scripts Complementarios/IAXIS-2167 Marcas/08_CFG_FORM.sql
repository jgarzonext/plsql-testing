DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE cfg_form_dep WHERE ccfgdep = 99840293;
	DELETE cfg_form_property WHERE cform = 'AXISAGE003' AND citem = 'CACTIVO' AND cprpty = 4

	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 1, 'AXISAGE003', 'CACTIVO', 4, 99840293);

	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840293, 'CACTIVO', 0, 'FBAJAGE', 3, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840293, 'CACTIVO', 1, 'FBAJAGE', 3, 0);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840293, 'CACTIVO', 2, 'FBAJAGE', 3, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840293, 'CACTIVO', 3, 'FBAJAGE', 3, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840293, 'CACTIVO', 4, 'FBAJAGE', 3, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840293, 'CACTIVO', 6, 'FBAJAGE', 3, 0);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840293, 'CACTIVO', 7, 'FBAJAGE', 3, 0);
    
    COMMIT;
	
END;