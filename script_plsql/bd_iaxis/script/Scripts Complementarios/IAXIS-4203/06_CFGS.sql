DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE cidioma = 8 AND slitera = 2;
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8,2,' ');

	DELETE axis_literales WHERE slitera = 89906315;
    DELETE axis_codliterales WHERE slitera = 89906315;
    INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906315, 3);
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1,89906315,'Dades per a càlcul de tarifa');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2,89906315,'Datos para cálculo de tarifa');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8,89906315,'Datos para cálculo de tarifa');
	
	UPDATE cfg_form
	SET cidcfg = 1881
	WHERE cmodo = 'ALTA_POLIZA'
	AND cform = 'AXISCTR006'
	AND sproduc = 80038;
	
	UPDATE cfg_form
	SET cidcfg = 803801
	WHERE cmodo = 'ALTA_POLIZA'
	AND cform = 'AXISCTR207'
	AND sproduc = 80038;

	UPDATE cfg_form_property
	SET cvalue = 0
	WHERE cidcfg = 803801
	AND cform = 'AXISCTR207'
	AND citem = 'CFORPAG'
	AND cprpty = 1;

	UPDATE cfg_form_property
	SET cvalue = 2
	WHERE cidcfg = 803801
	AND cform = 'AXISCTR207'
	AND citem = 'LIT_PREG_DESPESES'
	AND cprpty = 8;

	
	DELETE cfg_form_property WHERE cidcfg = 803801 AND cform = 'AXISCTR207' AND citem IN ('PRECCOM', 'PDTOTEC') AND cprpty = 1;
	
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,803801,'AXISCTR207','PRECCOM',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,803801,'AXISCTR207','PDTOTEC',1,0);   

	DELETE cfg_form_property WHERE cidcfg = 803801 AND cform = 'AXISCTR207' AND citem = 'LIT_PREG_QUESTSALUT' AND cprpty = 8;
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,803801,'AXISCTR207','LIT_PREG_QUESTSALUT',8,89906315);

	
	COMMIT;
	
END;
/