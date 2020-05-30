DECLARE
	v_contexto NUMBER := 0;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE SGT_FORMULAS SET FORMULA = 'CASE 
	WHEN RESP(2913) IS NOT NULL THEN (((CAPITAL*(NVL(RESP(2701),0)/100))/365)*(TO_DATE(FFINVIG,''YYYYMMDD'')-TO_DATE(FINIVIG,''YYYYMMDD'')))

ELSE

	CASE

	WHEN DECODE(NVL(RESP(6624),0),0,DECODE(TASASUPL,0,CASE WHEN PRIMAREC*(1+DTOCOM/100) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
		 THEN PRIMAREC*(1+DTOCOM/100)
		 ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END,CASE WHEN TPFINAL/(TASAPURA/100)*TASASUPL/100 >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
		 THEN TPFINAL/(TASAPURA/100)*TASASUPL/100
		 ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END) ,(((CAPITAL*(NVL(RESP(6624),0)/100))/365)*(TO_DATE(FFINVIG,''YYYYMMDD'')-TO_DATE(FINIVIG,''YYYYMMDD'')))) > (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) THEN
		 DECODE(NVL(RESP(6624),0),0,DECODE(TASASUPL/100,0,CASE WHEN PRIMAREC*(1+DTOCOM/100) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
		 THEN PRIMAREC*(1+DTOCOM/100)
		 ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END,CASE WHEN TPFINAL/(TASAPURA/100)*TASASUPL/100 > (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
		 THEN TPFINAL/(TASAPURA/100)*TASASUPL/100
		 ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END) ,(((CAPITAL*(NVL(RESP(6624),0)/100))/365)*(TO_DATE(FFINVIG,''YYYYMMDD'')-TO_DATE(FINIVIG,''YYYYMMDD''))))
		 ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END 
		 
END' WHERE CLAVE = 750058;


			
	COMMIT;
	
END;
/