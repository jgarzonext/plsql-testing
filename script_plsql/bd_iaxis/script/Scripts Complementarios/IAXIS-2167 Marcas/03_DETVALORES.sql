DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE detvalores WHERE cvalor = 8002004;
	DELETE valores  WHERE cvalor = 8002004;
	
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002004, 1, '�rea responsable Marques');
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002004, 2, '�rea responsable Marcas');
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002004, 8, '�rea responsable Marcas');
	
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 1, 1, 'Cartera');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 2, 1, 'Cartera');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 8, 1, 'Cartera');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 1, 2, 'Comercial');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 2, 2, 'Comercial');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 8, 2, 'Comercial');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 1, 3, 'Indemnitzacions');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 2, 3, 'Indemnizaciones');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 8, 3, 'Indemnizaciones');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 1, 4, 'Riscos');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 2, 4, 'Riesgos');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 8, 4, 'Riesgos');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 1, 5, 'T�cnic');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 2, 5, 'T�cnico');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 8, 5, 'T�cnico');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 1, 7, 'Clients - T�cnic');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 2, 7, 'Clientes - T�cnico');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 8, 7, 'Clientes - T�cnico');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 1, 8, 'Riscos - T�cnic');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 2, 8, 'Riesgos - T�cnico');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 8, 8, 'Riesgos - T�cnico');
	
	
	DELETE detvalores WHERE cvalor = 8002008;
	DELETE valores  WHERE cvalor = 8002008;
	
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002008, 1, 'Acci� Marques');
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002008, 2, 'Acci�n Marcas');
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002008, 8, 'Acci�n Marcas');
	
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 1, 0, 'PSU');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 2, 0, 'PSU');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 8, 0, 'PSU');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 1, 1, 'Informativa');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 2, 1, 'Informativa');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 8, 1, 'Informativa');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 1, 2, 'Validaci�');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 2, 2, 'Validaci�n');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 8, 2, 'Validaci�n');
	
	DELETE detvalores WHERE cvalor = 31;

	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 0, 'Inactiu');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 0, 'Inactivo');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 0, 'Inactivo');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 1, 'Actiu');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 1, 'Activo');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 1, 'Activo');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 2, 'Inactiu per baixa producci�');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 2, 'Inactivo por baja producci�n');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 2, 'Inactivo por baja producci�n');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 3, 'Liquidaci� Societat');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 3, 'Liquidaci�n Sociedad');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 3, 'Liquidaci�n Sociedad');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 4, 'Cancel�laci� clau intermediari');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 4, 'Cancelaci�n clave intermediario');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 4, 'Cancelaci�n clave intermediario');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 6, 'Retingut al gir per canvi de r�gim');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 6, 'Retenido al giro por cambio de r�gimen');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 6, 'Retenido al giro por cambio de r�gimen');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 7, 'Retinguda l''emissi�');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 7, 'Retenida la emisi�n');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 7, 'Retenida la emisi�n');
	
    
    COMMIT;
	
END;