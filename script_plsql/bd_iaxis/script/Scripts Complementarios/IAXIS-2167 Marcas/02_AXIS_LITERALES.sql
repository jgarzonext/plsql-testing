DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera IN (9909331, 9909332, 9909333, 9909334, 9909335, 9909336, 9909337, 89906215, 89906216, 89906217, 89906218);
	DELETE axis_codliterales WHERE slitera IN (89906216, 89906217, 89906218);

	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906216, 3);
	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906217, 3);
	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906218, 3);

	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909331, 'FCC desactualitzat, gestioni actualitzaci� d''informaci� i tramiti aixecament de marca en la seva sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909331, 'FCC desactualizado, gestione actualizaci�n de informaci�n y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909331, 'FCC desactualizado, gestione actualizaci�n de informaci�n y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909332, 'Pendent de FCC, gestioni obtenci� i tramiti aixecament de marca en la seva sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909332, 'Pendiente de FCC, gestione obtenci�n y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909332, 'Pendiente de FCC, gestione obtenci�n y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909333, 'Tercer amb alertes a Llistes Locals, endavant deguda dilig�ncia, i tramiti aixecament de marca en la seva sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909333, 'Tercero con alertas en Listas Locales, adelante debida diligencia,y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909333, 'Tercero con alertas en Listas Locales, adelante debida diligencia,y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909334, 'Tercer Incl�s en llista Internacional, poseu-vos amb la Ger�ncia de Riscos quan en el seu proc�s de deguda dilig�ncia va determinar que �s un fals positiu');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909334, 'Tercero Incluido en lista Internacional, comun�quese con la Gerencia de Riesgos cuando en su proceso de debida diligencia determin� que es un falso positivo');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909334, 'Tercero Incluido en lista Internacional, comun�quese con la Gerencia de Riesgos cuando en su proceso de debida diligencia determin� que es un falso positivo');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909335, 'FCC retornat, gestioni actualitzaci� d''informaci� i tramiti aixecament de marca en la seva sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909335, 'FCC devuelto, gestione actualizaci�n de informaci�n y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909335, 'FCC devuelto, gestione actualizaci�n de informaci�n y tramite levantamiento de marca en su sucursal.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909336, 'Client PEP. Endavant deguda dilig�ncia i sol�liciti autoritzaci� al gerent o subgerent de Producte en la Ger�ncia T�cnica');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909336, 'Cliente PEP. Adelante debida diligencia y solicite autorizaci�n al Gerente o Subgerente de Producto en la Gerencia T�cnica');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909336, 'Cliente PEP .Adelante debida diligencia y solicite autorizaci�n al Gerente o Subgerente de Producto en la Gerencia T�cnica');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 9909337, 'Marca Bridger. Endavant deguda dilig�ncia i sol�liciti aixecament al Gerent de l�nia en la Ger�ncia T�cnica.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 9909337, 'Marca Bridger. Adelante debida diligencia y solicite levantamiento al Gerente de linea en la Gerencia T�cnica.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 9909337, 'Marca Bridger. Adelante debida diligencia y solicite levantamiento al Gerente de linea en la Gerencia T�cnica.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906215, 'Client en Llei d''insolv�ncia');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906215, 'Cliente en Ley de Insolvencia');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906215, 'Cliente en Ley de Insolvencia');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906216, 'Comunicar-se amb l''�rea de Clients');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906216, 'Comunicarse con el �rea de Clientes');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906216, 'Comunicarse con el �rea de Clientes');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906217, 'Client amb contragarant�a Pendent');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906217, 'Cliente con Contragarant�a Pendiente');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906217, 'Cliente con Contragarant�a Pendiente');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906218, 'Comunicar-se amb l''�rea Comercial');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906218, 'Comunicarse con el �rea Comercial');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906218, 'Comunicarse con el �rea Comercial');
    
    COMMIT;
	
END;