/* Formatted on 2019/07/31 17:10 (Formatter Plus v4.8.8) */
DROP SEQUENCE sdetalle_conf;

CREATE SEQUENCE sdetalle_conf
  START WITH 1630000
  MAXVALUE 9999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  NOCACHE
  NOORDER;
/

DECLARE
   v_csubtabla   NUMBER := 8000047;
   v_cempres     NUMBER := 24;

   CURSOR c_con
   IS
      SELECT *
        FROM sgt_subtabs_det
       WHERE csubtabla = v_csubtabla AND ccla1 = 80001;

   CURSOR c_prod
   IS
      SELECT sproduc
        FROM productos
       WHERE cramo = 801 AND cactivo = 1 AND sproduc <> 80001;
--750117_RELATI_RIESGO
BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1435530, NULL, NULL, NULL, NULL, NULL, 30.5181498910939,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1840, NULL, NULL, NULL, NULL, NULL, 35.3876261525094,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1224720, NULL, NULL, NULL, NULL, NULL, 24.7163415366584,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1014720, NULL, NULL, NULL, NULL, NULL, -25.3613293846542,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   614720, NULL, NULL, NULL, NULL, NULL, 22.017761619699,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1074290, NULL, NULL, NULL, NULL, NULL, -11.6458108314554,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1504720, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   884720, NULL, NULL, NULL, NULL, NULL, 11.6516318640469,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   714720, NULL, NULL, NULL, NULL, NULL, -33.0032509620138,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   864720, NULL, NULL, NULL, NULL, NULL, 4.71623286680001,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1114720, NULL, NULL, NULL, NULL, NULL, 95.6393217455447,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   404720, NULL, NULL, NULL, NULL, NULL, -9.11966153938928,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   324720, NULL, NULL, NULL, NULL, NULL, 10.4904682720818,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   774720, NULL, NULL, NULL, NULL, NULL, 30.2673809900312,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3800, NULL, NULL, NULL, NULL, NULL, 54.5761984330511,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   224290, NULL, NULL, NULL, NULL, NULL, 144.620632395154,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3450, NULL, NULL, NULL, NULL, NULL, 35.830271904361,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2070, NULL, NULL, NULL, NULL, NULL, -10.3197306826262,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4200, NULL, NULL, NULL, NULL, NULL, 23898.2812551874,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   60, NULL, NULL, NULL, NULL, NULL, 23898.2812551874, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   425530, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   665530, NULL, NULL, NULL, NULL, NULL, 24.6933084856285,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2450, NULL, NULL, NULL, NULL, NULL, 24.7264909180643,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   655530, NULL, NULL, NULL, NULL, NULL, -8.7791989229855,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1174720, NULL, NULL, NULL, NULL, NULL, -4.00687497925017,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   164720, NULL, NULL, NULL, NULL, NULL, -10.4765869097184,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1124720, NULL, NULL, NULL, NULL, NULL, 7.99226564834352,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   304720, NULL, NULL, NULL, NULL, NULL, 13.5140311751746,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   364720, NULL, NULL, NULL, NULL, NULL, -14.8453131506068,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   944720, NULL, NULL, NULL, NULL, NULL, -17.4797210257072,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4070, NULL, NULL, NULL, NULL, NULL, -4.39739628193189,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1614720, NULL, NULL, NULL, NULL, NULL, -27.174003404138,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   134720, NULL, NULL, NULL, NULL, NULL, -2.53039794540714,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2550, NULL, NULL, NULL, NULL, NULL, 20.4786949752758,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   984720, NULL, NULL, NULL, NULL, NULL, -26.4927358190914,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2310, NULL, NULL, NULL, NULL, NULL, -26.4927358190914,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   204290, NULL, NULL, NULL, NULL, NULL, -25.3390387833248,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4150, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1680, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3820, NULL, NULL, NULL, NULL, NULL, 2.24585912928643,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2040, NULL, NULL, NULL, NULL, NULL, 190.337800912824,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   914290, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2750, NULL, NULL, NULL, NULL, NULL, 203.062294809899,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2380, NULL, NULL, NULL, NULL, NULL, 203.062294809899,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   40, NULL, NULL, NULL, NULL, NULL, 594.904528675414, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1024720, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1255530, NULL, NULL, NULL, NULL, NULL, 65.2150678443574,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2490, NULL, NULL, NULL, NULL, NULL, -34.4045593309877,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3050, NULL, NULL, NULL, NULL, NULL, 35.9902648937437,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   264290, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   274290, NULL, NULL, NULL, NULL, NULL, -22.2455687331927,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   194290, NULL, NULL, NULL, NULL, NULL, -24.8647754304978,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2720, NULL, NULL, NULL, NULL, NULL, -21.3276036405642,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   244290, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2090, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3850, NULL, NULL, NULL, NULL, NULL, -13.090992395273,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   94720, NULL, NULL, NULL, NULL, NULL, 54.5761984330511,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3910, NULL, NULL, NULL, NULL, NULL, 11.5891330633549,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4250, NULL, NULL, NULL, NULL, NULL, 64.6564545619959,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1780, NULL, NULL, NULL, NULL, NULL, -2.53039794540714,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1550, NULL, NULL, NULL, NULL, NULL, 67.9879687863122,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3940, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1285530, NULL, NULL, NULL, NULL, NULL, 24.8570301559105,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3150, NULL, NULL, NULL, NULL, NULL, -23.1051726812454,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   605530, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   30, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3170, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   25530, NULL, NULL, NULL, NULL, NULL, -18.3968701992061,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   465530, NULL, NULL, NULL, NULL, NULL, -6.79792314496911,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1484720, NULL, NULL, NULL, NULL, NULL, -8.80653123028768,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1004720, NULL, NULL, NULL, NULL, NULL, -32.2097995024351,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1324720, NULL, NULL, NULL, NULL, NULL, 19.4150778331741,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1214720, NULL, NULL, NULL, NULL, NULL, -3.26413182166685,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   90, NULL, NULL, NULL, NULL, NULL, 23898.2812551874, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1374720, NULL, NULL, NULL, NULL, NULL, 114.899913177004,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4360, NULL, NULL, NULL, NULL, NULL, 19.9914062759373,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1344720, NULL, NULL, NULL, NULL, NULL, 7.84412810961277,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   674720, NULL, NULL, NULL, NULL, NULL, 0.858181442271433,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1514720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   974720, NULL, NULL, NULL, NULL, NULL, -9.43282956572891,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1444720, NULL, NULL, NULL, NULL, NULL, -27.174003404138,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   214290, NULL, NULL, NULL, NULL, NULL, -22.3421743184233,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3790, NULL, NULL, NULL, NULL, NULL, 144.923415336003,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3410, NULL, NULL, NULL, NULL, NULL, 11.4375037562637,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3420, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3430, NULL, NULL, NULL, NULL, NULL, -16.752732716193,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   594290, NULL, NULL, NULL, NULL, NULL, -28.859840223141,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3840, NULL, NULL, NULL, NULL, NULL, 221.576968819512,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2390, NULL, NULL, NULL, NULL, NULL, -10.3197306826262,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   35530, NULL, NULL, NULL, NULL, NULL, -21.3276036405642,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   835530, NULL, NULL, NULL, NULL, NULL, 3.22628914451819,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   114290, NULL, NULL, NULL, NULL, NULL, 7.99226564834352,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3950, NULL, NULL, NULL, NULL, NULL, 29.6801666578601,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1304290, NULL, NULL, NULL, NULL, NULL, -21.1205259076393,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   584720, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   754720, NULL, NULL, NULL, NULL, NULL, 24.3538760261442,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4350, NULL, NULL, NULL, NULL, NULL, -12.3772445944367,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1474720, NULL, NULL, NULL, NULL, NULL, -3.1163956054623,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1154720, NULL, NULL, NULL, NULL, NULL, -12.3772445944367,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1465530, NULL, NULL, NULL, NULL, NULL, -5.05925081161868,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2900, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   994720, NULL, NULL, NULL, NULL, NULL, -13.9872465768909,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2910, NULL, NULL, NULL, NULL, NULL, 13.5140311751746,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3200, NULL, NULL, NULL, NULL, NULL, -13.8448254437073,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1594720, NULL, NULL, NULL, NULL, NULL, 30.9021287926112,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1094720, NULL, NULL, NULL, NULL, NULL, 4.71623286680001,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   334720, NULL, NULL, NULL, NULL, NULL, -13.6061874813252,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4050, NULL, NULL, NULL, NULL, NULL, 196.539678457549,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   55530, NULL, NULL, NULL, NULL, NULL, 55.9866905857118,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1184720, NULL, NULL, NULL, NULL, NULL, 33.2825333191388,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   904720, NULL, NULL, NULL, NULL, NULL, 1.75634528157902,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   564720, NULL, NULL, NULL, NULL, NULL, 0.79278127178728,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1234720, NULL, NULL, NULL, NULL, NULL, 33.7681973667005,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1314720, NULL, NULL, NULL, NULL, NULL, 89.9763770236412,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   84290, NULL, NULL, NULL, NULL, NULL, 11.4375037562637,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   254290, NULL, NULL, NULL, NULL, NULL, 59.9829075530733,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   634290, NULL, NULL, NULL, NULL, NULL, 1.53121075973528,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4180, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2030, NULL, NULL, NULL, NULL, NULL, -28.0051562344376,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2730, NULL, NULL, NULL, NULL, NULL, -4.0068749792502,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   964290, NULL, NULL, NULL, NULL, NULL, -16.752732716193,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1390, NULL, NULL, NULL, NULL, NULL, 11.5891330633549,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   3100, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2830, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   515530, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   2460, NULL, NULL, NULL, NULL, NULL, 24.7264909180643,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   804290, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (1036094, 24, 8000047, 1, 80001, 0,
                   75530, NULL, NULL, NULL, NULL, NULL, 227.730859728805,
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
           VALUES (1036100, 24, 8000047, 1, 80001, 0,
                   2500, NULL, NULL, NULL, NULL, NULL, 44.6117018169927,
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
           VALUES (1036102, 24, 8000047, 1, 80001, 0,
                   4020, NULL, NULL, NULL, NULL, NULL, -12.2128492732982,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036114, 24, 8000047, 1, 80001, 0,
                   1164720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036117, 24, 8000047, 1, 80001, 0,
                   394720, NULL, NULL, NULL, NULL, NULL, 9.58344638982489,
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
           VALUES (1036123, 24, 8000047, 1, 80001, 0,
                   4040, NULL, NULL, NULL, NULL, NULL, 10.3920937738623,
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
           VALUES (1036125, 24, 8000047, 1, 80001, 0,
                   1204720, NULL, NULL, NULL, NULL, NULL, 555.762576014512,
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
           VALUES (1036126, 24, 8000047, 1, 80001, 0,
                   294720, NULL, NULL, NULL, NULL, NULL, -13.3736279516988,
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
           VALUES (1036138, 24, 8000047, 1, 80001, 0,
                   74720, NULL, NULL, NULL, NULL, NULL, 23898.2812551874,
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
           VALUES (1036139, 24, 8000047, 1, 80001, 0,
                   1524720, NULL, NULL, NULL, NULL, NULL, -9.97573121085582,
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
           VALUES (1036143, 24, 8000047, 1, 80001, 0,
                   874720, NULL, NULL, NULL, NULL, NULL, 2.71641438368826,
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
           VALUES (1036153, 24, 8000047, 1, 80001, 0,
                   1364720, NULL, NULL, NULL, NULL, NULL, -32.2097995024351,
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
           VALUES (1036171, 24, 8000047, 1, 80001, 0,
                   1630, NULL, NULL, NULL, NULL, NULL, 23898.2812551874,
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
           VALUES (1036173, 24, 8000047, 1, 80001, 0,
                   554290, NULL, NULL, NULL, NULL, NULL, -11.5445600231329,
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
           VALUES (1036177, 24, 8000047, 1, 80001, 0,
                   735530, NULL, NULL, NULL, NULL, NULL, -9.34207725688815,
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
           VALUES (1036182, 24, 8000047, 1, 80001, 0,
                   2710, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036188, 24, 8000047, 1, 80001, 0,
                   2360, NULL, NULL, NULL, NULL, NULL, 11.5891330633549,
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
           VALUES (1036195, 24, 8000047, 1, 80001, 0,
                   234290, NULL, NULL, NULL, NULL, NULL, 71.1904335595696,
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
           VALUES (1036198, 24, 8000047, 1, 80001, 0,
                   1134290, NULL, NULL, NULL, NULL, NULL, -16.752732716193,
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
           VALUES (1036201, 24, 8000047, 1, 80001, 0,
                   2060, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036206, 24, 8000047, 1, 80001, 0,
                   1574720, NULL, NULL, NULL, NULL, NULL, 293.571812585074,
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
           VALUES (1036218, 24, 8000047, 1, 80001, 0,
                   1770, NULL, NULL, NULL, NULL, NULL, -10.4765869097184,
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
           VALUES (1036221, 24, 8000047, 1, 80001, 0,
                   445530, NULL, NULL, NULL, NULL, NULL, -28.0354039257451,
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
           VALUES (1036242, 24, 8000047, 1, 80001, 0,
                   814720, NULL, NULL, NULL, NULL, NULL, 79.7365387127524,
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
           VALUES (1036243, 24, 8000047, 1, 80001, 0,
                   2510, NULL, NULL, NULL, NULL, NULL, 30.2673809900312,
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
           VALUES (1036245, 24, 8000047, 1, 80001, 0,
                   1414720, NULL, NULL, NULL, NULL, NULL, 76.2169902309386,
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
           VALUES (1036250, 24, 8000047, 1, 80001, 0,
                   694720, NULL, NULL, NULL, NULL, NULL, 40.5128834912662,
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
           VALUES (1036271, 24, 8000047, 1, 80001, 0,
                   314720, NULL, NULL, NULL, NULL, NULL, -4.88402181372082,
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
           VALUES (1036278, 24, 8000047, 1, 80001, 0,
                   344720, NULL, NULL, NULL, NULL, NULL, 2.42256486052312,
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
           VALUES (1036280, 24, 8000047, 1, 80001, 0,
                   354720, NULL, NULL, NULL, NULL, NULL, -9.83932919047402,
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
           VALUES (1036299, 24, 8000047, 1, 80001, 0,
                   1054720, NULL, NULL, NULL, NULL, NULL, 1387.89343782162,
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
           VALUES (1036302, 24, 8000047, 1, 80001, 0,
                   1194720, NULL, NULL, NULL, NULL, NULL, -11.6458108314554,
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
           VALUES (1036305, 24, 8000047, 1, 80001, 0,
                   1294720, NULL, NULL, NULL, NULL, NULL, 20.4786949752758,
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
           VALUES (1036328, 24, 8000047, 1, 80001, 0,
                   1540, NULL, NULL, NULL, NULL, NULL, 11.5891330633549,
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
           VALUES (1036334, 24, 8000047, 1, 80001, 0,
                   2010, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036337, 24, 8000047, 1, 80001, 0,
                   2020, NULL, NULL, NULL, NULL, NULL, 34.7153777874514,
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
           VALUES (1036341, 24, 8000047, 1, 80001, 0,
                   2050, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036348, 24, 8000047, 1, 80001, 0,
                   3070, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036350, 24, 8000047, 1, 80001, 0,
                   3440, NULL, NULL, NULL, NULL, NULL, -25.3390387833248,
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
           VALUES (1036352, 24, 8000047, 1, 80001, 0,
                   2740, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036353, 24, 8000047, 1, 80001, 0,
                   1064720, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036357, 24, 8000047, 1, 80001, 0,
                   2760, NULL, NULL, NULL, NULL, NULL, 48.874456394289,
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
           VALUES (1036369, 24, 8000047, 1, 80001, 0,
                   4240, NULL, NULL, NULL, NULL, NULL, 23898.2812551874,
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
           VALUES (1036374, 24, 8000047, 1, 80001, 0,
                   2810, NULL, NULL, NULL, NULL, NULL, 7.99226564834352,
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
           VALUES (1036375, 24, 8000047, 1, 80001, 0,
                   4260, NULL, NULL, NULL, NULL, NULL, 154.381781304987,
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
           VALUES (1036377, 24, 8000047, 1, 80001, 0,
                   3920, NULL, NULL, NULL, NULL, NULL, -10.4765869097184,
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
           VALUES (1036378, 24, 8000047, 1, 80001, 0,
                   3130, NULL, NULL, NULL, NULL, NULL, -2.53039794540714,
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
           VALUES (1036381, 24, 8000047, 1, 80001, 0,
                   3530, NULL, NULL, NULL, NULL, NULL, -15.370734709246,
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
           VALUES (1036387, 24, 8000047, 1, 80001, 0,
                   85530, NULL, NULL, NULL, NULL, NULL, -3.02735136410225,
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
           VALUES (1036391, 24, 8000047, 1, 80001, 0,
                   645530, NULL, NULL, NULL, NULL, NULL, 16.9954745332939,
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
           VALUES (1036395, 24, 8000047, 1, 80001, 0,
                   4290, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036396, 24, 8000047, 1, 80001, 0,
                   20, NULL, NULL, NULL, NULL, NULL, 23898.2812551874, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036401, 24, 8000047, 1, 80001, 0,
                   3960, NULL, NULL, NULL, NULL, NULL, 29.6801666578601,
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
           VALUES (1036403, 24, 8000047, 1, 80001, 0,
                   3970, NULL, NULL, NULL, NULL, NULL, -21.1205259076393,
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
           VALUES (1036405, 24, 8000047, 1, 80001, 0,
                   935530, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036407, 24, 8000047, 1, 80001, 0,
                   844290, NULL, NULL, NULL, NULL, NULL, -24.4935499531088,
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
           VALUES (1036409, 24, 8000047, 1, 80001, 0,
                   545530, NULL, NULL, NULL, NULL, NULL, -8.92361853283319,
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
           VALUES (1036410, 24, 8000047, 1, 80001, 0,
                   765530, NULL, NULL, NULL, NULL, NULL, -11.6458108314554,
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
           VALUES (1036412, 24, 8000047, 1, 80001, 0,
                   535530, NULL, NULL, NULL, NULL, NULL, 44.6117018169927,
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
           VALUES (1036418, 24, 8000047, 1, 80001, 0,
                   1104720, NULL, NULL, NULL, NULL, NULL, 76.2169902309386,
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
           VALUES (1036421, 24, 8000047, 1, 80001, 0,
                   744720, NULL, NULL, NULL, NULL, NULL, 1.45519786843749,
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
           VALUES (1036424, 24, 8000047, 1, 80001, 0,
                   1850, NULL, NULL, NULL, NULL, NULL, -29.9609204608137,
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
           VALUES (1036430, 24, 8000047, 1, 80001, 0,
                   2170, NULL, NULL, NULL, NULL, NULL, -5.05925081161868,
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
           VALUES (1036443, 24, 8000047, 1, 80001, 0,
                   3600, NULL, NULL, NULL, NULL, NULL, 22.1030705211739,
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
           VALUES (1036444, 24, 8000047, 1, 80001, 0,
                   384720, NULL, NULL, NULL, NULL, NULL, -4.0068749792502,
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
           VALUES (1036446, 24, 8000047, 1, 80001, 0,
                   284290, NULL, NULL, NULL, NULL, NULL, -8.42111542451329,
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
           VALUES (1036455, 24, 8000047, 1, 80001, 0,
                   794720, NULL, NULL, NULL, NULL, NULL, -13.6061874813252,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036457, 24, 8000047, 1, 80001, 0,
                   4380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036460, 24, 8000047, 1, 80001, 0,
                   684720, NULL, NULL, NULL, NULL, NULL, 7.99226564834352,
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
           VALUES (1036464, 24, 8000047, 1, 80001, 0,
                   2190, NULL, NULL, NULL, NULL, NULL, -4.39739628193189,
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
           VALUES (1036482, 24, 8000047, 1, 80001, 0,
                   3370, NULL, NULL, NULL, NULL, NULL, -10.3197306826262,
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
           VALUES (1036487, 24, 8000047, 1, 80001, 0,
                   1560, NULL, NULL, NULL, NULL, NULL, 11.5891330633549,
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
           VALUES (1036488, 24, 8000047, 1, 80001, 0,
                   2340, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036490, 24, 8000047, 1, 80001, 0,
                   1660, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
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
           VALUES (1036492, 24, 8000047, 1, 80001, 0,
                   1670, NULL, NULL, NULL, NULL, NULL, 859.931250207498,
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
           VALUES (1036506, 24, 8000047, 1, 80001, 0,
                   3830, NULL, NULL, NULL, NULL, NULL, -31.6484198438169,
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
           VALUES (1036513, 24, 8000047, 1, 80001, 0,
                   170, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
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
           VALUES (1036520, 24, 8000047, 1, 80001, 0,
                   64720, NULL, NULL, NULL, NULL, NULL, 15.1917500248998,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036521, 24, 8000047, 1, 80001, 0,
                   1084720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036523, 24, 8000047, 1, 80001, 0,
                   894720, NULL, NULL, NULL, NULL, NULL, -13.090992395273,
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
           VALUES (1036526, 24, 8000047, 1, 80001, 0,
                   1144720, NULL, NULL, NULL, NULL, NULL, 94.4108017898531,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036527, 24, 8000047, 1, 80001, 0,
                   2770, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036528, 24, 8000047, 1, 80001, 0,
                   1710, NULL, NULL, NULL, NULL, NULL, 23898.2812551874,
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
           VALUES (1036540, 24, 8000047, 1, 80001, 0,
                   1580, NULL, NULL, NULL, NULL, NULL, 67.9879687863122,
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
           VALUES (1036541, 24, 8000047, 1, 80001, 0,
                   1350, NULL, NULL, NULL, NULL, NULL, 60.4298592586507,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                   nval1, nval2, nval3, nval4, nval5, nval6,
                   falta, cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                   nval8, nval9, nval10
                  )
           VALUES (1036545, 24, 8000047, 1, 80001, 0,
                   sdetalle_conf.NEXTVAL, NULL, NULL, NULL, NULL, NULL,
                   213.624952195962, NULL, NULL, NULL, NULL, NULL,
                   f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                   NULL, NULL, NULL
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
           VALUES (1036548, 24, 8000047, 1, 80001, 0,
                   525530, NULL, NULL, NULL, NULL, NULL, 1.45137578498369,
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
           VALUES (1036557, 24, 8000047, 1, 80001, 0,
                   2480, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036560, 24, 8000047, 1, 80001, 0,
                   1800, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036564, 24, 8000047, 1, 80001, 0,
                   124290, NULL, NULL, NULL, NULL, NULL, 64.6564545619959,
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
           VALUES (1036568, 24, 8000047, 1, 80001, 0,
                   455530, NULL, NULL, NULL, NULL, NULL, -24.6552316343414,
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
           VALUES (1036571, 24, 8000047, 1, 80001, 0,
                   2890, NULL, NULL, NULL, NULL, NULL, 10.4188736678644,
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
           VALUES (1036575, 24, 8000047, 1, 80001, 0,
                   1044720, NULL, NULL, NULL, NULL, NULL, 31.1991750910054,
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
           VALUES (1036577, 24, 8000047, 1, 80001, 0,
                   704720, NULL, NULL, NULL, NULL, NULL, -32.2097995024351,
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
           VALUES (1036582, 24, 8000047, 1, 80001, 0,
                   1264720, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036584, 24, 8000047, 1, 80001, 0,
                   1384720, NULL, NULL, NULL, NULL, NULL, -15.370734709246,
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
           VALUES (1036595, 24, 8000047, 1, 80001, 0,
                   2180, NULL, NULL, NULL, NULL, NULL, -11.6458108314554,
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
           VALUES (1036616, 24, 8000047, 1, 80001, 0,
                   1534720, NULL, NULL, NULL, NULL, NULL, 20.8895688166844,
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
           VALUES (1036618, 24, 8000047, 1, 80001, 0,
                   784720, NULL, NULL, NULL, NULL, NULL, -8.80653123028768,
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
           VALUES (1036624, 24, 8000047, 1, 80001, 0,
                   1334720, NULL, NULL, NULL, NULL, NULL, -32.2097995024351,
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
           VALUES (1036626, 24, 8000047, 1, 80001, 0,
                   1244720, NULL, NULL, NULL, NULL, NULL, -8.80653123028768,
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
      COMMIT;

      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1435530, NULL, NULL, NULL, NULL, NULL, 35.1197984878931,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   614720, NULL, NULL, NULL, NULL, NULL, 52.4713456088877,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   2900, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   4360, NULL, NULL, NULL, NULL, NULL, 24.4212122710788,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   334720, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   384720, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3610, NULL, NULL, NULL, NULL, NULL, -3.89743315067459,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   564720, NULL, NULL, NULL, NULL, NULL, 8.9594554694645,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   794720, NULL, NULL, NULL, NULL, NULL, -22.1718175218111,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   4380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1244720, NULL, NULL, NULL, NULL, NULL, 24.5250919651023,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   134720, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   84290, NULL, NULL, NULL, NULL, NULL, 20.4666601610843,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   554290, NULL, NULL, NULL, NULL, NULL, -6.60618102617327,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   735530, NULL, NULL, NULL, NULL, NULL, -12.6679966802213,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3800, NULL, NULL, NULL, NULL, NULL, 67.1006415071463,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3420, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3100, NULL, NULL, NULL, NULL, NULL, 3.07009243237286,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1710, NULL, NULL, NULL, NULL, NULL, 428.034284196977,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   2820, NULL, NULL, NULL, NULL, NULL, 160.812735538231,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3540, NULL, NULL, NULL, NULL, NULL, -18.5994646267181,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   35530, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1800, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   504290, NULL, NULL, NULL, NULL, NULL, -9.05600037327641,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   804290, NULL, NULL, NULL, NULL, NULL, -5.27766378447349,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   25530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1840, NULL, NULL, NULL, NULL, NULL, 24.8715805464753,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   814720, NULL, NULL, NULL, NULL, NULL, -10.4989638194231,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   754720, NULL, NULL, NULL, NULL, NULL, 8.9594554694645,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   164720, NULL, NULL, NULL, NULL, NULL, -16.9832720232651,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1384720, NULL, NULL, NULL, NULL, NULL, -19.7760819573446,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1124720, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1324720, NULL, NULL, NULL, NULL, NULL, -11.7947265247192,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   394720, NULL, NULL, NULL, NULL, NULL, 34.6716046197281,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   2170, NULL, NULL, NULL, NULL, NULL, -9.53236991555826,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   90, NULL, NULL, NULL, NULL, NULL, 25842.7274927296, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   2910, NULL, NULL, NULL, NULL, NULL, 12.8653233316313,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1204720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   74720, NULL, NULL, NULL, NULL, NULL, 25842.7274927296,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1524720, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   714720, NULL, NULL, NULL, NULL, NULL, -27.5748798545491,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1234720, NULL, NULL, NULL, NULL, NULL, 40.2731428874333,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   974720, NULL, NULL, NULL, NULL, NULL, -2.09467930725176,
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
           VALUES (1036014, 24, 8000047, 1, 80001, 1,
                   274290, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036023, 24, 8000047, 1, 80001, 1,
                   1540, NULL, NULL, NULL, NULL, NULL, 2009.67829230193,
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
           VALUES (1036028, 24, 8000047, 1, 80001, 1,
                   2350, NULL, NULL, NULL, NULL, NULL, 67.1006415071463,
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
           VALUES (1036032, 24, 8000047, 1, 80001, 1,
                   2360, NULL, NULL, NULL, NULL, NULL, 19.3365464665564,
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
           VALUES (1036038, 24, 8000047, 1, 80001, 1,
                   2050, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036039, 24, 8000047, 1, 80001, 1,
                   2730, NULL, NULL, NULL, NULL, NULL, 71.0299776593698,
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
           VALUES (1036042, 24, 8000047, 1, 80001, 1,
                   2060, NULL, NULL, NULL, NULL, NULL, -21.4850828125136,
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
           VALUES (1036045, 24, 8000047, 1, 80001, 1,
                   914290, NULL, NULL, NULL, NULL, NULL, -10.4121540385743,
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
           VALUES (1036048, 24, 8000047, 1, 80001, 1,
                   2740, NULL, NULL, NULL, NULL, NULL, -22.5549563152818,
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
           VALUES (1036050, 24, 8000047, 1, 80001, 1,
                   1390, NULL, NULL, NULL, NULL, NULL, 20.6305751411592,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036060, 24, 8000047, 1, 80001, 1,
                   1270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036068, 24, 8000047, 1, 80001, 1,
                   3520, NULL, NULL, NULL, NULL, NULL, 16.7089451778814,
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
           VALUES (1036081, 24, 8000047, 1, 80001, 1,
                   835530, NULL, NULL, NULL, NULL, NULL, -10.7773729657522,
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
           VALUES (1036086, 24, 8000047, 1, 80001, 1,
                   935530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036092, 24, 8000047, 1, 80001, 1,
                   844290, NULL, NULL, NULL, NULL, NULL, -6.99418071925244,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   264290, NULL, NULL, NULL, NULL, NULL, -11.2501282004407,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   634290, NULL, NULL, NULL, NULL, NULL, -11.7947265247192,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   2030, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   214290, NULL, NULL, NULL, NULL, NULL, -16.0499959179551,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3460, NULL, NULL, NULL, NULL, NULL, 258.925908808644,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1084720, NULL, NULL, NULL, NULL, NULL, 25842.7274927296,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3940, NULL, NULL, NULL, NULL, NULL, -18.5994646267181,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1285530, NULL, NULL, NULL, NULL, NULL, 171.522184509314,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1255530, NULL, NULL, NULL, NULL, NULL, 16.4453446632863,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   20, NULL, NULL, NULL, NULL, NULL, 25842.7274927296, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   2880, NULL, NULL, NULL, NULL, NULL, -11.7947265247192,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   655530, NULL, NULL, NULL, NULL, NULL, 8.9594554694645,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1044720, NULL, NULL, NULL, NULL, NULL, -5.27766378447349,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1014720, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1104720, NULL, NULL, NULL, NULL, NULL, 8.55827365817832,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1004720, NULL, NULL, NULL, NULL, NULL, -22.0770850217237,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1164720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1154720, NULL, NULL, NULL, NULL, NULL, -5.27766378447349,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3200, NULL, NULL, NULL, NULL, NULL, -6.86415448525841,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1094720, NULL, NULL, NULL, NULL, NULL, 13.2008023591851,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   784720, NULL, NULL, NULL, NULL, NULL, 223.692115383922,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1314720, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   774720, NULL, NULL, NULL, NULL, NULL, -8.06422929206002,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3790, NULL, NULL, NULL, NULL, NULL, 164.768187066609,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3830, NULL, NULL, NULL, NULL, NULL, 32.7222771552894,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   2380, NULL, NULL, NULL, NULL, NULL, 551.298615708425,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   94720, NULL, NULL, NULL, NULL, NULL, 67.1006415071463,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   4200, NULL, NULL, NULL, NULL, NULL, 25842.7274927296,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3910, NULL, NULL, NULL, NULL, NULL, 20.6305751411592,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3130, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1024720, NULL, NULL, NULL, NULL, NULL, 16.7089451778814,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1580, NULL, NULL, NULL, NULL, NULL, 64.3892116119143,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   425530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   85530, NULL, NULL, NULL, NULL, NULL, -4.48696604282155,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   75530, NULL, NULL, NULL, NULL, NULL, 196.063270408436,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   545530, NULL, NULL, NULL, NULL, NULL, 14.1480009680105,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   465530, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   415530, NULL, NULL, NULL, NULL, NULL, -0.649429348011543,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1174720, NULL, NULL, NULL, NULL, NULL, -18.4992277986652,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1264720, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   694720, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1850, NULL, NULL, NULL, NULL, NULL, -22.5101293338447,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1594720, NULL, NULL, NULL, NULL, NULL, -15.4773858776327,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   344720, NULL, NULL, NULL, NULL, NULL, 8.9594554694645,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   354720, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3600, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1514720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   864720, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1630, NULL, NULL, NULL, NULL, NULL, 25842.7274927296,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   204290, NULL, NULL, NULL, NULL, NULL, -19.2896795152453,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   4180, NULL, NULL, NULL, NULL, NULL, 16.7089451778814,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3070, NULL, NULL, NULL, NULL, NULL, -18.6187944466342,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3440, NULL, NULL, NULL, NULL, NULL, -19.2896795152453,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3840, NULL, NULL, NULL, NULL, NULL, 54.0377735518015,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   2810, NULL, NULL, NULL, NULL, NULL, 17.261128267138,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   4250, NULL, NULL, NULL, NULL, NULL, 35.4210375120487,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3930, NULL, NULL, NULL, NULL, NULL, -3.22300645933902,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1780, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   665530, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   2450, NULL, NULL, NULL, NULL, NULL, 14.1480009680105,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   3950, NULL, NULL, NULL, NULL, NULL, 111.318021473575,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1304290, NULL, NULL, NULL, NULL, NULL, -12.8984944894422,
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
           VALUES (1036097, 24, 8000047, 1, 80001, 1,
                   765530, NULL, NULL, NULL, NULL, NULL, -24.543816970422,
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
           VALUES (1036101, 24, 8000047, 1, 80001, 1,
                   2890, NULL, NULL, NULL, NULL, NULL, 55.6563649563779,
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
           VALUES (1036121, 24, 8000047, 1, 80001, 1,
                   1465530, NULL, NULL, NULL, NULL, NULL, 20.0750251765724,
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
           VALUES (1036148, 24, 8000047, 1, 80001, 1,
                   904720, NULL, NULL, NULL, NULL, NULL, 12.4536766603487,
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
           VALUES (1036151, 24, 8000047, 1, 80001, 1,
                   1334720, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036154, 24, 8000047, 1, 80001, 1,
                   1364720, NULL, NULL, NULL, NULL, NULL, -27.5748798545491,
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
           VALUES (1036156, 24, 8000047, 1, 80001, 1,
                   404720, NULL, NULL, NULL, NULL, NULL, 20.0572032249925,
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
           VALUES (1036159, 24, 8000047, 1, 80001, 1,
                   1614720, NULL, NULL, NULL, NULL, NULL, -3.89743315067459,
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
           VALUES (1036175, 24, 8000047, 1, 80001, 1,
                   4150, NULL, NULL, NULL, NULL, NULL, -19.0312930294301,
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
           VALUES (1036176, 24, 8000047, 1, 80001, 1,
                   194290, NULL, NULL, NULL, NULL, NULL, -1.129523495605,
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
           VALUES (1036183, 24, 8000047, 1, 80001, 1,
                   1660, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
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
           VALUES (1036194, 24, 8000047, 1, 80001, 1,
                   224290, NULL, NULL, NULL, NULL, NULL, -21.7382130099699,
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
           VALUES (1036197, 24, 8000047, 1, 80001, 1,
                   964290, NULL, NULL, NULL, NULL, NULL, -17.8038420889691,
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
           VALUES (1036208, 24, 8000047, 1, 80001, 1,
                   2090, NULL, NULL, NULL, NULL, NULL, 51.3121478733385,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036212, 24, 8000047, 1, 80001, 1,
                   40, NULL, NULL, NULL, NULL, NULL, 323.003497700804, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
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
                   falta, cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                   nval8, nval9, nval10
                  )
           VALUES (1036222, 24, 8000047, 1, 80001, 1,
                   sdetalle_conf.NEXTVAL, NULL, NULL, NULL, NULL, NULL,
                   76.7098861155357, NULL, NULL, NULL, NULL, NULL,
                   f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                   NULL, NULL, NULL
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
           VALUES (1036223, 24, 8000047, 1, 80001, 1,
                   525530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036225, 24, 8000047, 1, 80001, 1,
                   3150, NULL, NULL, NULL, NULL, NULL, -16.8748157620769,
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
           VALUES (1036226, 24, 8000047, 1, 80001, 1,
                   645530, NULL, NULL, NULL, NULL, NULL, 24.5250919651023,
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
           VALUES (1036231, 24, 8000047, 1, 80001, 1,
                   2480, NULL, NULL, NULL, NULL, NULL, -26.5908442669477,
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
           VALUES (1036237, 24, 8000047, 1, 80001, 1,
                   124290, NULL, NULL, NULL, NULL, NULL, 35.3569921674426,
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
           VALUES (1036241, 24, 8000047, 1, 80001, 1,
                   584720, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036244, 24, 8000047, 1, 80001, 1,
                   1224720, NULL, NULL, NULL, NULL, NULL, 61.1733147616135,
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
           VALUES (1036249, 24, 8000047, 1, 80001, 1,
                   1484720, NULL, NULL, NULL, NULL, NULL, -28.1578599144194,
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
           VALUES (1036252, 24, 8000047, 1, 80001, 1,
                   1474720, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
           VALUES (1036257, 24, 8000047, 1, 80001, 1,
                   1214720, NULL, NULL, NULL, NULL, NULL, 8.9594554694645,
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
           VALUES (1036261, 24, 8000047, 1, 80001, 1,
                   2530, NULL, NULL, NULL, NULL, NULL, -16.8748157620769,
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
           VALUES (1036264, 24, 8000047, 1, 80001, 1,
                   4040, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (1036266, 24, 8000047, 1, 80001, 1,
                   304720, NULL, NULL, NULL, NULL, NULL, 12.8653233316313,
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
           VALUES (1036269, 24, 8000047, 1, 80001, 1,
                   1374720, NULL, NULL, NULL, NULL, NULL, 132.312048787126,
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
           VALUES (1036272, 24, 8000047, 1, 80001, 1,
                   314720, NULL, NULL, NULL, NULL, NULL, 21.9359473087352,
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
           VALUES (1036277, 24, 8000047, 1, 80001, 1,
                   4370, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (1036285, 24, 8000047, 1, 80001, 1,
                   3220, NULL, NULL, NULL, NULL, NULL, 25842.7274927296,
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
           VALUES (1036287, 24, 8000047, 1, 80001, 1,
                   874720, NULL, NULL, NULL, NULL, NULL, 40.7806733496835,
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
           VALUES (1036289, 24, 8000047, 1, 80001, 1,
                   1184720, NULL, NULL, NULL, NULL, NULL, -25.9316526666728,
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
           VALUES (1036296, 24, 8000047, 1, 80001, 1,
                   944720, NULL, NULL, NULL, NULL, NULL, -27.5748798545491,
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
           VALUES (1036300, 24, 8000047, 1, 80001, 1,
                   1054720, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
           VALUES (1036301, 24, 8000047, 1, 80001, 1,
                   1114720, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (1036304, 24, 8000047, 1, 80001, 1,
                   4060, NULL, NULL, NULL, NULL, NULL, 11.3635404564034,
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
           VALUES (1036320, 24, 8000047, 1, 80001, 1,
                   984720, NULL, NULL, NULL, NULL, NULL, 41.4999156128838,
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
           VALUES (1036323, 24, 8000047, 1, 80001, 1,
                   254290, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036335, 24, 8000047, 1, 80001, 1,
                   3410, NULL, NULL, NULL, NULL, NULL, 20.4666601610843,
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
           VALUES (1036338, 24, 8000047, 1, 80001, 1,
                   2720, NULL, NULL, NULL, NULL, NULL, 11.466552895075,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036340, 24, 8000047, 1, 80001, 1,
                   2040, NULL, NULL, NULL, NULL, NULL, 124.8911141954, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036344, 24, 8000047, 1, 80001, 1,
                   1134290, NULL, NULL, NULL, NULL, NULL, 18.9161028777014,
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
           VALUES (1036347, 24, 8000047, 1, 80001, 1,
                   594290, NULL, NULL, NULL, NULL, NULL, 30.2274793487453,
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
           VALUES (1036354, 24, 8000047, 1, 80001, 1,
                   170, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
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
           VALUES (1036360, 24, 8000047, 1, 80001, 1,
                   64720, NULL, NULL, NULL, NULL, NULL, 24.5250919651023,
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
           VALUES (1036362, 24, 8000047, 1, 80001, 1,
                   894720, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
           VALUES (1036364, 24, 8000047, 1, 80001, 1,
                   1144720, NULL, NULL, NULL, NULL, NULL, 110.162819530546,
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
           VALUES (1036370, 24, 8000047, 1, 80001, 1,
                   4240, NULL, NULL, NULL, NULL, NULL, 25842.7274927296,
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
           VALUES (1036372, 24, 8000047, 1, 80001, 1,
                   2120, NULL, NULL, NULL, NULL, NULL, 176.510295154166,
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
           VALUES (1036379, 24, 8000047, 1, 80001, 1,
                   1550, NULL, NULL, NULL, NULL, NULL, 138.939821947097,
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
           VALUES (1036384, 24, 8000047, 1, 80001, 1,
                   445530, NULL, NULL, NULL, NULL, NULL, -16.9832720232651,
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
           VALUES (1036385, 24, 8000047, 1, 80001, 1,
                   3140, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (1036393, 24, 8000047, 1, 80001, 1,
                   605530, NULL, NULL, NULL, NULL, NULL, -19.2378601149047,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036398, 24, 8000047, 1, 80001, 1,
                   30, NULL, NULL, NULL, NULL, NULL, 32.0243359204491, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036404, 24, 8000047, 1, 80001, 1,
                   2490, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036422, 24, 8000047, 1, 80001, 1,
                   744720, NULL, NULL, NULL, NULL, NULL, -5.54103198784321,
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
           VALUES (1036437, 24, 8000047, 1, 80001, 1,
                   1504720, NULL, NULL, NULL, NULL, NULL, 5.02405086038478,
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
           VALUES (1036445, 24, 8000047, 1, 80001, 1,
                   1344720, NULL, NULL, NULL, NULL, NULL, 16.7422737172834,
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
           VALUES (1036451, 24, 8000047, 1, 80001, 1,
                   674720, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (1036461, 24, 8000047, 1, 80001, 1,
                   684720, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (1036465, 24, 8000047, 1, 80001, 1,
                   324720, NULL, NULL, NULL, NULL, NULL, 29.7136374636482,
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
           VALUES (1036479, 24, 8000047, 1, 80001, 1,
                   244290, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036483, 24, 8000047, 1, 80001, 1,
                   3370, NULL, NULL, NULL, NULL, NULL, -3.05344105122833,
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
           VALUES (1036493, 24, 8000047, 1, 80001, 1,
                   1670, NULL, NULL, NULL, NULL, NULL, 937.709099709186,
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
           VALUES (1036494, 24, 8000047, 1, 80001, 1,
                   1680, NULL, NULL, NULL, NULL, NULL, 16.7089451778814,
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
           VALUES (1036495, 24, 8000047, 1, 80001, 1,
                   2010, NULL, NULL, NULL, NULL, NULL, -12.794878409916,
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
           VALUES (1036503, 24, 8000047, 1, 80001, 1,
                   234290, NULL, NULL, NULL, NULL, NULL, 85.0610349955025,
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
           VALUES (1036512, 24, 8000047, 1, 80001, 1,
                   1064720, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036517, 24, 8000047, 1, 80001, 1,
                   2760, NULL, NULL, NULL, NULL, NULL, 60.9369192650181,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036535, 24, 8000047, 1, 80001, 1,
                   60, NULL, NULL, NULL, NULL, NULL, 25842.7274927296, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036539, 24, 8000047, 1, 80001, 1,
                   4260, NULL, NULL, NULL, NULL, NULL, 160.812735538231,
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
           VALUES (1036551, 24, 8000047, 1, 80001, 1,
                   515530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036556, 24, 8000047, 1, 80001, 1,
                   114290, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (1036570, 24, 8000047, 1, 80001, 1,
                   455530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036578, 24, 8000047, 1, 80001, 1,
                   704720, NULL, NULL, NULL, NULL, NULL, -27.5748798545491,
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
           VALUES (1036581, 24, 8000047, 1, 80001, 1,
                   4350, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036593, 24, 8000047, 1, 80001, 1,
                   1074290, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036596, 24, 8000047, 1, 80001, 1,
                   994720, NULL, NULL, NULL, NULL, NULL, -14.9532202639853,
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
           VALUES (1036602, 24, 8000047, 1, 80001, 1,
                   294720, NULL, NULL, NULL, NULL, NULL, 18.2101042185156,
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
           VALUES (1036604, 24, 8000047, 1, 80001, 1,
                   884720, NULL, NULL, NULL, NULL, NULL, 40.0907284607401,
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
           VALUES (1036609, 24, 8000047, 1, 80001, 1,
                   364720, NULL, NULL, NULL, NULL, NULL, 12.1633233959704,
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
           VALUES (1036611, 24, 8000047, 1, 80001, 1,
                   284290, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (1036612, 24, 8000047, 1, 80001, 1,
                   4050, NULL, NULL, NULL, NULL, NULL, 107.541819941837,
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
           VALUES (1036614, 24, 8000047, 1, 80001, 1,
                   55530, NULL, NULL, NULL, NULL, NULL, 68.6254179341749,
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
           VALUES (1036617, 24, 8000047, 1, 80001, 1,
                   1534720, NULL, NULL, NULL, NULL, NULL, 5.94713956806892,
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
           VALUES (1036622, 24, 8000047, 1, 80001, 1,
                   1194720, NULL, NULL, NULL, NULL, NULL, 72.4590708419105,
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
           VALUES (1036633, 24, 8000047, 1, 80001, 1,
                   1294720, NULL, NULL, NULL, NULL, NULL, 5.46215853571435,
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
      COMMIT;

      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   545530, NULL, NULL, NULL, NULL, NULL, -8.92361853283319,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2890, NULL, NULL, NULL, NULL, NULL, 10.4188736678644,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1840, NULL, NULL, NULL, NULL, NULL, 35.3876261525094,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1414720, NULL, NULL, NULL, NULL, NULL, 76.2169902309386,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1014720, NULL, NULL, NULL, NULL, NULL, -25.3613293846542,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1004720, NULL, NULL, NULL, NULL, NULL, -32.2097995024351,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1324720, NULL, NULL, NULL, NULL, NULL, 19.4150778331741,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2900, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3600, NULL, NULL, NULL, NULL, NULL, 22.1030705211739,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1194720, NULL, NULL, NULL, NULL, NULL, -11.6458108314554,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   4150, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1540, NULL, NULL, NULL, NULL, NULL, 11.5891330633549,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2010, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2720, NULL, NULL, NULL, NULL, NULL, -21.3276036405642,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   594290, NULL, NULL, NULL, NULL, NULL, -28.859840223141,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1390, NULL, NULL, NULL, NULL, NULL, 11.5891330633549,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3100, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1144720, NULL, NULL, NULL, NULL, NULL, 94.4108017898531,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3910, NULL, NULL, NULL, NULL, NULL, 11.5891330633549,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3520, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3940, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   75530, NULL, NULL, NULL, NULL, NULL, 173.872885361934,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   25530, NULL, NULL, NULL, NULL, NULL, -18.3968701992061,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1224720, NULL, NULL, NULL, NULL, NULL, 24.7163415366584,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   4350, NULL, NULL, NULL, NULL, NULL, -12.3772445944367,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1154720, NULL, NULL, NULL, NULL, NULL, -12.3772445944367,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   4360, NULL, NULL, NULL, NULL, NULL, 19.9914062759373,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   55530, NULL, NULL, NULL, NULL, NULL, 55.9866905857118,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   4380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1244720, NULL, NULL, NULL, NULL, NULL, -8.80653123028768,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   404720, NULL, NULL, NULL, NULL, NULL, -9.11966153938928,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   324720, NULL, NULL, NULL, NULL, NULL, 10.4904682720818,
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
           VALUES (1036011, 24, 8000047, 1, 80001, 2,
                   3050, NULL, NULL, NULL, NULL, NULL, 35.9902648937437,
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
           VALUES (1036015, 24, 8000047, 1, 80001, 2,
                   264290, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (1036017, 24, 8000047, 1, 80001, 2,
                   204290, NULL, NULL, NULL, NULL, NULL, -25.3390387833248,
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
           VALUES (1036022, 24, 8000047, 1, 80001, 2,
                   735530, NULL, NULL, NULL, NULL, NULL, -9.34207725688815,
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
           VALUES (1036024, 24, 8000047, 1, 80001, 2,
                   1560, NULL, NULL, NULL, NULL, NULL, 11.5891330633549,
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
           VALUES (1036027, 24, 8000047, 1, 80001, 2,
                   3800, NULL, NULL, NULL, NULL, NULL, 54.5761984330511,
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
           VALUES (1036040, 24, 8000047, 1, 80001, 2,
                   964290, NULL, NULL, NULL, NULL, NULL, -16.752732716193,
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
           VALUES (1036049, 24, 8000047, 1, 80001, 2,
                   1064720, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036055, 24, 8000047, 1, 80001, 2,
                   2390, NULL, NULL, NULL, NULL, NULL, -10.3197306826262,
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
           VALUES (1036071, 24, 8000047, 1, 80001, 2,
                   1550, NULL, NULL, NULL, NULL, NULL, 67.9879687863122,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                   nval1, nval2, nval3, nval4, nval5, nval6,
                   falta, cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                   nval8, nval9, nval10
                  )
           VALUES (1036076, 24, 8000047, 1, 80001, 2,
                   sdetalle_conf.NEXTVAL, NULL, NULL, NULL, NULL, NULL,
                   213.624952195962, NULL, NULL, NULL, NULL, NULL,
                   f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                   NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   84290, NULL, NULL, NULL, NULL, NULL, 11.4375037562637,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   554290, NULL, NULL, NULL, NULL, NULL, -11.5445600231329,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3420, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2050, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3830, NULL, NULL, NULL, NULL, NULL, -31.6484198438169,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2060, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2740, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3840, NULL, NULL, NULL, NULL, NULL, 221.576968819512,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2760, NULL, NULL, NULL, NULL, NULL, 48.874456394289,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   94720, NULL, NULL, NULL, NULL, NULL, 54.5761984330511,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1710, NULL, NULL, NULL, NULL, NULL, 23898.2812551874,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   4260, NULL, NULL, NULL, NULL, NULL, 154.381781304987,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3930, NULL, NULL, NULL, NULL, NULL, -10.4765869097184,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1580, NULL, NULL, NULL, NULL, NULL, 67.9879687863122,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   425530, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1285530, NULL, NULL, NULL, NULL, NULL, 24.8570301559105,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1304290, NULL, NULL, NULL, NULL, NULL, -21.1205259076393,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1800, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   465530, NULL, NULL, NULL, NULL, NULL, -6.79792314496911,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   655530, NULL, NULL, NULL, NULL, NULL, -8.7791989229855,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   584720, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1124720, NULL, NULL, NULL, NULL, NULL, 7.99226564834352,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1850, NULL, NULL, NULL, NULL, NULL, -29.9609204608137,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   344720, NULL, NULL, NULL, NULL, NULL, 2.42256486052312,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   364720, NULL, NULL, NULL, NULL, NULL, -14.8453131506068,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   284290, NULL, NULL, NULL, NULL, NULL, -8.42111542451329,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   904720, NULL, NULL, NULL, NULL, NULL, 1.75634528157902,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1114720, NULL, NULL, NULL, NULL, NULL, 95.6393217455447,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1234720, NULL, NULL, NULL, NULL, NULL, 33.7681973667005,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   684720, NULL, NULL, NULL, NULL, NULL, 7.99226564834352,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1614720, NULL, NULL, NULL, NULL, NULL, -27.174003404138,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   984720, NULL, NULL, NULL, NULL, NULL, -26.4927358190914,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   254290, NULL, NULL, NULL, NULL, NULL, 59.9829075530733,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2340, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3820, NULL, NULL, NULL, NULL, NULL, 2.24585912928643,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2030, NULL, NULL, NULL, NULL, NULL, -28.0051562344376,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   224290, NULL, NULL, NULL, NULL, NULL, 144.620632395154,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   234290, NULL, NULL, NULL, NULL, NULL, 71.1904335595696,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   64720, NULL, NULL, NULL, NULL, NULL, 15.1917500248998,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1084720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   4200, NULL, NULL, NULL, NULL, NULL, 23898.2812551874,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   40, NULL, NULL, NULL, NULL, NULL, 594.904528675414, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3130, NULL, NULL, NULL, NULL, NULL, -2.53039794540714,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3510, NULL, NULL, NULL, NULL, NULL, -2.53039794540714,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1350, NULL, NULL, NULL, NULL, NULL, 60.4298592586507,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2850, NULL, NULL, NULL, NULL, NULL, 24.7264909180643,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   835530, NULL, NULL, NULL, NULL, NULL, 3.22628914451819,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   30, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   114290, NULL, NULL, NULL, NULL, NULL, 7.99226564834352,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2490, NULL, NULL, NULL, NULL, NULL, -34.4045593309877,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   844290, NULL, NULL, NULL, NULL, NULL, -24.4935499531088,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   804290, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   124290, NULL, NULL, NULL, NULL, NULL, 64.6564545619959,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1435530, NULL, NULL, NULL, NULL, NULL, 30.5181498910939,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   4020, NULL, NULL, NULL, NULL, NULL, -12.2128492732982,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   415530, NULL, NULL, NULL, NULL, NULL, -12.2128492732982,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1830, NULL, NULL, NULL, NULL, NULL, -12.2128492732982,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   744720, NULL, NULL, NULL, NULL, NULL, 1.45519786843749,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1074290, NULL, NULL, NULL, NULL, NULL, -11.6458108314554,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   994720, NULL, NULL, NULL, NULL, NULL, -13.9872465768909,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2910, NULL, NULL, NULL, NULL, NULL, 13.5140311751746,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1204720, NULL, NULL, NULL, NULL, NULL, 555.762576014512,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   674720, NULL, NULL, NULL, NULL, NULL, 0.858181442271433,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   864720, NULL, NULL, NULL, NULL, NULL, 4.71623286680001,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1334720, NULL, NULL, NULL, NULL, NULL, -32.2097995024351,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1364720, NULL, NULL, NULL, NULL, NULL, -32.2097995024351,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   214290, NULL, NULL, NULL, NULL, NULL, -22.3421743184233,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   274290, NULL, NULL, NULL, NULL, NULL, -22.2455687331927,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3400, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2020, NULL, NULL, NULL, NULL, NULL, 34.7153777874514,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   2730, NULL, NULL, NULL, NULL, NULL, -4.0068749792502,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3070, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1574720, NULL, NULL, NULL, NULL, NULL, 293.571812585074,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   4250, NULL, NULL, NULL, NULL, NULL, 64.6564545619959,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   3150, NULL, NULL, NULL, NULL, NULL, -23.1051726812454,
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
           VALUES (1036098, 24, 8000047, 1, 80001, 2,
                   455530, NULL, NULL, NULL, NULL, NULL, -24.6552316343414,
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
           VALUES (1036099, 24, 8000047, 1, 80001, 2,
                   535530, NULL, NULL, NULL, NULL, NULL, 44.6117018169927,
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
           VALUES (1036105, 24, 8000047, 1, 80001, 2,
                   814720, NULL, NULL, NULL, NULL, NULL, 79.7365387127524,
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
           VALUES (1036110, 24, 8000047, 1, 80001, 2,
                   1264720, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036118, 24, 8000047, 1, 80001, 2,
                   394720, NULL, NULL, NULL, NULL, NULL, 9.58344638982489,
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
           VALUES (1036122, 24, 8000047, 1, 80001, 2,
                   2530, NULL, NULL, NULL, NULL, NULL, -23.1051726812454,
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
           VALUES (1036127, 24, 8000047, 1, 80001, 2,
                   294720, NULL, NULL, NULL, NULL, NULL, -13.3736279516988,
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
           VALUES (1036128, 24, 8000047, 1, 80001, 2,
                   1504720, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036129, 24, 8000047, 1, 80001, 2,
                   1094720, NULL, NULL, NULL, NULL, NULL, 4.71623286680001,
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
           VALUES (1036137, 24, 8000047, 1, 80001, 2,
                   4050, NULL, NULL, NULL, NULL, NULL, 196.539678457549,
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
           VALUES (1036142, 24, 8000047, 1, 80001, 2,
                   1534720, NULL, NULL, NULL, NULL, NULL, 20.8895688166844,
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
           VALUES (1036144, 24, 8000047, 1, 80001, 2,
                   874720, NULL, NULL, NULL, NULL, NULL, 2.71641438368826,
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
           VALUES (1036146, 24, 8000047, 1, 80001, 2,
                   784720, NULL, NULL, NULL, NULL, NULL, -8.80653123028768,
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
           VALUES (1036174, 24, 8000047, 1, 80001, 2,
                   3370, NULL, NULL, NULL, NULL, NULL, -10.3197306826262,
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
           VALUES (1036184, 24, 8000047, 1, 80001, 2,
                   1670, NULL, NULL, NULL, NULL, NULL, 859.931250207498,
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
           VALUES (1036185, 24, 8000047, 1, 80001, 2,
                   1680, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (1036190, 24, 8000047, 1, 80001, 2,
                   2360, NULL, NULL, NULL, NULL, NULL, 11.5891330633549,
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
           VALUES (1036192, 24, 8000047, 1, 80001, 2,
                   4180, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (1036204, 24, 8000047, 1, 80001, 2,
                   2380, NULL, NULL, NULL, NULL, NULL, 203.062294809899,
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
           VALUES (1036209, 24, 8000047, 1, 80001, 2,
                   894720, NULL, NULL, NULL, NULL, NULL, -13.090992395273,
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
           VALUES (1036214, 24, 8000047, 1, 80001, 2,
                   4240, NULL, NULL, NULL, NULL, NULL, 23898.2812551874,
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
           VALUES (1036216, 24, 8000047, 1, 80001, 2,
                   2810, NULL, NULL, NULL, NULL, NULL, 7.99226564834352,
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
           VALUES (1036224, 24, 8000047, 1, 80001, 2,
                   2450, NULL, NULL, NULL, NULL, NULL, 24.7264909180643,
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
           VALUES (1036228, 24, 8000047, 1, 80001, 2,
                   605530, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (1036233, 24, 8000047, 1, 80001, 2,
                   935530, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036255, 24, 8000047, 1, 80001, 2,
                   1164720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036259, 24, 8000047, 1, 80001, 2,
                   1465530, NULL, NULL, NULL, NULL, NULL, -5.05925081161868,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036260, 24, 8000047, 1, 80001, 2,
                   90, NULL, NULL, NULL, NULL, NULL, 23898.2812551874, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036262, 24, 8000047, 1, 80001, 2,
                   1870, NULL, NULL, NULL, NULL, NULL, -23.1051726812454,
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
           VALUES (1036268, 24, 8000047, 1, 80001, 2,
                   304720, NULL, NULL, NULL, NULL, NULL, 13.5140311751746,
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
           VALUES (1036270, 24, 8000047, 1, 80001, 2,
                   3200, NULL, NULL, NULL, NULL, NULL, -13.8448254437073,
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
           VALUES (1036281, 24, 8000047, 1, 80001, 2,
                   354720, NULL, NULL, NULL, NULL, NULL, -9.83932919047402,
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
           VALUES (1036282, 24, 8000047, 1, 80001, 2,
                   384720, NULL, NULL, NULL, NULL, NULL, -4.0068749792502,
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
           VALUES (1036284, 24, 8000047, 1, 80001, 2,
                   74720, NULL, NULL, NULL, NULL, NULL, 23898.2812551874,
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
           VALUES (1036286, 24, 8000047, 1, 80001, 2,
                   1524720, NULL, NULL, NULL, NULL, NULL, -9.97573121085582,
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
           VALUES (1036290, 24, 8000047, 1, 80001, 2,
                   1184720, NULL, NULL, NULL, NULL, NULL, 33.2825333191388,
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
           VALUES (1036292, 24, 8000047, 1, 80001, 2,
                   564720, NULL, NULL, NULL, NULL, NULL, 0.79278127178728,
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
           VALUES (1036298, 24, 8000047, 1, 80001, 2,
                   794720, NULL, NULL, NULL, NULL, NULL, -13.6061874813252,
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
           VALUES (1036327, 24, 8000047, 1, 80001, 2,
                   634290, NULL, NULL, NULL, NULL, NULL, 1.53121075973528,
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
           VALUES (1036331, 24, 8000047, 1, 80001, 2,
                   3790, NULL, NULL, NULL, NULL, NULL, 144.923415336003,
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
           VALUES (1036336, 24, 8000047, 1, 80001, 2,
                   3410, NULL, NULL, NULL, NULL, NULL, 11.4375037562637,
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
           VALUES (1036346, 24, 8000047, 1, 80001, 2,
                   1134290, NULL, NULL, NULL, NULL, NULL, -16.752732716193,
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
           VALUES (1036349, 24, 8000047, 1, 80001, 2,
                   914290, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036351, 24, 8000047, 1, 80001, 2,
                   3440, NULL, NULL, NULL, NULL, NULL, -25.3390387833248,
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
           VALUES (1036355, 24, 8000047, 1, 80001, 2,
                   3450, NULL, NULL, NULL, NULL, NULL, 35.830271904361,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036368, 24, 8000047, 1, 80001, 2,
                   60, NULL, NULL, NULL, NULL, NULL, 23898.2812551874, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036376, 24, 8000047, 1, 80001, 2,
                   2820, NULL, NULL, NULL, NULL, NULL, 154.381781304987,
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
           VALUES (1036386, 24, 8000047, 1, 80001, 2,
                   35530, NULL, NULL, NULL, NULL, NULL, -21.3276036405642,
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
           VALUES (1036392, 24, 8000047, 1, 80001, 2,
                   645530, NULL, NULL, NULL, NULL, NULL, 16.9954745332939,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036397, 24, 8000047, 1, 80001, 2,
                   20, NULL, NULL, NULL, NULL, NULL, 23898.2812551874, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036400, 24, 8000047, 1, 80001, 2,
                   3950, NULL, NULL, NULL, NULL, NULL, 29.6801666578601,
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
           VALUES (1036402, 24, 8000047, 1, 80001, 2,
                   2480, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036411, 24, 8000047, 1, 80001, 2,
                   765530, NULL, NULL, NULL, NULL, NULL, -11.6458108314554,
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
           VALUES (1036420, 24, 8000047, 1, 80001, 2,
                   694720, NULL, NULL, NULL, NULL, NULL, 40.5128834912662,
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
           VALUES (1036427, 24, 8000047, 1, 80001, 2,
                   614720, NULL, NULL, NULL, NULL, NULL, 22.017761619699,
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
           VALUES (1036434, 24, 8000047, 1, 80001, 2,
                   314720, NULL, NULL, NULL, NULL, NULL, -4.88402181372082,
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
           VALUES (1036439, 24, 8000047, 1, 80001, 2,
                   1374720, NULL, NULL, NULL, NULL, NULL, 114.899913177004,
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
           VALUES (1036440, 24, 8000047, 1, 80001, 2,
                   1384720, NULL, NULL, NULL, NULL, NULL, -31.1686425297779,
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
           VALUES (1036441, 24, 8000047, 1, 80001, 2,
                   884720, NULL, NULL, NULL, NULL, NULL, 11.6516318640469,
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
           VALUES (1036442, 24, 8000047, 1, 80001, 2,
                   334720, NULL, NULL, NULL, NULL, NULL, -13.6061874813252,
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
           VALUES (1036452, 24, 8000047, 1, 80001, 2,
                   714720, NULL, NULL, NULL, NULL, NULL, -33.0032509620138,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036453, 24, 8000047, 1, 80001, 2,
                   1514720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036454, 24, 8000047, 1, 80001, 2,
                   944720, NULL, NULL, NULL, NULL, NULL, -17.4797210257072,
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
           VALUES (1036463, 24, 8000047, 1, 80001, 2,
                   1314720, NULL, NULL, NULL, NULL, NULL, 89.9763770236412,
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
           VALUES (1036467, 24, 8000047, 1, 80001, 2,
                   134720, NULL, NULL, NULL, NULL, NULL, -2.53039794540714,
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
           VALUES (1036468, 24, 8000047, 1, 80001, 2,
                   774720, NULL, NULL, NULL, NULL, NULL, 30.2673809900312,
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
           VALUES (1036485, 24, 8000047, 1, 80001, 2,
                   194290, NULL, NULL, NULL, NULL, NULL, -24.8647754304978,
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
           VALUES (1036489, 24, 8000047, 1, 80001, 2,
                   3810, NULL, NULL, NULL, NULL, NULL, 54.5761984330511,
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
           VALUES (1036491, 24, 8000047, 1, 80001, 2,
                   1660, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
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
           VALUES (1036499, 24, 8000047, 1, 80001, 2,
                   2040, NULL, NULL, NULL, NULL, NULL, 190.337800912824,
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
           VALUES (1036505, 24, 8000047, 1, 80001, 2,
                   244290, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036515, 24, 8000047, 1, 80001, 2,
                   170, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
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
           VALUES (1036522, 24, 8000047, 1, 80001, 2,
                   2090, NULL, NULL, NULL, NULL, NULL, 7.9614351328313,
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
           VALUES (1036544, 24, 8000047, 1, 80001, 2,
                   445530, NULL, NULL, NULL, NULL, NULL, -28.0354039257451,
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
           VALUES (1036546, 24, 8000047, 1, 80001, 2,
                   665530, NULL, NULL, NULL, NULL, NULL, 24.6933084856285,
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
           VALUES (1036547, 24, 8000047, 1, 80001, 2,
                   85530, NULL, NULL, NULL, NULL, NULL, -3.02735136410225,
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
           VALUES (1036550, 24, 8000047, 1, 80001, 2,
                   525530, NULL, NULL, NULL, NULL, NULL, 1.45137578498369,
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
           VALUES (1036552, 24, 8000047, 1, 80001, 2,
                   515530, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (1036555, 24, 8000047, 1, 80001, 2,
                   1255530, NULL, NULL, NULL, NULL, NULL, 65.2150678443574,
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
           VALUES (1036573, 24, 8000047, 1, 80001, 2,
                   754720, NULL, NULL, NULL, NULL, NULL, 24.3538760261442,
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
           VALUES (1036576, 24, 8000047, 1, 80001, 2,
                   1044720, NULL, NULL, NULL, NULL, NULL, 31.1991750910054,
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
           VALUES (1036579, 24, 8000047, 1, 80001, 2,
                   704720, NULL, NULL, NULL, NULL, NULL, -32.2097995024351,
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
           VALUES (1036580, 24, 8000047, 1, 80001, 2,
                   1174720, NULL, NULL, NULL, NULL, NULL, -4.00687497925017,
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
           VALUES (1036583, 24, 8000047, 1, 80001, 2,
                   164720, NULL, NULL, NULL, NULL, NULL, -10.4765869097184,
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
           VALUES (1036585, 24, 8000047, 1, 80001, 2,
                   1104720, NULL, NULL, NULL, NULL, NULL, 76.2169902309386,
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
           VALUES (1036587, 24, 8000047, 1, 80001, 2,
                   1214720, NULL, NULL, NULL, NULL, NULL, -3.26413182166685,
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
           VALUES (1036589, 24, 8000047, 1, 80001, 2,
                   2170, NULL, NULL, NULL, NULL, NULL, -5.05925081161868,
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
           VALUES (1036597, 24, 8000047, 1, 80001, 2,
                   4040, NULL, NULL, NULL, NULL, NULL, 10.3920937738623,
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
           VALUES (1036607, 24, 8000047, 1, 80001, 2,
                   4370, NULL, NULL, NULL, NULL, NULL, -13.6061874813252,
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
           VALUES (1036621, 24, 8000047, 1, 80001, 2,
                   1054720, NULL, NULL, NULL, NULL, NULL, 1387.89343782162,
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
           VALUES (1036625, 24, 8000047, 1, 80001, 2,
                   1344720, NULL, NULL, NULL, NULL, NULL, 7.84412810961277,
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
           VALUES (1036627, 24, 8000047, 1, 80001, 2,
                   974720, NULL, NULL, NULL, NULL, NULL, -9.43282956572891,
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
           VALUES (1036628, 24, 8000047, 1, 80001, 2,
                   4070, NULL, NULL, NULL, NULL, NULL, -4.39739628193189,
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
           VALUES (1036634, 24, 8000047, 1, 80001, 2,
                   1294720, NULL, NULL, NULL, NULL, NULL, 20.4786949752758,
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
      COMMIT;

      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   2890, NULL, NULL, NULL, NULL, NULL, 3.05938270837529,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1224720, NULL, NULL, NULL, NULL, NULL, 20.6440238440553,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1850, NULL, NULL, NULL, NULL, NULL, 11.4105155873087,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   2910, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   3200, NULL, NULL, NULL, NULL, NULL, -16.7079218416676,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1204720, NULL, NULL, NULL, NULL, NULL, 533.970368187487,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   364720, NULL, NULL, NULL, NULL, NULL, 0.30849290262549,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   74720, NULL, NULL, NULL, NULL, NULL, 23100.7738161645,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   794720, NULL, NULL, NULL, NULL, NULL, 20.6440238440553,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   4070, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   3370, NULL, NULL, NULL, NULL, NULL, -13.2999725238509,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1540, NULL, NULL, NULL, NULL, NULL, 7.88081900595077,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1660, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1680, NULL, NULL, NULL, NULL, NULL, 4.37367621249543,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1134290, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   170, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   3450, NULL, NULL, NULL, NULL, NULL, 31.316379799491,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1574720, NULL, NULL, NULL, NULL, NULL, 280.492690585098,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   64720, NULL, NULL, NULL, NULL, NULL, 11.3637143175895,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   3910, NULL, NULL, NULL, NULL, NULL, 7.88081900595077,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   4260, NULL, NULL, NULL, NULL, NULL, 133.399784590615,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1780, NULL, NULL, NULL, NULL, NULL, -5.7694937744196,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   3520, NULL, NULL, NULL, NULL, NULL, 4.37367621249543,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   3150, NULL, NULL, NULL, NULL, NULL, -25.6605305486276,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   535530, NULL, NULL, NULL, NULL, NULL, 39.2046428969869,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1104720, NULL, NULL, NULL, NULL, NULL, 70.360972497959,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   994720, NULL, NULL, NULL, NULL, NULL, -19.1178146718493,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   304720, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1094720, NULL, NULL, NULL, NULL, NULL, 1.2363180424964,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   884720, NULL, NULL, NULL, NULL, NULL, -26.5525773025963,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   4050, NULL, NULL, NULL, NULL, NULL, 37.48647458301, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   674720, NULL, NULL, NULL, NULL, NULL, -2.4935231707059,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1514720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   944720, NULL, NULL, NULL, NULL, NULL, 49.5564099525255,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1114720, NULL, NULL, NULL, NULL, NULL, 82.6755664700362,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1334720, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   974720, NULL, NULL, NULL, NULL, NULL, -11.837059498575,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   324720, NULL, NULL, NULL, NULL, NULL, -2.55674997210916,
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
           VALUES (1036020, 24, 8000047, 1, 80001, 3,
                   735530, NULL, NULL, NULL, NULL, NULL, -22.0079440368405,
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
           VALUES (1036026, 24, 8000047, 1, 80001, 3,
                   3800, NULL, NULL, NULL, NULL, NULL, 49.439344387739,
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
           VALUES (1036037, 24, 8000047, 1, 80001, 3,
                   2050, NULL, NULL, NULL, NULL, NULL, -35.0378333147394,
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
           VALUES (1036041, 24, 8000047, 1, 80001, 3,
                   2060, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036044, 24, 8000047, 1, 80001, 3,
                   914290, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036047, 24, 8000047, 1, 80001, 3,
                   2740, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036056, 24, 8000047, 1, 80001, 3,
                   1144720, NULL, NULL, NULL, NULL, NULL, 87.9501699218808,
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
           VALUES (1036058, 24, 8000047, 1, 80001, 3,
                   4200, NULL, NULL, NULL, NULL, NULL, 23100.7738161645,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036065, 24, 8000047, 1, 80001, 3,
                   60, NULL, NULL, NULL, NULL, NULL, 23100.7738161645, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036073, 24, 8000047, 1, 80001, 3,
                   3940, NULL, NULL, NULL, NULL, NULL, 236.293834872353,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                   nval1, nval2, nval3, nval4, nval5, nval6,
                   falta, cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                   nval8, nval9, nval10
                  )
           VALUES (1036074, 24, 8000047, 1, 80001, 3,
                   sdetalle_conf.NEXTVAL, NULL, NULL, NULL, NULL, NULL,
                   203.202612788409, NULL, NULL, NULL, NULL, NULL,
                   f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                   NULL, NULL, NULL
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
           VALUES (1036077, 24, 8000047, 1, 80001, 3,
                   665530, NULL, NULL, NULL, NULL, NULL, 22.0433174291937,
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
           VALUES (1036084, 24, 8000047, 1, 80001, 3,
                   2480, NULL, NULL, NULL, NULL, NULL, 19.6671491560821,
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
           VALUES (1036091, 24, 8000047, 1, 80001, 3,
                   844290, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   254290, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   194290, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   204290, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   3440, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   4190, NULL, NULL, NULL, NULL, NULL, 187.68959532044,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   2430, NULL, NULL, NULL, NULL, NULL, 7.88081900595077,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1770, NULL, NULL, NULL, NULL, NULL, -13.4516161273126,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1580, NULL, NULL, NULL, NULL, NULL, 47.0144925006236,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1255530, NULL, NULL, NULL, NULL, NULL, 49.2258241771677,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   30, NULL, NULL, NULL, NULL, NULL, 23100.7738161645, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   935530, NULL, NULL, NULL, NULL, NULL, 39.8059864933634,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   814720, NULL, NULL, NULL, NULL, NULL, -4.36287952848724,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1014720, NULL, NULL, NULL, NULL, NULL, -7.19690473534205,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   294720, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   344720, NULL, NULL, NULL, NULL, NULL, -2.55674997210916,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   684720, NULL, NULL, NULL, NULL, NULL, 29.9243333705211,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   274290, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   634290, NULL, NULL, NULL, NULL, NULL, -14.8274182579518,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   2720, NULL, NULL, NULL, NULL, NULL, -0.314634129702906,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   2390, NULL, NULL, NULL, NULL, NULL, -13.2999725238509,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1084720, NULL, NULL, NULL, NULL, NULL, 23100.7738161645,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   894720, NULL, NULL, NULL, NULL, NULL, 21.3918274529639,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1350, NULL, NULL, NULL, NULL, NULL, 105.464984247057,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   35530, NULL, NULL, NULL, NULL, NULL, -23.9420334272328,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   85530, NULL, NULL, NULL, NULL, NULL, 39.2045861944249,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   3950, NULL, NULL, NULL, NULL, NULL, 85.6061905293159,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   25530, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   765530, NULL, NULL, NULL, NULL, NULL, -23.3449911989187,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   465530, NULL, NULL, NULL, NULL, NULL, 40.5997447588727,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   655530, NULL, NULL, NULL, NULL, NULL, -10.4965954195792,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   754720, NULL, NULL, NULL, NULL, NULL, 28.064540634951,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1154720, NULL, NULL, NULL, NULL, NULL, -15.2891114285884,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   55530, NULL, NULL, NULL, NULL, NULL, 50.802963267582,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1054720, NULL, NULL, NULL, NULL, NULL, -5.7694937744196,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1194720, NULL, NULL, NULL, NULL, NULL, -14.581984567461,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1364720, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   404720, NULL, NULL, NULL, NULL, NULL, 48.5558346513225,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   984720, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   554290, NULL, NULL, NULL, NULL, NULL, -16.4772142618078,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   2020, NULL, NULL, NULL, NULL, NULL, 120.637500436587,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   3420, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   3100, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   40, NULL, NULL, NULL, NULL, NULL, 571.811561094262, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   4240, NULL, NULL, NULL, NULL, NULL, 23100.7738161645,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1550, NULL, NULL, NULL, NULL, NULL, 58.2370766222517,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1285530, NULL, NULL, NULL, NULL, NULL, 142.82430560306,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   835530, NULL, NULL, NULL, NULL, NULL, 2.08340479112374,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   605530, NULL, NULL, NULL, NULL, NULL, -14.581984567461,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1800, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036093, 24, 8000047, 1, 80001, 3,
                   804290, NULL, NULL, NULL, NULL, NULL, 4.37367621249543,
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
           VALUES (1036106, 24, 8000047, 1, 80001, 3,
                   1044720, NULL, NULL, NULL, NULL, NULL, -15.2891114285884,
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
           VALUES (1036108, 24, 8000047, 1, 80001, 3,
                   1174720, NULL, NULL, NULL, NULL, NULL, -7.19690473534204,
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
           VALUES (1036111, 24, 8000047, 1, 80001, 3,
                   1124720, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036112, 24, 8000047, 1, 80001, 3,
                   1004720, NULL, NULL, NULL, NULL, NULL, -4.09870971133568,
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
           VALUES (1036113, 24, 8000047, 1, 80001, 3,
                   1474720, NULL, NULL, NULL, NULL, NULL, -12.5017968433062,
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
           VALUES (1036115, 24, 8000047, 1, 80001, 3,
                   4030, NULL, NULL, NULL, NULL, NULL, -3.45915574567526,
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
           VALUES (1036119, 24, 8000047, 1, 80001, 3,
                   2170, NULL, NULL, NULL, NULL, NULL, -8.12493568798863,
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
           VALUES (1036120, 24, 8000047, 1, 80001, 3,
                   1465530, NULL, NULL, NULL, NULL, NULL, -8.21430816506064,
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
           VALUES (1036124, 24, 8000047, 1, 80001, 3,
                   4040, NULL, NULL, NULL, NULL, NULL, -6.39799688778182,
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
           VALUES (1036131, 24, 8000047, 1, 80001, 3,
                   354720, NULL, NULL, NULL, NULL, NULL, -11.837059498575,
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
           VALUES (1036132, 24, 8000047, 1, 80001, 3,
                   3600, NULL, NULL, NULL, NULL, NULL, 6.72355955435664,
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
           VALUES (1036133, 24, 8000047, 1, 80001, 3,
                   384720, NULL, NULL, NULL, NULL, NULL, -2.55674997210916,
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
           VALUES (1036135, 24, 8000047, 1, 80001, 3,
                   3620, NULL, NULL, NULL, NULL, NULL, -12.5017968433062,
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
           VALUES (1036141, 24, 8000047, 1, 80001, 3,
                   1534720, NULL, NULL, NULL, NULL, NULL, 46.0299637920655,
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
           VALUES (1036145, 24, 8000047, 1, 80001, 3,
                   1184720, NULL, NULL, NULL, NULL, NULL, 28.8533072973435,
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
           VALUES (1036147, 24, 8000047, 1, 80001, 3,
                   904720, NULL, NULL, NULL, NULL, NULL, 19.6671491560821,
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
           VALUES (1036150, 24, 8000047, 1, 80001, 3,
                   864720, NULL, NULL, NULL, NULL, NULL, -15.2891114285884,
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
           VALUES (1036152, 24, 8000047, 1, 80001, 3,
                   1344720, NULL, NULL, NULL, NULL, NULL, 4.40348217274018,
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
           VALUES (1036157, 24, 8000047, 1, 80001, 3,
                   1314720, NULL, NULL, NULL, NULL, NULL, 83.6631093231789,
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
           VALUES (1036181, 24, 8000047, 1, 80001, 3,
                   3790, NULL, NULL, NULL, NULL, NULL, 136.784155543007,
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
           VALUES (1036186, 24, 8000047, 1, 80001, 3,
                   2010, NULL, NULL, NULL, NULL, NULL, -18.1831223094553,
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
           VALUES (1036187, 24, 8000047, 1, 80001, 3,
                   3410, NULL, NULL, NULL, NULL, NULL, 7.73422862223474,
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
           VALUES (1036189, 24, 8000047, 1, 80001, 3,
                   2360, NULL, NULL, NULL, NULL, NULL, 34.564488133754,
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
           VALUES (1036191, 24, 8000047, 1, 80001, 3,
                   4180, NULL, NULL, NULL, NULL, NULL, 4.37367621249543,
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
           VALUES (1036193, 24, 8000047, 1, 80001, 3,
                   2040, NULL, NULL, NULL, NULL, NULL, 178.409285793974,
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
           VALUES (1036196, 24, 8000047, 1, 80001, 3,
                   964290, NULL, NULL, NULL, NULL, NULL, -18.1247129731056,
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
           VALUES (1036199, 24, 8000047, 1, 80001, 3,
                   594290, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036203, 24, 8000047, 1, 80001, 3,
                   1064720, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036205, 24, 8000047, 1, 80001, 3,
                   3840, NULL, NULL, NULL, NULL, NULL, 210.890369136604,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036229, 24, 8000047, 1, 80001, 3,
                   20, NULL, NULL, NULL, NULL, NULL, 23100.7738161645, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036238, 24, 8000047, 1, 80001, 3,
                   75530, NULL, NULL, NULL, NULL, NULL, 142.82430560306,
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
           VALUES (1036246, 24, 8000047, 1, 80001, 3,
                   704720, NULL, NULL, NULL, NULL, NULL, 16.9612828536209,
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
           VALUES (1036248, 24, 8000047, 1, 80001, 3,
                   1264720, NULL, NULL, NULL, NULL, NULL, -5.80485830637217,
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
           VALUES (1036253, 24, 8000047, 1, 80001, 3,
                   744720, NULL, NULL, NULL, NULL, NULL, -7.19690473534205,
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
           VALUES (1036256, 24, 8000047, 1, 80001, 3,
                   614720, NULL, NULL, NULL, NULL, NULL, 36.4205500390472,
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
           VALUES (1036274, 24, 8000047, 1, 80001, 3,
                   4360, NULL, NULL, NULL, NULL, NULL, 16.0038690808224,
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
           VALUES (1036275, 24, 8000047, 1, 80001, 3,
                   1504720, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036276, 24, 8000047, 1, 80001, 3,
                   1594720, NULL, NULL, NULL, NULL, NULL, 7.70043424078319,
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
           VALUES (1036294, 24, 8000047, 1, 80001, 3,
                   714720, NULL, NULL, NULL, NULL, NULL, -21.1173690250407,
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
           VALUES (1036303, 24, 8000047, 1, 80001, 3,
                   1244720, NULL, NULL, NULL, NULL, NULL, 42.388000267697,
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
           VALUES (1036324, 24, 8000047, 1, 80001, 3,
                   264290, NULL, NULL, NULL, NULL, NULL, -21.1173690250407,
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
           VALUES (1036325, 24, 8000047, 1, 80001, 3,
                   214290, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036326, 24, 8000047, 1, 80001, 3,
                   4150, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036329, 24, 8000047, 1, 80001, 3,
                   1560, NULL, NULL, NULL, NULL, NULL, 7.88081900595077,
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
           VALUES (1036332, 24, 8000047, 1, 80001, 3,
                   1670, NULL, NULL, NULL, NULL, NULL, 828.030952646579,
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
           VALUES (1036339, 24, 8000047, 1, 80001, 3,
                   2030, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036342, 24, 8000047, 1, 80001, 3,
                   2730, NULL, NULL, NULL, NULL, NULL, -7.19690473534205,
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
           VALUES (1036356, 24, 8000047, 1, 80001, 3,
                   1390, NULL, NULL, NULL, NULL, NULL, 7.65159050700321,
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
           VALUES (1036361, 24, 8000047, 1, 80001, 3,
                   2090, NULL, NULL, NULL, NULL, NULL, 23100.7738161645,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036366, 24, 8000047, 1, 80001, 3,
                   1270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036373, 24, 8000047, 1, 80001, 3,
                   2810, NULL, NULL, NULL, NULL, NULL, -8.21430816506064,
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
           VALUES (1036383, 24, 8000047, 1, 80001, 3,
                   425530, NULL, NULL, NULL, NULL, NULL, -21.2345643505186,
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
           VALUES (1036389, 24, 8000047, 1, 80001, 3,
                   515530, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036390, 24, 8000047, 1, 80001, 3,
                   2450, NULL, NULL, NULL, NULL, NULL, 11.3637143175895,
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
           VALUES (1036413, 24, 8000047, 1, 80001, 3,
                   1840, NULL, NULL, NULL, NULL, NULL, 19.5160882850886,
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
           VALUES (1036414, 24, 8000047, 1, 80001, 3,
                   584720, NULL, NULL, NULL, NULL, NULL, -2.55674997210916,
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
           VALUES (1036415, 24, 8000047, 1, 80001, 3,
                   4350, NULL, NULL, NULL, NULL, NULL, -15.2891114285884,
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
           VALUES (1036419, 24, 8000047, 1, 80001, 3,
                   694720, NULL, NULL, NULL, NULL, NULL, 85.6061905293159,
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
           VALUES (1036423, 24, 8000047, 1, 80001, 3,
                   1164720, NULL, NULL, NULL, NULL, NULL, 23100.7738161645,
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
           VALUES (1036426, 24, 8000047, 1, 80001, 3,
                   1324720, NULL, NULL, NULL, NULL, NULL, 26.9326546405364,
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
           VALUES (1036428, 24, 8000047, 1, 80001, 3,
                   1214720, NULL, NULL, NULL, NULL, NULL, -6.47884431179109,
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
           VALUES (1036449, 24, 8000047, 1, 80001, 3,
                   1524720, NULL, NULL, NULL, NULL, NULL, -16.4772142618078,
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
           VALUES (1036450, 24, 8000047, 1, 80001, 3,
                   874720, NULL, NULL, NULL, NULL, NULL, 25.9012014441693,
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
           VALUES (1036456, 24, 8000047, 1, 80001, 3,
                   1234720, NULL, NULL, NULL, NULL, NULL, -14.581984567461,
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
           VALUES (1036466, 24, 8000047, 1, 80001, 3,
                   1614720, NULL, NULL, NULL, NULL, NULL, -11.837059498575,
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
           VALUES (1036497, 24, 8000047, 1, 80001, 3,
                   3820, NULL, NULL, NULL, NULL, NULL, 43.9270818222337,
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
           VALUES (1036500, 24, 8000047, 1, 80001, 3,
                   224290, NULL, NULL, NULL, NULL, NULL, 136.4914346414,
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
           VALUES (1036502, 24, 8000047, 1, 80001, 3,
                   234290, NULL, NULL, NULL, NULL, NULL, 65.5014576366038,
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
           VALUES (1036504, 24, 8000047, 1, 80001, 3,
                   244290, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036507, 24, 8000047, 1, 80001, 3,
                   3830, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036508, 24, 8000047, 1, 80001, 3,
                   3070, NULL, NULL, NULL, NULL, NULL, 8.00617776116044,
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
           VALUES (1036516, 24, 8000047, 1, 80001, 3,
                   2760, NULL, NULL, NULL, NULL, NULL, 43.9270818222337,
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
           VALUES (1036529, 24, 8000047, 1, 80001, 3,
                   1710, NULL, NULL, NULL, NULL, NULL, 23100.7738161645,
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
           VALUES (1036538, 24, 8000047, 1, 80001, 3,
                   4250, NULL, NULL, NULL, NULL, NULL, 107.195121113109,
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
           VALUES (1036543, 24, 8000047, 1, 80001, 3,
                   445530, NULL, NULL, NULL, NULL, NULL, -2.55674997210916,
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
           VALUES (1036549, 24, 8000047, 1, 80001, 3,
                   525530, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036553, 24, 8000047, 1, 80001, 3,
                   1790, NULL, NULL, NULL, NULL, NULL, 11.3637143175895,
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
           VALUES (1036554, 24, 8000047, 1, 80001, 3,
                   645530, NULL, NULL, NULL, NULL, NULL, 11.3637143175895,
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
           VALUES (1036558, 24, 8000047, 1, 80001, 3,
                   1304290, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036559, 24, 8000047, 1, 80001, 3,
                   2490, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036566, 24, 8000047, 1, 80001, 3,
                   545530, NULL, NULL, NULL, NULL, NULL, 110.933508602942,
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
           VALUES (1036569, 24, 8000047, 1, 80001, 3,
                   455530, NULL, NULL, NULL, NULL, NULL, -2.55674997210916,
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
           VALUES (1036572, 24, 8000047, 1, 80001, 3,
                   4020, NULL, NULL, NULL, NULL, NULL, 86.8317069888734,
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
           VALUES (1036588, 24, 8000047, 1, 80001, 3,
                   394720, NULL, NULL, NULL, NULL, NULL, 20.6440238440553,
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
           VALUES (1036590, 24, 8000047, 1, 80001, 3,
                   2900, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036591, 24, 8000047, 1, 80001, 3,
                   90, NULL, NULL, NULL, NULL, NULL, 23100.7738161645, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036592, 24, 8000047, 1, 80001, 3,
                   1074290, NULL, NULL, NULL, NULL, NULL, -14.581984567461,
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
           VALUES (1036600, 24, 8000047, 1, 80001, 3,
                   314720, NULL, NULL, NULL, NULL, NULL, 9.04822302753383,
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
           VALUES (1036605, 24, 8000047, 1, 80001, 3,
                   334720, NULL, NULL, NULL, NULL, NULL, -24.8294928356271,
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
           VALUES (1036610, 24, 8000047, 1, 80001, 3,
                   284290, NULL, NULL, NULL, NULL, NULL, 57.7652619499185,
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
           VALUES (1036619, 24, 8000047, 1, 80001, 3,
                   784720, NULL, NULL, NULL, NULL, NULL, 189.480262135229,
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
           VALUES (1036620, 24, 8000047, 1, 80001, 3,
                   564720, NULL, NULL, NULL, NULL, NULL, -2.55674997210916,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036623, 24, 8000047, 1, 80001, 3,
                   4380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (1036631, 24, 8000047, 1, 80001, 3,
                   774720, NULL, NULL, NULL, NULL, NULL, 43.3172369453796,
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
           VALUES (1036632, 24, 8000047, 1, 80001, 3,
                   1294720, NULL, NULL, NULL, NULL, NULL, 39.8849056281409,
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
      COMMIT;

      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   455530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   584720, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1414720, NULL, NULL, NULL, NULL, NULL, 8.55827365817832,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1264720, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1164720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   364720, NULL, NULL, NULL, NULL, NULL, 12.1633233959704,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1534720, NULL, NULL, NULL, NULL, NULL, 5.94713956806892,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1184720, NULL, NULL, NULL, NULL, NULL, -25.9316526666728,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   944720, NULL, NULL, NULL, NULL, NULL, -27.5748798545491,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1114720, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1194720, NULL, NULL, NULL, NULL, NULL, 72.4590708419105,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1334720, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   774720, NULL, NULL, NULL, NULL, NULL, -8.06422929206002,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   984720, NULL, NULL, NULL, NULL, NULL, 41.4999156128838,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   214290, NULL, NULL, NULL, NULL, NULL, -15.945562923556,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3410, NULL, NULL, NULL, NULL, NULL, 20.4666601610843,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2050, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2730, NULL, NULL, NULL, NULL, NULL, 71.0299776593698,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   964290, NULL, NULL, NULL, NULL, NULL, -17.8038420889691,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2740, NULL, NULL, NULL, NULL, NULL, -22.5549563152818,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2390, NULL, NULL, NULL, NULL, NULL, -3.05344105122833,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3100, NULL, NULL, NULL, NULL, NULL, 3.07009243237286,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2820, NULL, NULL, NULL, NULL, NULL, 160.812735538231,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2460, NULL, NULL, NULL, NULL, NULL, 14.1480009680105,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   935530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   804290, NULL, NULL, NULL, NULL, NULL, -5.27766378447349,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   765530, NULL, NULL, NULL, NULL, NULL, -24.543816970422,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   814720, NULL, NULL, NULL, NULL, NULL, -10.4989638194231,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1174720, NULL, NULL, NULL, NULL, NULL, -18.4992277986652,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1014720, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1324720, NULL, NULL, NULL, NULL, NULL, -11.7947265247192,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   614720, NULL, NULL, NULL, NULL, NULL, 52.4713456088877,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2900, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   784720, NULL, NULL, NULL, NULL, NULL, 223.692115383922,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   794720, NULL, NULL, NULL, NULL, NULL, -22.1718175218111,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1054720, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1234720, NULL, NULL, NULL, NULL, NULL, 40.2731428874333,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2190, NULL, NULL, NULL, NULL, NULL, 11.3635404564034,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1294720, NULL, NULL, NULL, NULL, NULL, 5.46215853571435,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   264290, NULL, NULL, NULL, NULL, NULL, -11.2501282004407,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   735530, NULL, NULL, NULL, NULL, NULL, -12.6679966802213,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2350, NULL, NULL, NULL, NULL, NULL, 67.1006415071463,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1670, NULL, NULL, NULL, NULL, NULL, 937.709099709186,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2360, NULL, NULL, NULL, NULL, NULL, 19.3365464665564,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   234290, NULL, NULL, NULL, NULL, NULL, 85.0610349955025,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2380, NULL, NULL, NULL, NULL, NULL, 551.298615708425,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3460, NULL, NULL, NULL, NULL, NULL, 258.925908808644,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   4260, NULL, NULL, NULL, NULL, NULL, 160.812735538231,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3130, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1580, NULL, NULL, NULL, NULL, NULL, 64.3892116119143,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3530, NULL, NULL, NULL, NULL, NULL, -8.5136996269942,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                   nval1, nval2, nval3, nval4, nval5, nval6,
                   falta, cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                   nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   sdetalle_conf.NEXTVAL, NULL, NULL, NULL, NULL, NULL,
                   76.7098861155357, NULL, NULL, NULL, NULL, NULL,
                   f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                   NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   665530, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1285530, NULL, NULL, NULL, NULL, NULL, 171.522184509314,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3150, NULL, NULL, NULL, NULL, NULL, -16.8748157620769,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1540, NULL, NULL, NULL, NULL, NULL, 2009.67829230193,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3420, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   594290, NULL, NULL, NULL, NULL, NULL, 30.2274793487453,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1064720, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3790, NULL, NULL, NULL, NULL, NULL, 164.768187066609,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   64720, NULL, NULL, NULL, NULL, NULL, 24.5250919651023,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   894720, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   4200, NULL, NULL, NULL, NULL, NULL, 25842.7274927296,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1024720, NULL, NULL, NULL, NULL, NULL, 16.7089451778814,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   835530, NULL, NULL, NULL, NULL, NULL, -10.7773729657522,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1255530, NULL, NULL, NULL, NULL, NULL, 16.4453446632863,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   114290, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   844290, NULL, NULL, NULL, NULL, NULL, -6.99418071925244,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   535530, NULL, NULL, NULL, NULL, NULL, -11.7947265247192,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2890, NULL, NULL, NULL, NULL, NULL, 55.6563649563779,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   655530, NULL, NULL, NULL, NULL, NULL, 8.9594554694645,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   754720, NULL, NULL, NULL, NULL, NULL, 8.9594554694645,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1384720, NULL, NULL, NULL, NULL, NULL, -19.7760819573446,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1124720, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1104720, NULL, NULL, NULL, NULL, NULL, 8.55827365817832,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   884720, NULL, NULL, NULL, NULL, NULL, 40.0907284607401,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1344720, NULL, NULL, NULL, NULL, NULL, 16.7422737172834,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1514720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   254290, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   204290, NULL, NULL, NULL, NULL, NULL, -19.2896795152453,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   194290, NULL, NULL, NULL, NULL, NULL, -1.129523495605,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1660, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2720, NULL, NULL, NULL, NULL, NULL, 11.466552895075,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   4180, NULL, NULL, NULL, NULL, NULL, 16.7089451778814,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3840, NULL, NULL, NULL, NULL, NULL, 54.0377735518015,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2090, NULL, NULL, NULL, NULL, NULL, 51.3121478733385,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1144720, NULL, NULL, NULL, NULL, NULL, 110.162819530546,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1550, NULL, NULL, NULL, NULL, NULL, 138.939821947097,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   445530, NULL, NULL, NULL, NULL, NULL, -16.9832720232651,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   35530, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   645530, NULL, NULL, NULL, NULL, NULL, 24.5250919651023,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1304290, NULL, NULL, NULL, NULL, NULL, -12.8984944894422,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   75530, NULL, NULL, NULL, NULL, NULL, 196.063270408436,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   25530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   545530, NULL, NULL, NULL, NULL, NULL, 14.1480009680105,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   425530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   694720, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   90, NULL, NULL, NULL, NULL, NULL, 25842.7274927296, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1504720, NULL, NULL, NULL, NULL, NULL, 5.02405086038478,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3600, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1364720, NULL, NULL, NULL, NULL, NULL, -27.5748798545491,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   684720, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1314720, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   4150, NULL, NULL, NULL, NULL, NULL, -19.0312930294301,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1560, NULL, NULL, NULL, NULL, NULL, 20.6305751411592,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2340, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2030, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2040, NULL, NULL, NULL, NULL, NULL, 124.8911141954, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1390, NULL, NULL, NULL, NULL, NULL, 20.6305751411592,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2750, NULL, NULL, NULL, NULL, NULL, 551.298615708425,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1084720, NULL, NULL, NULL, NULL, NULL, 25842.7274927296,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1710, NULL, NULL, NULL, NULL, NULL, 428.034284196977,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2120, NULL, NULL, NULL, NULL, NULL, 176.510295154166,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   525530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   515530, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2450, NULL, NULL, NULL, NULL, NULL, 14.1480009680105,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   20, NULL, NULL, NULL, NULL, NULL, 25842.7274927296, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   30, NULL, NULL, NULL, NULL, NULL, 32.0243359204491, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   124290, NULL, NULL, NULL, NULL, NULL, 35.3569921674426,
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
           VALUES (1036103, 24, 8000047, 1, 80001, 4,
                   415530, NULL, NULL, NULL, NULL, NULL, -0.649429348011543,
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
           VALUES (1036107, 24, 8000047, 1, 80001, 4,
                   1044720, NULL, NULL, NULL, NULL, NULL, -5.27766378447349,
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
           VALUES (1036109, 24, 8000047, 1, 80001, 4,
                   4350, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036116, 24, 8000047, 1, 80001, 4,
                   1154720, NULL, NULL, NULL, NULL, NULL, -5.27766378447349,
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
           VALUES (1036130, 24, 8000047, 1, 80001, 4,
                   4370, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (1036134, 24, 8000047, 1, 80001, 4,
                   384720, NULL, NULL, NULL, NULL, NULL, 3.77090997091858,
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
           VALUES (1036136, 24, 8000047, 1, 80001, 4,
                   284290, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (1036140, 24, 8000047, 1, 80001, 4,
                   1524720, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (1036149, 24, 8000047, 1, 80001, 4,
                   564720, NULL, NULL, NULL, NULL, NULL, 8.9594554694645,
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
           VALUES (1036155, 24, 8000047, 1, 80001, 4,
                   974720, NULL, NULL, NULL, NULL, NULL, -2.09467930725176,
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
           VALUES (1036158, 24, 8000047, 1, 80001, 4,
                   1614720, NULL, NULL, NULL, NULL, NULL, -3.89743315067459,
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
           VALUES (1036160, 24, 8000047, 1, 80001, 4,
                   504290, NULL, NULL, NULL, NULL, NULL, -9.05600037327641,
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
           VALUES (1036215, 24, 8000047, 1, 80001, 4,
                   3910, NULL, NULL, NULL, NULL, NULL, 20.6305751411592,
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
           VALUES (1036217, 24, 8000047, 1, 80001, 4,
                   4250, NULL, NULL, NULL, NULL, NULL, 35.4210375120487,
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
           VALUES (1036219, 24, 8000047, 1, 80001, 4,
                   3930, NULL, NULL, NULL, NULL, NULL, -3.22300645933902,
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
           VALUES (1036230, 24, 8000047, 1, 80001, 4,
                   3950, NULL, NULL, NULL, NULL, NULL, 111.318021473575,
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
           VALUES (1036232, 24, 8000047, 1, 80001, 4,
                   2490, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (1036239, 24, 8000047, 1, 80001, 4,
                   465530, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (1036240, 24, 8000047, 1, 80001, 4,
                   4020, NULL, NULL, NULL, NULL, NULL, -0.649429348011543,
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
           VALUES (1036247, 24, 8000047, 1, 80001, 4,
                   704720, NULL, NULL, NULL, NULL, NULL, -27.5748798545491,
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
           VALUES (1036251, 24, 8000047, 1, 80001, 4,
                   1004720, NULL, NULL, NULL, NULL, NULL, -22.0770850217237,
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
           VALUES (1036254, 24, 8000047, 1, 80001, 4,
                   744720, NULL, NULL, NULL, NULL, NULL, -5.54103198784321,
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
           VALUES (1036258, 24, 8000047, 1, 80001, 4,
                   1214720, NULL, NULL, NULL, NULL, NULL, 8.9594554694645,
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
           VALUES (1036263, 24, 8000047, 1, 80001, 4,
                   994720, NULL, NULL, NULL, NULL, NULL, -14.9532202639853,
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
           VALUES (1036265, 24, 8000047, 1, 80001, 4,
                   4040, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (1036267, 24, 8000047, 1, 80001, 4,
                   304720, NULL, NULL, NULL, NULL, NULL, 12.8653233316313,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   314720, NULL, NULL, NULL, NULL, NULL, 21.9359473087352,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   344720, NULL, NULL, NULL, NULL, NULL, 8.9594554694645,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   74720, NULL, NULL, NULL, NULL, NULL, 25842.7274927296,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   874720, NULL, NULL, NULL, NULL, NULL, 40.7806733496835,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   904720, NULL, NULL, NULL, NULL, NULL, 12.4536766603487,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   674720, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   714720, NULL, NULL, NULL, NULL, NULL, -27.5748798545491,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   864720, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   84290, NULL, NULL, NULL, NULL, NULL, 20.4666601610843,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3050, NULL, NULL, NULL, NULL, NULL, 46.8358376088498,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   274290, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1680, NULL, NULL, NULL, NULL, NULL, 16.7089451778814,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3830, NULL, NULL, NULL, NULL, NULL, 32.7222771552894,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1134290, NULL, NULL, NULL, NULL, NULL, 18.9161028777014,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2760, NULL, NULL, NULL, NULL, NULL, 60.9369192650181,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   94720, NULL, NULL, NULL, NULL, NULL, 67.1006415071463,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   40, NULL, NULL, NULL, NULL, NULL, 323.003497700804, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   4240, NULL, NULL, NULL, NULL, NULL, 25842.7274927296,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1350, NULL, NULL, NULL, NULL, NULL, 73.4285916640173,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   85530, NULL, NULL, NULL, NULL, NULL, -4.48696604282155,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   605530, NULL, NULL, NULL, NULL, NULL, -19.2378601149047,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1484720, NULL, NULL, NULL, NULL, NULL, -28.1578599144194,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   164720, NULL, NULL, NULL, NULL, NULL, -16.9832720232651,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   394720, NULL, NULL, NULL, NULL, NULL, 34.6716046197281,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2170, NULL, NULL, NULL, NULL, NULL, -9.53236991555826,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1465530, NULL, NULL, NULL, NULL, NULL, 20.0750251765724,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3200, NULL, NULL, NULL, NULL, NULL, -6.86415448525841,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   294720, NULL, NULL, NULL, NULL, NULL, 18.2101042185156,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   4360, NULL, NULL, NULL, NULL, NULL, 24.4212122710788,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1594720, NULL, NULL, NULL, NULL, NULL, -15.4773858776327,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   4380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1244720, NULL, NULL, NULL, NULL, NULL, 24.5250919651023,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   404720, NULL, NULL, NULL, NULL, NULL, 20.0572032249925,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   244290, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   554290, NULL, NULL, NULL, NULL, NULL, -6.60618102617327,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3370, NULL, NULL, NULL, NULL, NULL, -3.05344105122833,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   634290, NULL, NULL, NULL, NULL, NULL, -11.7947265247192,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2020, NULL, NULL, NULL, NULL, NULL, 258.925908808644,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   3820, NULL, NULL, NULL, NULL, NULL, 60.9369192650181,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   224290, NULL, NULL, NULL, NULL, NULL, -21.7382130099699,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   914290, NULL, NULL, NULL, NULL, NULL, -10.4121540385743,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   170, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1574720, NULL, NULL, NULL, NULL, NULL, 325.460730880766,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   60, NULL, NULL, NULL, NULL, NULL, 25842.7274927296, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2810, NULL, NULL, NULL, NULL, NULL, 17.261128267138,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1435530, NULL, NULL, NULL, NULL, NULL, 35.1197984878931,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1224720, NULL, NULL, NULL, NULL, NULL, 61.1733147616135,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1474720, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1074290, NULL, NULL, NULL, NULL, NULL, -27.360363020357,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   2910, NULL, NULL, NULL, NULL, NULL, 12.8653233316313,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1374720, NULL, NULL, NULL, NULL, NULL, 132.312048787126,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1204720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   1094720, NULL, NULL, NULL, NULL, NULL, 13.2008023591851,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   334720, NULL, NULL, NULL, NULL, NULL, 17.3122047290253,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   354720, NULL, NULL, NULL, NULL, NULL, -1.41763552762735,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   4050, NULL, NULL, NULL, NULL, NULL, 107.541819941837,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   55530, NULL, NULL, NULL, NULL, NULL, 68.6254179341749,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   324720, NULL, NULL, NULL, NULL, NULL, 29.7136374636482,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 4,
                   134720, NULL, NULL, NULL, NULL, NULL, 5.36701766425536,
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
      COMMIT;

      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 5,
                   2480, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 5,
                   2060, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 5,
                   1800, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 5,
                   2010, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 5,
                   3940, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 5,
                   1840, NULL, NULL, NULL, NULL, NULL, 35.3876261525094,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 5,
                   3070, NULL, NULL, NULL, NULL, NULL, -32.8048124854751,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 5,
                   1850, NULL, NULL, NULL, NULL, NULL, -29.9609204608137,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 5,
                   3440, NULL, NULL, NULL, NULL, NULL, -25.3390387833248,
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
      COMMIT;

      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1890, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2950, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3630, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3650, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2980, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2620, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2690, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3940, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1800, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1820, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2920, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1910, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2990, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2610, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1960, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2650, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (1036006, 24, 8000047, 1, 80001, 6,
                   4130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3360, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3780, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3440, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3980, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   4100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2590, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3660, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3320, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2660, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3730, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2670, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1810, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1840, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1850, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   4080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2600, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3000, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2630, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3690, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1600, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3710, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3350, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2680, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3390, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2000, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   4170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   4000, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2930, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1900, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1920, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2560, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2970, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2570, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1620, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   4280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2480, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2940, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2960, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   4110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1940, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1950, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3670, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2330, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1650, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   4310, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3990, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   4090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2580, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1590, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3310, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1970, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3740, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3550, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1930, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   4120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3680, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1610, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3330, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3340, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   1980, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   3070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   4320, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 6,
                   2870, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      COMMIT;

      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2080, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   150, NULL, NULL, NULL, NULL, NULL, 221.290498418574,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   4140, NULL, NULL, NULL, NULL, NULL, 404.003862007847,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2100, NULL, NULL, NULL, NULL, NULL, 151.683306404368,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   1730, NULL, NULL, NULL, NULL, NULL, 303.124708044124,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2420, NULL, NULL, NULL, NULL, NULL, 317.882860643151,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3490, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3900, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3570, NULL, NULL, NULL, NULL, NULL, 220.311750745326,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3180, NULL, NULL, NULL, NULL, NULL, 151.683306404368,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   4300, NULL, NULL, NULL, NULL, NULL, 151.683306404368,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   4010, NULL, NULL, NULL, NULL, NULL, 391.53630366002,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   1990, NULL, NULL, NULL, NULL, NULL, 375.197656413706,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3770, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   74720, NULL, NULL, NULL, NULL, NULL, 635.932247816326,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3110, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2410, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   4230, NULL, NULL, NULL, NULL, NULL, 195.85975736913,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3120, NULL, NULL, NULL, NULL, NULL, 195.85975736913,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2790, NULL, NULL, NULL, NULL, NULL, 638.283632871001,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   4330, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2540, NULL, NULL, NULL, NULL, NULL, -4.20090070868323,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   1640, NULL, NULL, NULL, NULL, NULL, 404.003862007847,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   4160, NULL, NULL, NULL, NULL, NULL, 106.233806644481,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2370, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2780, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2440, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3560, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3160, NULL, NULL, NULL, NULL, NULL, 489.622333609519,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3580, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   1860, NULL, NULL, NULL, NULL, NULL, 375.197656413706,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2520, NULL, NULL, NULL, NULL, NULL, 375.197656413706,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3090, NULL, NULL, NULL, NULL, NULL, 410.740351684868,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   1720, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3880, NULL, NULL, NULL, NULL, NULL, 489.622333609519,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2110, NULL, NULL, NULL, NULL, NULL, 489.622333609519,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3890, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3500, NULL, NULL, NULL, NULL, NULL, 177.651840938634,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3760, NULL, NULL, NULL, NULL, NULL, 489.622333609519,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2320, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   1690, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2400, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3860, NULL, NULL, NULL, NULL, NULL, 489.622333609519,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   4220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2840, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2470, NULL, NULL, NULL, NULL, NULL, 666.037695729947,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3470, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2800, NULL, NULL, NULL, NULL, NULL, 140.942947273162,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   2860, NULL, NULL, NULL, NULL, NULL, -4.20090070868323,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3590, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   1880, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3210, NULL, NULL, NULL, NULL, NULL, 123.507157587268,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3750, NULL, NULL, NULL, NULL, NULL, 2323.76248908211,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3080, NULL, NULL, NULL, NULL, NULL, -3.62282109073516,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   1700, NULL, NULL, NULL, NULL, NULL, 215.635260927842,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3480, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   3870, NULL, NULL, NULL, NULL, NULL, 140.942947273162,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   4210, NULL, NULL, NULL, NULL, NULL, 489.622333609519,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   1740, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
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
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   1750, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   1760, NULL, NULL, NULL, NULL, NULL, 489.622333609519,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   4270, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 7,
                   4340, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
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
      COMMIT;
   END;

   FOR j IN c_prod
   LOOP
      FOR i IN c_con
      LOOP
         BEGIN
            INSERT INTO sgt_subtabs_det
                        (sdetalle, cempres, csubtabla, cversubt,
                         ccla1, ccla2, ccla3, ccla4, ccla5, ccla6,
                         ccla7, ccla8, nval1, nval2, nval3, nval4, nval5,
                         nval6, falta, cusualt, ccla9, ccla10, nval7, nval8,
                         nval9, nval10
                        )
                 VALUES (sdetalle_conf.NEXTVAL, v_cempres, v_csubtabla, 1,
                         j.sproduc, i.ccla2, i.ccla3, NULL, NULL, NULL,
                         NULL, NULL, i.nval1, NULL, NULL, NULL, NULL,
                         NULL, f_sysdate, f_user, NULL, NULL, NULL, NULL,
                         NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               NULL;
         END;
      END LOOP;
   END LOOP;

   COMMIT;
END;
/

BEGIN
   DELETE      detgaranformula
         WHERE cconcep LIKE '%TASATE%' AND sproduc IN (80004, 80005, 80006);

   COMMIT;
END;
/

BEGIN
   UPDATE sgt_formulas
      SET formula =
             '(DECODE(NVL(RESP(2893),0),0,NVL(RESP(2883),0)*NVL(RESP(2892),0)/100,RESP(2893)))*(TASAPURA/100)'
    WHERE clave = 750062;

   COMMIT;
END;
/

BEGIN
   UPDATE detgaranformula
      SET clave = 750008
    WHERE cconcep = 'TPFINAL' AND sproduc IN (80009, 80010) AND clave = 750062;

   COMMIT;
END;
/