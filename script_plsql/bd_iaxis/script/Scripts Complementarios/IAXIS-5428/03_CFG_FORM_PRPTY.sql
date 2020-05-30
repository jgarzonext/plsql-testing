DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	

	DELETE cfg_form_property WHERE cform = 'AXISCTR175' AND cidcfg IN (212001, 212002, 212003, 212004, 212005);

	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212001, 'AXISCTR175', 'BT_ANT', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212001, 'AXISCTR175', 'BT_SEG', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212001, 'AXISCTR175', 'BT_NOU_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212001, 'AXISCTR175', 'BT_MODIF_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212001, 'AXISCTR175', 'BT_DEL_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212002, 'AXISCTR175', 'BT_ANT', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212002, 'AXISCTR175', 'BT_SEG', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212002, 'AXISCTR175', 'BT_NOU_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212002, 'AXISCTR175', 'BT_MODIF_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212002, 'AXISCTR175', 'BT_DEL_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212003, 'AXISCTR175', 'BT_ANT', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212003, 'AXISCTR175', 'BT_SEG', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212003, 'AXISCTR175', 'BT_NOU_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212003, 'AXISCTR175', 'BT_MODIF_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212003, 'AXISCTR175', 'BT_DEL_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212004, 'AXISCTR175', 'BT_ANT', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212004, 'AXISCTR175', 'BT_SEG', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212004, 'AXISCTR175', 'BT_NOU_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212004, 'AXISCTR175', 'BT_MODIF_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212004, 'AXISCTR175', 'BT_DEL_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212005, 'AXISCTR175', 'BT_ANT', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212005, 'AXISCTR175', 'BT_SEG', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212005, 'AXISCTR175', 'BT_NOU_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212005, 'AXISCTR175', 'BT_MODIF_CORR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 212005, 'AXISCTR175', 'BT_DEL_CORR', 1, 0);
	
	
    COMMIT;
	
END;
/