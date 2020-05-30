DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	UPDATE respuestas
	SET cactivi = 2
	WHERE cpregun = 2875
	AND crespue in (1,2,3,4);	
	
	DELETE respuestas WHERE cpregun  = 2875 AND crespue = 0;
	DELETE codirespuestas WHERE cpregun  = 2875 AND crespue = 0;
	
	INSERT INTO codirespuestas (cpregun, crespue) VALUES (2875, 0);
    
    INSERT INTO respuestas (crespue, cpregun, cidioma, trespue, cactivi) VALUES (0, 2875, 1, 'No aplica', NULL);
	INSERT INTO respuestas (crespue, cpregun, cidioma, trespue, cactivi) VALUES (0, 2875, 2, 'No aplica', NULL);
	INSERT INTO respuestas (crespue, cpregun, cidioma, trespue, cactivi) VALUES (0, 2875, 8, 'No aplica', NULL);
    
    UPDATE codipregun
    SET ctippre = 6, tconsulta = 'SELECT R.CRESPUE, R.TRESPUE
                    FROM RESPUESTAS R
                    WHERE R.CPREGUN = 2875
                    AND R.CIDIOMA = :PMT_IDIOMA
                    AND ((:PMT_SPRODUC = 80044 AND :PMT_CACTIVI = 2 AND R.CRESPUE IN (1,2,3,4))
                        OR (:PMT_SPRODUC = 80044 AND :PMT_CACTIVI IN (3,4,5) AND R.CRESPUE = 0))'
	WHERE cpregun = 2875;


	COMMIT;
	
END;
/