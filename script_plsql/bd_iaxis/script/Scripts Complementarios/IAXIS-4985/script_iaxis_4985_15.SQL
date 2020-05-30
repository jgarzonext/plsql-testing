BEGIN
 
   UPDATE sgt_formulas
      SET formula =
             'CASE WHEN DECODE(NVL(RESP(6624),0),0,DECODE(TASASUPL,0,CASE WHEN PRIMAREC*(1+DTOCOM/100) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PRIMAREC*(1+DTOCOM/100)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END,CASE WHEN PRIMAREC*(1+TASASUPL/100) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PRIMAREC*(1+TASASUPL/100)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END) ,(((CAPITAL*(NVL(RESP(6624),0)/100))/365)*(TO_DATE(FFINVIG,''YYYYMMDD'')-TO_DATE(FINIVIG,''YYYYMMDD'')))) > (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) THEN
     DECODE(NVL(RESP(6624),0),0,DECODE(TASASUPL/100,0,CASE WHEN PRIMAREC*(1+DTOCOM/100) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PRIMAREC*(1+DTOCOM/100)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END,CASE WHEN PRIMAREC*(1+TASASUPL/100) > (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PRIMAREC*(1+TASASUPL/100)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END) ,(((CAPITAL*(NVL(RESP(6624),0)/100))/365)*(TO_DATE(FFINVIG,''YYYYMMDD'')-TO_DATE(FINIVIG,''YYYYMMDD''))))
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END '
    WHERE clave = 750058;

   COMMIT;
END;
/



