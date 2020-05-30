DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE detvalores WHERE cvalor = 8002004;
	DELETE valores  WHERE cvalor = 8002004;
	
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002004, 1, 'Àrea responsable Marques');
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002004, 2, 'Área responsable Marcas');
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002004, 8, 'Área responsable Marcas');
	
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
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 1, 5, 'Tècnic');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 2, 5, 'Técnico');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 8, 5, 'Técnico');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 1, 7, 'Clients - Tècnic');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 2, 7, 'Clientes - Técnico');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 8, 7, 'Clientes - Técnico');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 1, 8, 'Riscos - Tècnic');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 2, 8, 'Riesgos - Técnico');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002004, 8, 8, 'Riesgos - Técnico');
	
	
	DELETE detvalores WHERE cvalor = 8002008;
	DELETE valores  WHERE cvalor = 8002008;
	
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002008, 1, 'Acció Marques');
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002008, 2, 'Acción Marcas');
	INSERT INTO valores (cvalor, cidioma, tvalor) VALUES (8002008, 8, 'Acción Marcas');
	
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 1, 0, 'PSU');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 2, 0, 'PSU');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 8, 0, 'PSU');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 1, 1, 'Informativa');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 2, 1, 'Informativa');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 8, 1, 'Informativa');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 1, 2, 'Validació');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 2, 2, 'Validación');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002008, 8, 2, 'Validación');
	
	DELETE detvalores WHERE cvalor = 31;

	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 0, 'Inactiu');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 0, 'Inactivo');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 0, 'Inactivo');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 1, 'Actiu');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 1, 'Activo');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 1, 'Activo');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 2, 'Inactiu per baixa producció');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 2, 'Inactivo por baja producción');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 2, 'Inactivo por baja producción');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 3, 'Liquidació Societat');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 3, 'Liquidación Sociedad');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 3, 'Liquidación Sociedad');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 4, 'Cancel·lació clau intermediari');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 4, 'Cancelación clave intermediario');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 4, 'Cancelación clave intermediario');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 6, 'Retingut al gir per canvi de règim');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 6, 'Retenido al giro por cambio de régimen');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 6, 'Retenido al giro por cambio de régimen');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 1, 7, 'Retinguda l''emissió');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 2, 7, 'Retenida la emisión');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (31, 8, 7, 'Retenida la emisión');
	
    
    COMMIT;
	
END;