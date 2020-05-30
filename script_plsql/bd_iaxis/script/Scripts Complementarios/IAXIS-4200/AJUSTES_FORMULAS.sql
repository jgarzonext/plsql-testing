DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE sgt_formulas
	SET formula = '((CAPITAL*TASA)/365*(TO_DATE(FFINVIG,"YYYYMMDD")-TO_DATE(FINIVIG,"YYYYMMDD")))'
	WHERE clave = 248023;

	UPDATE sgt_formulas
	SET formula = 'DECODE(NVL(RESP(4965),0),0,DECODE(NVL(RESP(4210),0),0,CASE WHEN VAL_GAR(1,7050,NRIESGO) <= 800*RESP(623)  THEN VAL_GAR(1,7050,NRIESGO) ELSE VAL_GAR(1,7050,NRIESGO)*0.4 END,VAL_GAR(1,7050,NRIESGO)*RESP(4210)/100),RESP(4965))' 
	WHERE clave = 248024;
	
	UPDATE sgt_formulas
	SET formula = 'DECODE(NVL(RESP(4965), 0), 0, DECODE(NVL(RESP(4210), 0), 0, VAL_GAR(1, 7050, NRIESGO) * 0.2,  VAL_GAR(1, 7050, NRIESGO) * RESP(4210)/100), RESP(4965))' 
	WHERE clave = 248028;
	
	UPDATE sgt_formulas
	SET formula = 'DECODE(NVL(RESP(4965), 0), 0, DECODE(NVL(RESP(2883), 0), 0, DECODE(NVL( RESP(4212), 0), 0, RESP(4211)*RESP(623), (RESP(4211)*RESP(623)*RESP(4212)/100)), (RESP(2883)*RESP(4212)/100)), RESP(4965))'
	WHERE clave = 248021;

	
	DELETE cfg_avisos WHERE cramo = 802 AND cidrel = 802001;
	DELETE cfg_rel_avisos WHERE cidrel = 802001;
	
	INSERT INTO cfg_rel_avisos (cempres,cidrel,caviso,cbloqueo,norden,cusuari,falta) VALUES (24,802001,733717,1,1,f_user,f_sysdate);
	INSERT INTO cfg_rel_avisos (cempres,cidrel,caviso,cbloqueo,norden,cusuari,falta) VALUES (24,802001,733801,1,1,f_user,f_sysdate);

	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR026','ALTA_POLIZA','CFG_FO',802,0,802001,f_user,f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR026','ALTA_POLIZA','CFG_CENTRAL',802,0,802001,f_user,f_sysdate);
	
	
    COMMIT;
	
END;
/