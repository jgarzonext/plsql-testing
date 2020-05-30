DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE sgt_formulas
	SET formula = 'DECODE(NVL(RESP(4965),0),0,DECODE(NVL(RESP(4210),0),0,CASE WHEN VAL_GAR(1,7030,NRIESGO) <= 800*RESP(623)  THEN VAL_GAR(1,7030,NRIESGO) ELSE VAL_GAR(1,7030,NRIESGO)*0.4 END,VAL_GAR(1,7030,NRIESGO)*RESP(4210)/100),RESP(4965))' 
	WHERE clave = 248024;
	
    
    COMMIT;
	
END;
/