/* Formatted on 2020/03/10 14:02 (Formatter Plus v4.8.8) */
DELETE      detclasecontrato
      WHERE cclacontrato = 0 AND ccodcontrato IN (485, 486);
DELETE      clasecontrato
      WHERE cclacontrato = 0 AND ccodcontrato IN (485, 486);
INSERT INTO clasecontrato
            (ccodcontrato, cclacontrato
            )
     VALUES (485, 0
            );
INSERT INTO clasecontrato
            (ccodcontrato, cclacontrato
            )
     VALUES (486, 0
            );
INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion, cclase, cgrupo
            )
     VALUES (485, 0, 1, 'Contrato de Aporte', NULL, NULL
            );
INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion, cclase, cgrupo
            )
     VALUES (485, 0, 2, 'Contrato de Aporte', NULL, NULL
            );
INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion, cclase, cgrupo
            )
     VALUES (485, 0, 8, 'Contrato de Aporte', NULL, NULL
            );
INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion, cclase, cgrupo
            )
     VALUES (486, 0, 1, 'Contratos de estudios y diseños', NULL, NULL
            );
INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion, cclase, cgrupo
            )
     VALUES (486, 0, 2, 'Contratos de estudios y diseños', NULL, NULL
            );
INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion, cclase, cgrupo
            )
     VALUES (486, 0, 8, 'Contratos de estudios y diseños', NULL, NULL
            );
COMMIT ;

