DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE pregunpro
	SET cpreobl = 0
	WHERE cpregun IN (2883, 4211)
	and sproduc BETWEEN 80038 AND 80043;

	DELETE pregunprogaran
	WHERE cpregun = 4066
	AND sproduc BETWEEN 80038 AND 80043;

    UPDATE codipregun
    SET tconsulta = 'SELECT r.crespue, r.trespue
					  FROM respuestas r
					 LEFT OUTER JOIN
						   (SELECT crespue AS categ
							   FROM estpregunpolseg
							  WHERE sseguro = :PMT_SSEGURO
								AND cpregun = 2875
								AND nmovimi = (SELECT MAX(nmovimi)
												 FROM estpregunpolseg p2
												WHERE p2.sseguro = :PMT_SSEGURO
												  AND p2.cpregun = 2875)) ON categ in (1,2,3,4)
					 WHERE r.cpregun = 2876
					   AND r.cidioma = :PMT_IDIOMA
					   AND (((:PMT_SPRODUC BETWEEN 80001 AND 80006) AND :PMT_CACTIVI = 0 AND r.crespue IN (1, 2, 3, 4, 5, 24)) OR
						   ((:PMT_SPRODUC BETWEEN 80001 AND 80006) AND :PMT_CACTIVI = 1 AND r.crespue IN (19, 20, 21)) OR
						   ((:PMT_SPRODUC BETWEEN 80001 AND 80006) AND :PMT_CACTIVI = 2 AND r.crespue = 22) OR
						   ((:PMT_SPRODUC BETWEEN 80001 AND 80006) AND :PMT_CACTIVI = 3 AND r.crespue = 23) OR 
						   (:PMT_SPRODUC = 80012 AND r.crespue = 19) OR
						   ((:PMT_SPRODUC BETWEEN 80038 AND 80043) AND :PMT_CACTIVI = 0 AND r.crespue IN (5, 24)) OR
						   ((:PMT_SPRODUC BETWEEN 80038 AND 80043) AND :PMT_CACTIVI = 1 AND r.crespue = 19) OR
						   (:PMT_SPRODUC = 80044 AND :PMT_CACTIVI = 2 AND categ = 1  AND r.crespue IN (6, 7, 8, 9, 10)) OR
						   (:PMT_SPRODUC = 80044 AND :PMT_CACTIVI = 2 AND categ = 2 AND r.crespue IN (11, 12)) OR
						   (:PMT_SPRODUC = 80044 AND :PMT_CACTIVI = 2 AND categ = 3 AND r.crespue IN (13, 14)) OR
						   (:PMT_SPRODUC = 80044 AND :PMT_CACTIVI = 2 AND categ = 4 AND r.crespue = 15) OR 
						   (:PMT_SPRODUC = 80044 AND :PMT_CACTIVI = 3 AND r.crespue = 16) OR
						   (:PMT_SPRODUC = 80044 AND :PMT_CACTIVI = 4 AND r.crespue = 17) OR 
						   (:PMT_SPRODUC = 80044 AND :PMT_CACTIVI = 5 AND r.crespue = 18))'
	WHERE cpregun = 2876;
	
    
    COMMIT;
	
END;
/