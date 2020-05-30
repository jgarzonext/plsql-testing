/* Formatted on 2019/07/17 22:22 (Formatter Plus v4.8.8) */
BEGIN
   UPDATE detgaranformula
      SET clave = 750062
    WHERE cconcep = 'TPFINAL' AND sproduc IN (80007, 80009);

   COMMIT;
END;
/

BEGIN
   UPDATE pregunpro
      SET cresdef = 30
    WHERE cramo = 801 AND cpregun = 6556;

   COMMIT;
END;
/

BEGIN
   UPDATE sgt_formulas
      SET formula =
             'NVL(VTABLA(9000003, 3333, 1,SPRODUC,CACTIVI,GARANTIA,CDIVISA),0)'
    WHERE clave = 750006;

   COMMIT;
END;
/

BEGIN
   UPDATE sgt_formulas
      SET formula = '(CAPFINAN*PROBA*CONTGARA/1000000)*(TASAREF)'
    WHERE clave = 750016;

   UPDATE sgt_formulas
      SET formula = '(CAPFINAN*PROCESO*CONTGARA/1000000)*(TASAREF)'
    WHERE clave = 750061;

   UPDATE sgt_formulas
      SET formula = 'TPFINAL*FACSUSCR/(1-(RECTARIF/100))'
    WHERE clave = 750057;

   UPDATE sgt_formulas
      SET formula = 'PRIMAREC*(1+DTOCOM/100)'
    WHERE clave = 750058;

   UPDATE sgt_formulas
      SET formula =
             'DECODE(RESP(2702),1,TPFINAL*FACSUSCR/(CONTGARA/100)*100/(1-(RECTARIF/100)),TPFINAL*FACSUSCR/(1-(RECTARIF/100)))*100'
    WHERE clave = 750065;

   UPDATE sgt_formulas
      SET formula =
             '(CAPFINAN*PROBA*CONTGARA/1000000)*(TASAREF)*(TASAPURA)/(1-(RECTARIF/100))'
    WHERE clave = 750122;

   UPDATE detgaranformula
      SET norden = 23
    WHERE clave = 750122;

   UPDATE sgt_formulas
      SET formula =
             '(CAPFINAN*PROCESO*CONTGARA/1000000)*(TASAREF)*(TASAPURA)/(1-(RECTARIF/100))'
    WHERE clave = 750123;

   UPDATE detgaranformula
      SET norden = 23
    WHERE clave = 750123;

   UPDATE sgt_formulas
      SET formula =
             '(CAPFINAN*TASAEXPE*CONTGARA/1000000)*(TASAREF)*(TASAPURA)/(1-(RECTARIF/100))'
    WHERE clave = 750124;

   UPDATE detgaranformula
      SET norden = 23
    WHERE clave = 750124;
    
    UPDATE detgaranformula
      SET norden = 25
    WHERE clave = 750058;
    
    UPDATE detgaranformula
      SET norden = 24
    WHERE clave = 750057;
    
    UPDATE detgaranformula
      SET norden = 26
    WHERE clave = 999792;

   COMMIT;

   UPDATE sgt_formulas
      SET formula =
             'DECODE(TASASUPL,0,CASE WHEN (TASAPURA*FACSUSCR)*(1+DTOCOM/100)/(1-(RECTARIF/100)) < TASAPURA THEN TASAPURA ELSE (TASAPURA*FACSUSCR)*(1+DTOCOM/100)/(1-(RECTARIF/100))  END ,TASASUPL)'
    WHERE clave = 750053;

   BEGIN
      INSERT INTO sgt_trans_formula
                  (clave, parametro
                  )
           VALUES (750053, 'DTOCOM'
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   UPDATE sgt_formulas
      SET formula =
             'DECODE(TASASUPL,0,CASE WHEN (TASAPURA*FACSUSCR)*(1+DTOCOM/100)/(1-(RECTARIF/100)) < TASAPURA THEN TASAPURA ELSE (TASAPURA*FACSUSCR)*(1+DTOCOM/100)/(1-(RECTARIF/100)) END ,TASASUPL)'
    WHERE clave = 750064;

   BEGIN
      INSERT INTO sgt_trans_formula
                  (clave, parametro
                  )
           VALUES (750064, 'DTOCOM'
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   UPDATE garanformula
      SET clave = 750058
    WHERE sproduc = 80009 AND ccampo = 'IPRITAR';

   UPDATE garanformula
      SET clave = 750058
    WHERE sproduc = 80007 AND ccampo = 'IPRITAR';

   COMMIT;
END;
/

DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc
        FROM productos
       WHERE sproduc IN (80007, 80008);

   CURSOR c_cla
   IS
      SELECT ccodarticulo
        FROM detarticulo_conf
       WHERE cidioma = 8;

   v_cont   NUMBER;
BEGIN
   FOR i IN c_prod
   LOOP
      FOR j IN c_cla
      LOOP
         BEGIN
            SELECT COUNT (1)
              INTO v_cont
              FROM sgt_subtabs_det
             WHERE csubtabla = 8000047
               AND cversubt = 1
               AND ccla2 = j.ccodarticulo;
         EXCEPTION
            WHEN NO_DATA_FOUND
            THEN
               v_cont := 0;
         END;
          dbms_output.put_line(' --> '||j.ccodarticulo|| ' v_cont '||v_cont);
         if v_cont = 0 then
         dbms_output.put_line(' --> '||j.ccodarticulo|| ' v_cont '||v_cont);
         BEGIN
            INSERT INTO sgt_subtabs_det
                        (sdetalle, cempres, csubtabla, cversubt, ccla1,
                         ccla2, ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                         nval1, nval2, nval3, nval4, nval5, nval6, falta,
                         cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                         nval8, nval9, nval10
                        )
                 VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, i.sproduc,
                         0, j.ccodarticulo, NULL, NULL, NULL, NULL, NULL,
                         200, NULL, NULL, NULL, NULL, NULL, f_sysdate,
                         f_user, NULL, NULL, NULL, NULL, NULL,
                         NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               NULL;
         END;
         end if;
      END LOOP;
   END LOOP;
   commit;
END;
/
