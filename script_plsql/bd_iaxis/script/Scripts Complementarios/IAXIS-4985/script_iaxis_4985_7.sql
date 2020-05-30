/* Formatted on 2019/08/30 18:19 (Formatter Plus v4.8.8) */
SELECT pac_contexto.f_inicializarctx
                                   (pac_parametros.f_parempresa_t (24,
                                                                   'USER_BBDD'
                                                                  )
                                   )
  FROM DUAL;

DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc, cdivisa
        FROM productos
       WHERE cramo = 801 AND sproduc NOT IN (80007) AND cactivo = 1;

   CURSOR c_prod_1
   IS
      SELECT sproduc, cdivisa
        FROM productos
       WHERE cramo = 801 AND sproduc IN (80007) AND cactivo = 1;
BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7002, i.cdivisa, NULL, NULL, NULL, NULL, 0.001039,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7003, i.cdivisa, NULL, NULL, NULL, NULL, 0.001039,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7007, i.cdivisa, NULL, NULL, NULL, NULL, 0.000992,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7008, i.cdivisa, NULL, NULL, NULL, NULL, 0.000992,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7001, i.cdivisa, NULL, NULL, NULL, NULL, 0.001084,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7016, i.cdivisa, NULL, NULL, NULL, NULL, 0.001084,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7017, i.cdivisa, NULL, NULL, NULL, NULL, 0.001084,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7018, i.cdivisa, NULL, NULL, NULL, NULL, 0.001084,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7009, i.cdivisa, NULL, NULL, NULL, NULL, 0.001017,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7010, i.cdivisa, NULL, NULL, NULL, NULL, 0.001017,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7005, i.cdivisa, NULL, NULL, NULL, NULL, 0.000806,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7000, i.cdivisa, NULL, NULL, NULL, NULL, 0.000298,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7000, i.cdivisa, NULL, NULL, NULL, NULL, 0.000268,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7001, i.cdivisa, NULL, NULL, NULL, NULL, 0.001621,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7016, i.cdivisa, NULL, NULL, NULL, NULL, 0.001621,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7017, i.cdivisa, NULL, NULL, NULL, NULL, 0.001621,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7018, i.cdivisa, NULL, NULL, NULL, NULL, 0.001621,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7002, i.cdivisa, NULL, NULL, NULL, NULL, 0.001039,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7003, i.cdivisa, NULL, NULL, NULL, NULL, 0.001039,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7005, i.cdivisa, NULL, NULL, NULL, NULL, 0.000872,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7009, i.cdivisa, NULL, NULL, NULL, NULL, 0.000919,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7010, i.cdivisa, NULL, NULL, NULL, NULL, 0.000919,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7007, i.cdivisa, NULL, NULL, NULL, NULL, 0.001004,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7008, i.cdivisa, NULL, NULL, NULL, NULL, 0.001004,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7000, i.cdivisa, NULL, NULL, NULL, NULL, 0.000227,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7001, i.cdivisa, NULL, NULL, NULL, NULL, 0.001014,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7016, i.cdivisa, NULL, NULL, NULL, NULL, 0.001014,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7017, i.cdivisa, NULL, NULL, NULL, NULL, 0.001014,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7018, i.cdivisa, NULL, NULL, NULL, NULL, 0.001014,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7002, i.cdivisa, NULL, NULL, NULL, NULL, 0.000902,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7003, i.cdivisa, NULL, NULL, NULL, NULL, 0.000902,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7005, i.cdivisa, NULL, NULL, NULL, NULL, 0.000623,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7009, i.cdivisa, NULL, NULL, NULL, NULL, 0.000601,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7010, i.cdivisa, NULL, NULL, NULL, NULL, 0.000601,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7007, i.cdivisa, NULL, NULL, NULL, NULL, 0.000543,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7008, i.cdivisa, NULL, NULL, NULL, NULL, 0.000543,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7013, i.cdivisa, NULL, NULL, NULL, NULL, 0.000543,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7002, i.cdivisa, NULL, NULL, NULL, NULL, 0.001039,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7003, i.cdivisa, NULL, NULL, NULL, NULL, 0.001039,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7007, i.cdivisa, NULL, NULL, NULL, NULL, 0.000992,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7008, i.cdivisa, NULL, NULL, NULL, NULL, 0.000992,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7001, i.cdivisa, NULL, NULL, NULL, NULL, 0.001084,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7016, i.cdivisa, NULL, NULL, NULL, NULL, 0.001084,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7017, i.cdivisa, NULL, NULL, NULL, NULL, 0.001084,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7018, i.cdivisa, NULL, NULL, NULL, NULL, 0.001084,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7009, i.cdivisa, NULL, NULL, NULL, NULL, 0.001017,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7010, i.cdivisa, NULL, NULL, NULL, NULL, 0.001017,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7005, i.cdivisa, NULL, NULL, NULL, NULL, 0.000806,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7000, i.cdivisa, NULL, NULL, NULL, NULL, 0.000298,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7002, i.cdivisa, NULL, NULL, NULL, NULL, 0.001039,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7004, i.cdivisa, NULL, NULL, NULL, NULL, 0.001039,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7004, i.cdivisa, NULL, NULL, NULL, NULL, 0.000902,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7004, i.cdivisa, NULL, NULL, NULL, NULL, 0.001039,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
      
      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7004, i.cdivisa, NULL, NULL, NULL, NULL, 0.001039,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7011, i.cdivisa, NULL, NULL, NULL, NULL, 0.000992,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7011, i.cdivisa, NULL, NULL, NULL, NULL, 0.001004,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7011, i.cdivisa, NULL, NULL, NULL, NULL, 0.000543,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7011, i.cdivisa, NULL, NULL, NULL, NULL, 0.000992,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7012, i.cdivisa, NULL, NULL, NULL, NULL, 0.000992,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7012, i.cdivisa, NULL, NULL, NULL, NULL, 0.001004,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7012, i.cdivisa, NULL, NULL, NULL, NULL, 0.000543,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7012, i.cdivisa, NULL, NULL, NULL, NULL, 0.000992,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7014, i.cdivisa, NULL, NULL, NULL, NULL, 0.000992,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7014, i.cdivisa, NULL, NULL, NULL, NULL, 0.001004,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7014, i.cdivisa, NULL, NULL, NULL, NULL, 0.000543,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7014, i.cdivisa, NULL, NULL, NULL, NULL, 0.000992,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 0,
                      7015, i.cdivisa, NULL, NULL, NULL, NULL, 0.001084,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 3,
                      7015, i.cdivisa, NULL, NULL, NULL, NULL, 0.001621,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 1,
                      7015, i.cdivisa, NULL, NULL, NULL, NULL, 0.001014,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7015, i.cdivisa, NULL, NULL, NULL, NULL, 0.001084,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      COMMIT;
   END LOOP;

   FOR i IN c_prod_1
   LOOP
      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000003, 1, i.sproduc, 2,
                      7019, i.cdivisa, NULL, NULL, NULL, NULL, 0.0081,
                      NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
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
BEGIN
   DELETE      sgt_subtabs_det
         WHERE csubtabla = 8000047 AND cversubt = 1 AND ccla1 = 80011;

   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, ccla9, ccla10, nval7,
                nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80011, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, 1819.862500415, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL
               );

   COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/