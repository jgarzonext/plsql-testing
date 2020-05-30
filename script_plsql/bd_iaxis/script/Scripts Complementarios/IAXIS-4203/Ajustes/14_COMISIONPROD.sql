ALTER TABLE respuestas
	MODIFY trespue VARCHAR2(100);
/

DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	UPDATE comisionprod
	SET finivig = TO_DATE('09/09/2016', 'dd/mm/yyyy')
	WHERE sproduc = 80044
	AND ccomisi in (4, 22);

	UPDATE comisionprod
	SET finivig = TO_DATE('13/09/2016', 'dd/mm/yyyy')
	WHERE sproduc = 80044
	AND ccomisi in (47);

	UPDATE comisionprod
	SET finivig = TO_DATE('19/02/2018', 'dd/mm/yyyy')
	WHERE sproduc = 80044
	AND ccomisi = 2;
	
	
	COMMIT;
	
END;
/