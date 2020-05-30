DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera IN (9909331, 9909332, 9909333, 9909334, 9909335, 9909336, 9909337, 89906215, 89906216, 89906217, 89906218);
	DELETE axis_codliterales WHERE slitera IN (89906216, 89906217, 89906218);

	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906216, 3);
	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906217, 3);
	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906218, 3);

	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909331, 'FCC desactualitzat, gestioni actualització d''informació i tramiti aixecament de marca en la seva sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909331, 'FCC desactualizado, gestione actualización de información y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909331, 'FCC desactualizado, gestione actualización de información y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909332, 'Pendent de FCC, gestioni obtenció i tramiti aixecament de marca en la seva sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909332, 'Pendiente de FCC, gestione obtención y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909332, 'Pendiente de FCC, gestione obtención y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909333, 'Tercer amb alertes a Llistes Locals, endavant deguda diligència, i tramiti aixecament de marca en la seva sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909333, 'Tercero con alertas en Listas Locales, adelante debida diligencia,y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909333, 'Tercero con alertas en Listas Locales, adelante debida diligencia,y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909334, 'Tercer Inclòs en llista Internacional, poseu-vos amb la Gerència de Riscos quan en el seu procés de deguda diligència va determinar que és un fals positiu');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909334, 'Tercero Incluido en lista Internacional, comuníquese con la Gerencia de Riesgos cuando en su proceso de debida diligencia determinó que es un falso positivo');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909334, 'Tercero Incluido en lista Internacional, comuníquese con la Gerencia de Riesgos cuando en su proceso de debida diligencia determinó que es un falso positivo');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909335, 'FCC retornat, gestioni actualització d''informació i tramiti aixecament de marca en la seva sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909335, 'FCC devuelto, gestione actualización de información y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909335, 'FCC devuelto, gestione actualización de información y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909336, 'Client PEP. Endavant deguda diligència i sol·liciti autorització al gerent o subgerent de Producte en la Gerència Tècnica');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909336, 'Cliente PEP. Adelante debida diligencia y solicite autorización al Gerente o Subgerente de Producto en la Gerencia Técnica');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909336, 'Cliente PEP .Adelante debida diligencia y solicite autorización al Gerente o Subgerente de Producto en la Gerencia Técnica');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909337, 'Marca Bridger. Endavant deguda diligència i sol·liciti aixecament al Gerent de línia en la Gerència Tècnica.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909337, 'Marca Bridger. Adelante debida diligencia y solicite levantamiento al Gerente de linea en la Gerencia Técnica.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909337, 'Marca Bridger. Adelante debida diligencia y solicite levantamiento al Gerente de linea en la Gerencia Técnica.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906215, 'Client en Llei d''insolvència');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906215, 'Cliente en Ley de Insolvencia');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906215, 'Cliente en Ley de Insolvencia');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906216, 'Comunicar-se amb l''àrea de Clients');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906216, 'Comunicarse con el área de Clientes');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906216, 'Comunicarse con el área de Clientes');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906217, 'Client amb contragarantía Pendent');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906217, 'Cliente con Contragarantía Pendiente');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906217, 'Cliente con Contragarantía Pendiente');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906218, 'Comunicar-se amb l''àrea Comercial');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906218, 'Comunicarse con el área Comercial');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906218, 'Comunicarse con el área Comercial');
    
    COMMIT;
	
END;