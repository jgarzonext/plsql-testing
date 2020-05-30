DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	UPDATE codipregun
	SET tconsulta = 'SELECT rds.nmovimi, rds.ncertdian 
FROM rango_dian_movseguro rds 
INNER JOIN recibos r ON r.sseguro = rds.sseguro AND rds.nmovimi = r.nmovimi AND r.ctiprec not in (8, 9)
INNER JOIN movseguro ms ON rds.sseguro = ms.sseguro AND rds.nmovimi = ms.nmovimi AND ms.cmovseg != 52
WHERE rds.sseguro = (SELECT ssegpol FROM estseguros WHERE npoliza = :PMT_NPOLIZA) 
ORDER BY rds.nmovimi DESC'
	WHERE cpregun = 9802;
	
	
	COMMIT;
	
END;
/