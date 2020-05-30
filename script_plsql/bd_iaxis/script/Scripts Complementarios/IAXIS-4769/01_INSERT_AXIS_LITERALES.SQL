DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE  AXIS_LITERALES WHERE SLITERA IN (9908741,9908495,9908516,9908517,9908518,9908519,9908770) AND CIDIOMA = 8;
	
    INSERT INTO AXIS_LITERALES VALUES (8,9908741,'Nombre del intermediario');
    INSERT INTO AXIS_LITERALES VALUES (8,9908495,'Mantenimiento de correos de mediadores');
    INSERT INTO AXIS_LITERALES VALUES (8,9908516,'Correo por defeco');
    INSERT INTO AXIS_LITERALES VALUES (8,9908517,'Recibe correo');
    INSERT INTO AXIS_LITERALES VALUES (8,9908518,'Correos');
    INSERT INTO AXIS_LITERALES VALUES (8,9908519,'Tipo correo');
    INSERT INTO AXIS_LITERALES VALUES (8,9908770,'Generar plantilla de régimen simplificado');
	
	COMMIT;
	
END;
/