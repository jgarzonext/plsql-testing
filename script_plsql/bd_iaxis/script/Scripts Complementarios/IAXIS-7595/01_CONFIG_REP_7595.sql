DECLARE
	v_contexto NUMBER := 0;
BEGIN
	
	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
    
	DELETE cfg_lanzar_informes_params WHERE cmap = 'repCarteraRecaudada';
	DELETE det_lanzar_informes WHERE cmap = 'repCarteraRecaudada';
	DELETE cfg_lanzar_informes WHERE cmap = 'repCarteraRecaudada';

	DELETE axis_literales WHERE slitera = 89908039;
	DELETE axis_codliterales WHERE slitera = 89908039;


	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89908039, 2);


	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89908039, 'Cartera recaudada');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89908039, 'Cartera recaudada');


	INSERT INTO cfg_lanzar_informes (cempres, cform, cmap, tevento, sproduc, slitera, genera_report, ccfgform, lexport, ctipo, cgenrec, carea) 
		VALUES (24, 'AXISLIST003', 'repCarteraRecaudada', 'GENERAL', 0, 89908039, 1, 'GENERAL', 'XLSX', 1, 1, 9);


	INSERT INTO cfg_lanzar_informes_params (cempres, cform, cmap, tevento, sproduc, ccfgform, tparam, norder, slitera, ctipo, notnull, lvalor) 
		VALUES (24, 'AXISLIST003', 'repCarteraRecaudada', 'GENERAL', 0, 'GENERAL', 'FINI', 1, 9000526, 3, 1, NULL);
	INSERT INTO cfg_lanzar_informes_params (cempres, cform, cmap, tevento, sproduc, ccfgform, tparam, norder, slitera, ctipo, notnull, lvalor) 
		VALUES (24, 'AXISLIST003', 'repCarteraRecaudada', 'GENERAL', 0, 'GENERAL', 'FFIN', 2, 9000527, 3, 1, NULL);
	INSERT INTO cfg_lanzar_informes_params (cempres, cform, cmap, tevento, sproduc, ccfgform, tparam, norder, slitera, ctipo, notnull, lvalor) 
		VALUES (24, 'AXISLIST003', 'repCarteraRecaudada', 'GENERAL', 0, 'GENERAL', 'CRAMO', 3, 100784, 2, 1, 'SELECT:SELECT 0 V, ''TODOS'' D FROM DUAL 
	UNION 
	SELECT r.cramo v, r.tramo d 
	FROM codiram c, ramos r, productos p 
	WHERE r.cidioma = 8 
	AND r.cramo = p.cramo 
	AND c.cramo = r.cramo 
	AND p.cactivo = 1 
	AND c.cempres = 24 
	ORDER BY V');

	INSERT INTO cfg_lanzar_informes_params (cempres, cform, cmap, tevento, sproduc, ccfgform, tparam, norder, slitera, ctipo, notnull, lvalor) 
		VALUES (24, 'AXISLIST003', 'repCarteraRecaudada', 'GENERAL', 0, 'GENERAL', 'CSUCURSAL', 4, 9002202, 2, 1, 'SELECT:SELECT 0 V , ''TODAS'' D FROM dual 
	UNION 
	SELECT a.cagente v, PAC_REDCOMERCIAL.ff_desagente (a.cagente, 8, 4) d 
	FROM agentes a, redcomercial r 
	WHERE a.ctipage IN (2, 3) 
	AND r.cagente = a.cagente  
	AND r.fmovfin IS NULL  
	ORDER BY 1');


	INSERT INTO det_lanzar_informes (cempres, cmap, cidioma, tdescrip, cinforme) VALUES (24, 'repCarteraRecaudada', 8, 'Cartera recaudada cliente', 'carteraRecaudadaCliente.jasper');
	
	
	COMMIT;
	
END;
/