BEGIN
   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2020;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2020, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2020;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2020, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2020;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2020, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2074720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2074720, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2074720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2074720, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2074720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2074720, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 515530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   515530, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 515530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   515530, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 515530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   515530, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 564720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   564720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 564720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   564720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 564720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   564720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 614720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   614720, NULL, NULL, NULL, NULL, NULL, 101.499, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 614720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   614720, NULL, NULL, NULL, NULL, NULL, 101.499, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 614720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   614720, NULL, NULL, NULL, NULL, NULL, 101.499, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 684720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   684720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 684720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   684720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 684720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   684720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3960;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3960, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3960;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3960, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3960;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3960, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1564290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1564290, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1564290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1564290, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1564290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1564290, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2104720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2104720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2104720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2104720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2104720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2104720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1014720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1014720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1014720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1014720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1014720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1014720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1035530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1035530, NULL, NULL, NULL, NULL, NULL, 150.675, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1035530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1035530, NULL, NULL, NULL, NULL, NULL, 150.675, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1035530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1035530, NULL, NULL, NULL, NULL, NULL, 150.675, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1044720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1044720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1044720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1044720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1044720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1044720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1144720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1144720, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1144720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1144720, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1144720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1144720, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1264720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1264720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1264720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1264720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1264720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1264720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 64720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   64720, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 64720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   64720, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 64720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   64720, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 134720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   134720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 134720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   134720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 134720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   134720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 164720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   164720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 164720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   164720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 164720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   164720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 214290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   214290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 214290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   214290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 214290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   214290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 344720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   344720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 344720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   344720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 344720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   344720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 404720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   404720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 404720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   404720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 404720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   404720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 425530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   425530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 425530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   425530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 425530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   425530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1384290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1384290, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1384290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1384290, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1384290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1384290, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4690;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4690, NULL, NULL, NULL, NULL, NULL, 262.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4690;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4690, NULL, NULL, NULL, NULL, NULL, 262.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4690;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4690, NULL, NULL, NULL, NULL, NULL, 262.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4700;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4700, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4700;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4700, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4700;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4700, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4850;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4850, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4850;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4850, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4850;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4850, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1344720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1344720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1344720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1344720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1344720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1344720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1560;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1560, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1560;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1560, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1560;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1560, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1294720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1294720, NULL, NULL, NULL, NULL, NULL, 103.259, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1294720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1294720, NULL, NULL, NULL, NULL, NULL, 103.259, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1294720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1294720, NULL, NULL, NULL, NULL, NULL, 103.259, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1314720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1314720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1314720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1314720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1314720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1314720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1504720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1504720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1504720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1504720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1504720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1504720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1550;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1550, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1550;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1550, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1550;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1550, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2190;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2190, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2190;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2190, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2190;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2190, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 665530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   665530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 665530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   665530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 665530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   665530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 674720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   674720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 674720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   674720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 674720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   674720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 694720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   694720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 694720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   694720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 694720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   694720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 774720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   774720, NULL, NULL, NULL, NULL, NULL, 103.659, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 774720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   774720, NULL, NULL, NULL, NULL, NULL, 103.659, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 774720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   774720, NULL, NULL, NULL, NULL, NULL, 103.659, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 904720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   904720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 904720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   904720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 904720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   904720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1004720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1004720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1004720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1004720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1004720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1004720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2830;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2830, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2830;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2830, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2830;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2830, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1064720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1064720, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1064720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1064720, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1064720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1064720, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1074290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1074290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1074290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1074290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1074290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1074290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1094720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1094720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1094720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1094720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1094720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1094720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1104720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1104720, NULL, NULL, NULL, NULL, NULL, 108.396, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1104720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1104720, NULL, NULL, NULL, NULL, NULL, 108.396, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1104720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1104720, NULL, NULL, NULL, NULL, NULL, 108.396, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1124720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1124720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1124720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1124720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1124720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1124720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1184720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1184720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1184720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1184720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1184720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1184720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1244720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1244720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1244720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1244720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1244720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1244720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2750;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2750, NULL, NULL, NULL, NULL, NULL, 184.367, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2750;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2750, NULL, NULL, NULL, NULL, NULL, 184.367, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2750;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2750, NULL, NULL, NULL, NULL, NULL, 184.367, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 194290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   194290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 194290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   194290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 194290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   194290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 294720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   294720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 294720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   294720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 294720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   294720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 314720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   314720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 314720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   314720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 314720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   314720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 324720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   324720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 324720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   324720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 324720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   324720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 334720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   334720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 334720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   334720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 334720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   334720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4620;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4620, NULL, NULL, NULL, NULL, NULL, 181.301, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4620;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4620, NULL, NULL, NULL, NULL, NULL, 181.301, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4620;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4620, NULL, NULL, NULL, NULL, NULL, 181.301, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4780;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4780, NULL, NULL, NULL, NULL, NULL, 262.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4780;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4780, NULL, NULL, NULL, NULL, NULL, 262.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4780;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4780, NULL, NULL, NULL, NULL, NULL, 262.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4790;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4790, NULL, NULL, NULL, NULL, NULL, 650, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4790;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4790, NULL, NULL, NULL, NULL, NULL, 650, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4790;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4790, NULL, NULL, NULL, NULL, NULL, 650, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 75530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   75530, NULL, NULL, NULL, NULL, NULL, 170.705, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 75530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   75530, NULL, NULL, NULL, NULL, NULL, 170.705, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 75530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   75530, NULL, NULL, NULL, NULL, NULL, 170.705, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4800;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4800, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4800;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4800, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4800;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4800, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 55530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   55530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 55530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   55530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 55530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   55530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1304290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1304290, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1304290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1304290, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1304290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1304290, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1594720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1594720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1594720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1594720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1594720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1594720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 465530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   465530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 465530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   465530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 465530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   465530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 525530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   525530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 525530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   525530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 525530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   525530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 594290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   594290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 594290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   594290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 594290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   594290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3840;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3840, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3840;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3840, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3840;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3840, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 804290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   804290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 804290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   804290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 804290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   804290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 825530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   825530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 825530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   825530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 825530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   825530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 864720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   864720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 864720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   864720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 864720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   864720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 874720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   874720, NULL, NULL, NULL, NULL, NULL, 86.591, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 874720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   874720, NULL, NULL, NULL, NULL, NULL, 86.591, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 874720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   874720, NULL, NULL, NULL, NULL, NULL, 86.591, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 914290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   914290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 914290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   914290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 914290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   914290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1164720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1164720, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1164720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1164720, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1164720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1164720, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1710;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1710, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1710;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1710, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1710;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1710, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3820;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3820, NULL, NULL, NULL, NULL, NULL, 261.955, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3820;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3820, NULL, NULL, NULL, NULL, NULL, 261.955, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3820;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3820, NULL, NULL, NULL, NULL, NULL, 261.955, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3810;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3810, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3810;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3810, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3810;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3810, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 124290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   124290, NULL, NULL, NULL, NULL, NULL, 201.01, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 124290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   124290, NULL, NULL, NULL, NULL, NULL, 201.01, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 124290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   124290, NULL, NULL, NULL, NULL, NULL, 201.01, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 170;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   170, NULL, NULL, NULL, NULL, NULL, 1150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 170;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   170, NULL, NULL, NULL, NULL, NULL, 1150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 170;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   170, NULL, NULL, NULL, NULL, NULL, 1150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 204290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   204290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 204290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   204290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 204290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   204290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 234290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   234290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 234290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   234290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 234290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   234290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3600;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3600, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3600;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3600, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3600;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3600, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1594290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1594290, NULL, NULL, NULL, NULL, NULL, 175, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1594290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1594290, NULL, NULL, NULL, NULL, NULL, 175, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1594290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1594290, NULL, NULL, NULL, NULL, NULL, 175, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4650;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4650, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4650;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4650, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4650;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4650, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4860;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4860, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4860;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4860, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4860;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4860, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1614290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1614290, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1614290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1614290, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1614290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1614290, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1334720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1334720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1334720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1334720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1334720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1334720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1465530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1465530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1465530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1465530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1465530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1465530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1580;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1580, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1580;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1580, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1580;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1580, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 535530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   535530, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 535530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   535530, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 535530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   535530, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 554290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   554290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 554290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   554290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 554290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   554290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1404720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1404720, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1404720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1404720, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1404720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1404720, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 634290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   634290, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 634290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   634290, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 634290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   634290, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 765530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   765530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 765530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   765530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 765530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   765530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 844290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   844290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 844290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   844290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 844290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   844290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3850;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3850, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3850;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3850, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3850;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3850, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 994720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   994720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 994720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   994720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 994720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   994720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1554290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1554290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1554290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1554290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1554290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1554290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1574290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1574290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1574290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1574290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1574290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1574290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 30;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   30, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 30;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   30, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 30;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   30, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4740;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4740, NULL, NULL, NULL, NULL, NULL, 261.955, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4740;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4740, NULL, NULL, NULL, NULL, NULL, 261.955, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4740;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4740, NULL, NULL, NULL, NULL, NULL, 261.955, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 114290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   114290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 114290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   114290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 114290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   114290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 224290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   224290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 224290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   224290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 224290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   224290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1524290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1524290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1524290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1524290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1524290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1524290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4710;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4710, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4710;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4710, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4710;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4710, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 74720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   74720, NULL, NULL, NULL, NULL, NULL, 1150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 74720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   74720, NULL, NULL, NULL, NULL, NULL, 1150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 74720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   74720, NULL, NULL, NULL, NULL, NULL, 1150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 25530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   25530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 25530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   25530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 25530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   25530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1270;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1270, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1270;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1270, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1270;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1270, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1285530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1285530, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1285530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1285530, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1285530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1285530, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1374720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1374720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1374720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1374720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1374720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1374720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1534720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1534720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1534720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1534720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1534720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1534720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4360;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4360, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4360;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4360, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4360;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4360, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 455530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   455530, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 455530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   455530, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 455530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   455530, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2390;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2390, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2390;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2390, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2390;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2390, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 704720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   704720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 704720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   704720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 704720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   704720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 714720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   714720, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 714720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   714720, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 714720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   714720, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 814720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   814720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 814720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   814720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 814720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   814720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2030;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2030, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2030;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2030, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2030;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2030, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3940;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3940, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3940;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3940, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3940;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3940, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1154720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1154720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1154720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1154720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1154720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1154720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1204720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1204720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1204720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1204720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1204720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1204720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1234720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1234720, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1234720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1234720, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1234720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1234720, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1255530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1255530, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1255530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1255530, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1255530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1255530, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4200;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4200, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4200;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4200, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4200;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4200, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3410;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3410, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3410;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3410, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3410;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3410, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2360;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2360, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2360;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2360, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2360;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2360, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4260;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4260, NULL, NULL, NULL, NULL, NULL, 175, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4260;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4260, NULL, NULL, NULL, NULL, NULL, 175, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4260;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4260, NULL, NULL, NULL, NULL, NULL, 175, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 254290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   254290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 254290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   254290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 254290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   254290, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 354720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   354720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 354720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   354720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 354720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   354720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 364720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   364720, NULL, NULL, NULL, NULL, NULL, 103.099, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 364720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   364720, NULL, NULL, NULL, NULL, NULL, 103.099, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 364720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   364720, NULL, NULL, NULL, NULL, NULL, 103.099, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1534290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1534290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1534290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1534290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1534290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1534290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4630;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4630, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4630;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4630, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4630;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4630, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4730;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4730, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4730;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4730, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4730;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4730, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 60;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   60, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 60;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   60, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 60;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   60, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 90;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   90, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 90;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   90, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 90;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   90, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2490;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2490, NULL, NULL, NULL, NULL, NULL, 105, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2490;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2490, NULL, NULL, NULL, NULL, NULL, 105, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2490;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2490, NULL, NULL, NULL, NULL, NULL, 105, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 35530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   35530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 35530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   35530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 35530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   35530, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1484720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1484720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1484720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1484720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1484720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1484720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4380;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4380, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4380;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4380, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4380;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4380, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 605530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   605530, NULL, NULL, NULL, NULL, NULL, 112.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 605530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   605530, NULL, NULL, NULL, NULL, NULL, 112.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 605530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   605530, NULL, NULL, NULL, NULL, NULL, 112.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 645530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   645530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 645530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   645530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 645530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   645530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 744720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   744720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 744720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   744720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 744720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   744720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 884720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   884720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 884720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   884720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 884720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   884720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4680;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4680, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4680;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4680, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4680;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4680, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1644290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1644290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1644290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1644290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1644290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1644290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2084720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2084720, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2084720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2084720, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2084720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2084720, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 20;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   20, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 20;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   20, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 20;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   20, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 304720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   304720, NULL, NULL, NULL, NULL, NULL, 141.667, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 304720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   304720, NULL, NULL, NULL, NULL, NULL, 141.667, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 304720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   304720, NULL, NULL, NULL, NULL, NULL, 141.667, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 394720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   394720, NULL, NULL, NULL, NULL, NULL, 103.866, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 394720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   394720, NULL, NULL, NULL, NULL, NULL, 103.866, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 394720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   394720, NULL, NULL, NULL, NULL, NULL, 103.866, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4020;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4020, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4020;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4020, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4020;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4020, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2850;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2850, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2850;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2850, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2850;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2850, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1504290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1504290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1504290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1504290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1504290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1504290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1584290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1584290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1584290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1584290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1584290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1584290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4660;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4660, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4660;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4660, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4660;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4660, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4670;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4670, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4670;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4670, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4670;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4670, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1364720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1364720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1364720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1364720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1364720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1364720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1514720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1514720, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1514720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1514720, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1514720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1514720, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2340;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2340, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2340;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2340, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2340;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2340, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 545530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   545530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 545530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   545530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 545530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   545530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2890;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2890, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2890;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2890, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2890;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2890, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 784720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   784720, NULL, NULL, NULL, NULL, NULL, 181.301, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 784720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   784720, NULL, NULL, NULL, NULL, NULL, 181.301, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 784720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   784720, NULL, NULL, NULL, NULL, NULL, 181.301, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 794720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   794720, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 794720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   794720, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 794720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   794720, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4040;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4040, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4040;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4040, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4040;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4040, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 944720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   944720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 944720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   944720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 944720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   944720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3200;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3200, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3200;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3200, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3200;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3200, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 964290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   964290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 964290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   964290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 964290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   964290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 974720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   974720, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 974720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   974720, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 974720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   974720, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1630;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1630, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1630;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1630, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1630;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1630, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1624290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1624290, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1624290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1624290, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1624290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1624290, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1114720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1114720, NULL, NULL, NULL, NULL, NULL, 101.903, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1114720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1114720, NULL, NULL, NULL, NULL, NULL, 101.903, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1114720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1114720, NULL, NULL, NULL, NULL, NULL, 101.903, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1134290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1134290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1134290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1134290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1134290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1134290, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1194720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1194720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1194720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1194720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1194720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1194720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1214720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1214720, NULL, NULL, NULL, NULL, NULL, 86.479, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1214720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1214720, NULL, NULL, NULL, NULL, NULL, 86.479, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1214720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1214720, NULL, NULL, NULL, NULL, NULL, 86.479, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1224720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1224720, NULL, NULL, NULL, NULL, NULL, 106.348, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1224720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1224720, NULL, NULL, NULL, NULL, NULL, 106.348, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1224720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1224720, NULL, NULL, NULL, NULL, NULL, 106.348, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4610;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4610, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4610;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4610, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4610;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4610, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 264290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   264290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 264290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   264290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 264290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   264290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 274290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   274290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 274290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   274290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 274290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   274290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 284290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   284290, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 284290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   284290, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 284290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   284290, NULL, NULL, NULL, NULL, NULL, 75.324, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 384720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   384720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 384720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   384720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 384720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   384720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1514290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1514290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1514290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1514290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1514290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1514290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2064720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2064720, NULL, NULL, NULL, NULL, NULL, 250, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2064720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2064720, NULL, NULL, NULL, NULL, NULL, 250, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2064720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2064720, NULL, NULL, NULL, NULL, NULL, 250, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 44720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   44720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 44720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   44720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 44720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   44720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 85530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   85530, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 85530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   85530, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 85530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   85530, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2770;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2770, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2770;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2770, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2770;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2770, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1384720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1384720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1384720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1384720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1384720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1384720, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1524720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1524720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1524720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1524720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1524720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1524720, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1574720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1574720, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1574720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1574720, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1574720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1574720, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 655530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   655530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 655530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   655530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 655530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   655530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 754720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   754720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 754720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   754720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 754720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   754720, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 835530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   835530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 835530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   835530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 835530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   835530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3170;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3170, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3170;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3170, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3170;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3170, NULL, NULL, NULL, NULL, NULL, 70, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 2310;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2310, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 2310;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   2310, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 2310;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   2310, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1054720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1054720, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1054720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1054720, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1054720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1054720, NULL, NULL, NULL, NULL, NULL, 400, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1084720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1084720, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1084720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1084720, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1084720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1084720, NULL, NULL, NULL, NULL, NULL, 300, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1174720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1174720, NULL, NULL, NULL, NULL, NULL, 103.259, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1174720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1174720, NULL, NULL, NULL, NULL, NULL, 103.259, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1174720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1174720, NULL, NULL, NULL, NULL, NULL, 103.259, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3800;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3800, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3800;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3800, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3800;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3800, NULL, NULL, NULL, NULL, NULL, 125, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 4610;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4610, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 4610;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4610, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 4610;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4610, NULL, NULL, NULL, NULL, NULL, 100.306, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 244290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   244290, NULL, NULL, NULL, NULL, NULL, 110, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 244290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   244290, NULL, NULL, NULL, NULL, NULL, 110, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 244290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   244290, NULL, NULL, NULL, NULL, NULL, 110, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 445530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   445530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 445530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   445530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 445530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   445530, NULL, NULL, NULL, NULL, NULL, 75, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1540;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1540, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1540;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1540, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1540;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1540, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1654290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1654290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1654290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1654290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1654290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1654290, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1324720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1324720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1324720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1324720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1324720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1324720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1350;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1350, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1350;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1350, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1350;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1350, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1435530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1435530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1435530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1435530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1435530;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1435530, NULL, NULL, NULL, NULL, NULL, 87.5, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 1444720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1444720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 1444720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1444720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 1444720;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1444720, NULL, NULL, NULL, NULL, NULL, 100, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80001
              AND ccla2 = 0
              AND ccla3 = 3620;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3620, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80002
              AND ccla2 = 0
              AND ccla3 = 3620;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   3620, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      DELETE      sgt_subtabs_det
            WHERE cempres = 24
              AND csubtabla = 8000047
              AND cversubt = 1
              AND ccla1 = 80003
              AND ccla2 = 0
              AND ccla3 = 3620;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   3620, NULL, NULL, NULL, NULL, NULL, 150, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;
