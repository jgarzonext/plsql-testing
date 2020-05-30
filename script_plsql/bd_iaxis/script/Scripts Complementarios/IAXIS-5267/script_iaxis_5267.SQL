/* Formatted on 2019/09/19 13:55 (Formatter Plus v4.8.8) */
BEGIN
   UPDATE detgaranformula
      SET clave = 750126
    WHERE clave = 750058 AND sproduc = 80007;

   UPDATE garanformula
      SET clave = 750126
    WHERE sproduc = 80007 AND ccampo = 'IPRITAR';

   COMMIT;
END;
/

BEGIN
   UPDATE detgaranformula
      SET clave = 750126
    WHERE clave = 750058 AND cgarant = 7000;
    
    
    UPDATE garanformula
      SET clave = 750126
    WHERE clave = 750058 AND cgarant = 7000;

   COMMIT;
END;
/

DELETE      sgt_trans_formula
      WHERE clave = 750126;
DELETE      sgt_formulas
      WHERE clave = 750126;

BEGIN
   INSERT INTO sgt_formulas
               (clave, codigo, descripcion,
                formula, cramo, cutili, crastro
               )
        VALUES (750126, 'PRIMACOM1', 'Prima Comercial',
                'CASE WHEN DECODE(NVL(RESP(6624),0),0,DECODE(TASASUPL,0,CASE WHEN PRIMAREC*(1+DTOCOM/100) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PRIMAREC*(1+DTOCOM/100)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END,CASE WHEN TPFINAL/(TASAPURA/100)*TASASUPL/100 >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN TPFINAL/(TASAPURA/100)*TASASUPL/100
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END) ,(CAPITAL*(NVL(RESP(6624),0)/100))) > (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) THEN
     DECODE(NVL(RESP(6624),0),0,DECODE(TASASUPL/100,0,CASE WHEN PRIMAREC*(1+DTOCOM/100) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PRIMAREC*(1+DTOCOM/100)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END,CASE WHEN TPFINAL/(TASAPURA/100)*TASASUPL/100 > (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN TPFINAL/(TASAPURA/100)*TASASUPL/100
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END) ,(CAPITAL*(NVL(RESP(6624),0)/100)))
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END ', NULL, NULL, NULL
               );

   COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750126, 'PRIMAREC'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750126, 'RECTARIF'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750126, 'CAGENTE'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750126, 'SPRODUC'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750126, 'CACTIVI'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750126, 'TASASUPL'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750126, 'CAPISUPL'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750126, 'CAPITAL'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750126, 'FINIVIG'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750126, 'FFINVIG'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

COMMIT ;