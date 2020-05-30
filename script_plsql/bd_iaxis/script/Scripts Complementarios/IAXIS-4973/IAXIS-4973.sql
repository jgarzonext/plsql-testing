DECLARE
  v_contexto NUMBER := 0;
BEGIN

  v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));

DELETE MENU_OPCIONROL where crolmen = '0005-01' AND COPCION IN (994, 920004);

   COMMIT;
	
END;