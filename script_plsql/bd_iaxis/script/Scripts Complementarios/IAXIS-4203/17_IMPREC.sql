DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	update imprec
	set cmoneda = 6
	where cramo = 802
	and cmodali in (6,8)
	and ctipseg = 1;

	update imprec
	set cmoneda = 1
	where cramo = 802
	and cmodali in (6,8)
	and ctipseg = 2;	
	
	
	COMMIT;
	
END;
/