/

COMMIT ;
DELETE      amparos_conf
      WHERE ccodamparo = 806620;

DELETE      detamparos_conf
      WHERE ccodamparo = 806620;


INSERT INTO amparos_conf
            (ccodamparo
            )
     VALUES (806620
            );
INSERT INTO detamparos_conf
            (ccodamparo, cidioma, tdescripcion,
             tcaratula
            )
     VALUES (806620, 1, 'OPERADOR ECONÓMICO ADUANERO OEA',
             'OPERADOR ECONÓMICO ADUANERO OEA'
            );
INSERT INTO detamparos_conf
            (ccodamparo, cidioma, tdescripcion,
             tcaratula
            )
     VALUES (806620, 2, 'OPERADOR ECONÓMICO ADUANERO OEA',
             'OPERADOR ECONÓMICO ADUANERO OEA'
            );
INSERT INTO detamparos_conf
            (ccodamparo, cidioma, tdescripcion,
             tcaratula
            )
     VALUES (806620, 8, 'OPERADOR ECONÓMICO ADUANERO OEA',
             'OPERADOR ECONÓMICO ADUANERO OEA'
            );
COMMIT ;


INSERT INTO riesgoactamp_conf
            (cempres, cramo, cmodali, ctipseg, ccolect, cactivi, cgarant,
             criesgoact, ccodamparo, precarg, iextrap, creten,
             ffecini, ffecfin,
             cgruries, cusualt, falta, cusumod, fmodifi
            )
     VALUES (24, 806, 1, 1, 0, 0, NULL,
             1, 806620, 0, 0, 'N',
             TO_DATE ('04/04/2016 21:44:37', 'MM/DD/YYYY HH24:MI:SS'), NULL,
             NULL, NULL, NULL, NULL, NULL
            );
