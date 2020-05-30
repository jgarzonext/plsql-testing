DECLARE
	v_contexto NUMBER := 0;
BEGIN
	
	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
    
    DELETE cfg_form_property WHERE cform = 'AXISCTR207' AND cidcfg IN (237802, 239802, 915802) AND citem IN ('FINIVIG', 'FFINVIG');
	
	INSERT INTO CFG_FORM_PROPERTY VALUES (24,237802,'AXISCTR207','FINIVIG',2,0);
	INSERT INTO CFG_FORM_PROPERTY VALUES (24,237802,'AXISCTR207','FFINVIG',2,0);
	INSERT INTO CFG_FORM_PROPERTY VALUES (24,239802,'AXISCTR207','FINIVIG',2,0);
	INSERT INTO CFG_FORM_PROPERTY VALUES (24,239802,'AXISCTR207','FFINVIG',2,0);
	INSERT INTO CFG_FORM_PROPERTY VALUES (24,915802,'AXISCTR207','FINIVIG',2,0);
	INSERT INTO CFG_FORM_PROPERTY VALUES (24,915802,'AXISCTR207','FFINVIG',2,0);
	
	
	COMMIT;
	
END;
/