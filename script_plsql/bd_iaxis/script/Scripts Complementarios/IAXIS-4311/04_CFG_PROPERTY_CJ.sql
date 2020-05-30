DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	DELETE cfg_form WHERE cmodo = 'SUPLEMENTO_918' AND cform IN ('AXISCTR004', 'AXISCTR207') AND sproduc IN (80008);
	
	INSERT INTO cfg_form(cempres, cform, cmodo, ccfgform, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80008, 918005);
	INSERT INTO cfg_form(cempres, cform, cmodo, ccfgform, sproduc, cidcfg) VALUES (24, 'AXISCTR207', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80008, 918001);
	
	
	DELETE cfg_form WHERE cmodo = 'SUPLEMENTO_828' AND cform = 'AXISCTR004' AND sproduc IN (80007, 80008, 80011);
	
	INSERT INTO cfg_form(cempres, cform, cmodo, ccfgform, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_828', 'CFG_CENTRAL', 80007, 828006);
	INSERT INTO cfg_form(cempres, cform, cmodo, ccfgform, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_828', 'CFG_REA_CUM', 80007, 828006);
	INSERT INTO cfg_form(cempres, cform, cmodo, ccfgform, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_828', 'CFG_CENTRAL', 80008, 828006);
	INSERT INTO cfg_form(cempres, cform, cmodo, ccfgform, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_828', 'CFG_REA_CUM', 80008, 828006);
	INSERT INTO cfg_form(cempres, cform, cmodo, ccfgform, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_828', 'CFG_CENTRAL', 80011, 828006);
	INSERT INTO cfg_form(cempres, cform, cmodo, ccfgform, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_828', 'CFG_REA_CUM', 80011, 828006);
	
	
	COMMIT;
	
END;
/