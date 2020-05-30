DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE cfg_avisos WHERE cidrel = 24 AND cmodo = 'ALTA_POLIZA' AND cform = 'AXISCTR006' AND sproduc BETWEEN 80038 AND 80043;
	
	INSERT INTO cfg_avisos(cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel) VALUES (24, 'AXISCTR006', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80038, 24);
	INSERT INTO cfg_avisos(cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel) VALUES (24, 'AXISCTR006', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80039, 24);
	INSERT INTO cfg_avisos(cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel) VALUES (24, 'AXISCTR006', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80040, 24);
	INSERT INTO cfg_avisos(cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel) VALUES (24, 'AXISCTR006', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80041, 24);
	INSERT INTO cfg_avisos(cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel) VALUES (24, 'AXISCTR006', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80042, 24);
	INSERT INTO cfg_avisos(cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel) VALUES (24, 'AXISCTR006', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80043, 24);
	
	
	COMMIT;
	
END;
/