INSERT INTO riesgoactamp_conf
            (cempres, cramo, cmodali, ctipseg, ccolect, cactivi, cgarant,
             criesgoact, ccodamparo, precarg, iextrap, creten,
             ffecini, ffecfin,
             cgruries, cusualt, falta, cusumod, fmodifi
            )
     VALUES (24, 806, 3, 1, 0, 0, NULL,
             1, 806620, 0, 0, 'N',
             TO_DATE ('04/04/2016 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL,
             NULL, NULL, NULL, NULL, NULL
            );
INSERT INTO riesgoactamp_conf
            (cempres, cramo, cmodali, ctipseg, ccolect, cactivi, cgarant,
             criesgoact, ccodamparo, precarg, iextrap, creten,
             ffecini, ffecfin,
             cgruries, cusualt, falta, cusumod, fmodifi
            )
     VALUES (24, 801, 12, 1, 0, 0, NULL,
             1, 806620, 0, 0, 'N',
             TO_DATE ('04/04/2016 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL,
             NULL, NULL, NULL, NULL, NULL
            );
INSERT INTO riesgoactamp_conf
            (cempres, cramo, cmodali, ctipseg, ccolect, cactivi, cgarant,
             criesgoact, ccodamparo, precarg, iextrap, creten,
             ffecini, ffecfin,
             cgruries, cusualt, falta, cusumod, fmodifi
            )
     VALUES (24, 801, 13, 1, 0, 0, NULL,
             1, 806620, 0, 0, 'N',
             TO_DATE ('04/04/2016 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL,
             NULL, NULL, NULL, NULL, NULL
            );
COMMIT ;

INSERT INTO sgt_subtabs_det
            (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
             ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
             nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
             ccla10, nval7, nval8, nval9, nval10
            )
     VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806620,
             NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
             NULL, NULL, NULL, f_sysdate, f_user, f_sysdate, f_user, NULL,
             NULL, NULL, NULL, NULL, NULL
            );
INSERT INTO sgt_subtabs_det
            (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
             ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
             nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
             ccla10, nval7, nval8, nval9, nval10
            )
     VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806620,
             NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
             NULL, NULL, NULL, f_sysdate, f_user, f_sysdate, f_user, NULL,
             NULL, NULL, NULL, NULL, NULL
            );
COMMIT ;

UPDATE sgt_subtabs_det
   SET nval1 = 25000
 WHERE csubtabla = 9000008 AND ccla1 = 80009;

UPDATE sgt_subtabs_det
   SET nval1 = 50000
 WHERE csubtabla = 8000011 AND ccla1 = 80009;
COMMIT ;