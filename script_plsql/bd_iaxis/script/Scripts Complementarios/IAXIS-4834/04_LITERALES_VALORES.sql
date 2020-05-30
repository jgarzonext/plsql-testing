DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	DELETE axis_literales WHERE slitera IN (89907072, 89907073, 89907074);
	DELETE axis_codliterales WHERE slitera IN (89907072, 89907073, 89907074);

	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89907072, 3);
	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89907073, 3);
	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89907074, 3);

	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89907072, 'Llista Grups Econ�mics');  -- Carga de archivos
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89907072, 'Lista Grupos Econ�micos');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89907072, 'Lista Grupos Econ�micos');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89907073, 'Grups Econ�mics Restringits');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89907073, 'Grupos Econ�micos Restringidos');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89907073, 'Grupos Econ�micos Restringidos');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89907074, 'Grups Econ�mics Bloquejats');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89907074, 'Grupos Econ�micos Bloqueados');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89907074, 'Grupos Econ�micos Bloqueados');


	DELETE detvalores where cvalor = 800048 AND catribu IN (63, 64, 65);
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 1, 63, 'Grups Econ�mics amb Alerta');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 2, 63, 'Grupos Econ�micos con Alerta');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 8, 63, 'Grupos Econ�micos con Alerta');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 1, 64, 'Grups Econ�mics Restringits');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 2, 64, 'Grupos Econ�micos Restringidos');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 8, 64, 'Grupos Econ�micos Restringidos');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 1, 65, 'Grups Econ�mics Bloquejats');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 2, 65, 'Grupos Econ�micos Bloqueados');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 8, 65, 'Grupos Econ�micos Bloqueados');
    
    COMMIT;

END;