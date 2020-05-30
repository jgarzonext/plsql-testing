/* Formatted on 2019/08/21 18:58 (Formatter Plus v4.8.8) */
BEGIN
   UPDATE sgt_formulas
      SET formula =
             'CASE WHEN DECODE(NVL(RESP(6624),0),0,DECODE(TASASUPL,0,CASE WHEN PRIMAREC*(1+DTOCOM/100) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PRIMAREC*(1+DTOCOM/100)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END,CASE WHEN PRIMAREC*(1+TASASUPL) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PRIMAREC*(1+TASASUPL)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END) ,(((CAPITAL*(NVL(RESP(6624),0)/100))/365)*(TO_DATE(FFINVIG,''YYYYMMDD'')-TO_DATE(FINIVIG,''YYYYMMDD'')))) > (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) THEN
     DECODE(NVL(RESP(6624),0),0,DECODE(TASASUPL,0,CASE WHEN PRIMAREC*(1+DTOCOM/100) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PRIMAREC*(1+DTOCOM/100)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END,CASE WHEN PRIMAREC*(1+TASASUPL) > (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PRIMAREC*(1+TASASUPL)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END) ,(((CAPITAL*(NVL(RESP(6624),0)/100))/365)*(TO_DATE(FFINVIG,''YYYYMMDD'')-TO_DATE(FINIVIG,''YYYYMMDD''))))
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END '
    WHERE clave = 750058;

   COMMIT;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750058, 'CAPITAL'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
      COMMIT;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750058, 'FINIVIG'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
      COMMIT;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750058, 'FFINVIG'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
      COMMIT;
END;
/

BEGIN
   UPDATE sgt_formulas
      SET formula =
             'DECODE(TASASUPL,0,CASE WHEN (TASAPURA*FACSUSCR*(1+DTOCOM/100))/(1-(RECTARIF/100))< TASAPURA THEN TASAPURA ELSE (TASAPURA*FACSUSCR*(1+DTOCOM/100))/(1-(RECTARIF/100))  END ,TASASUPL)'
    WHERE clave = 750053;

   COMMIT;
END;
/

BEGIN
   UPDATE detgaranformula
      SET clave = 750057
    WHERE clave = 750065;

   COMMIT;
END;
/

DECLARE
   v_csubtabla   NUMBER := 9000003;
   v_cempres     NUMBER := 24;

   CURSOR c_con
   IS
      SELECT *
        FROM sgt_subtabs_det
       WHERE csubtabla = v_csubtabla AND ccla3 IN (7010)
             AND ccla2 IN (0, 1, 2);
BEGIN
   FOR i IN c_con
   LOOP
      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt,
                      ccla1, ccla2, ccla3, ccla4, ccla5, ccla6, ccla7,
                      ccla8, nval1, nval2, nval3, nval4, nval5, nval6,
                      falta, cusualt, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, v_cempres, v_csubtabla, 1,
                      i.ccla1, i.ccla2, 7009, i.ccla4, NULL, NULL, NULL,
                      NULL, i.nval1, NULL, NULL, NULL, NULL, NULL,
                      f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
   END LOOP;

   COMMIT;
END;
/

DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc, cdivisa
        FROM productos
       WHERE cramo = 801 AND cactivo = 1;
BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                      nval1, nval2, nval3, nval4, nval5, nval6,
                      falta, cusualt, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, i.sproduc, 0,
                      504290, NULL, NULL, NULL, NULL, NULL,
                      -10.3197306826262, NULL, NULL, NULL, NULL, NULL,
                      f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );

         COMMIT;
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                      nval1, nval2, nval3, nval4, nval5, nval6,
                      falta, cusualt, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, i.sproduc, 2,
                      504290, NULL, NULL, NULL, NULL, NULL,
                      -10.3197306826262, NULL, NULL, NULL, NULL, NULL,
                      f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );

         COMMIT;
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
   END LOOP;
END;
/