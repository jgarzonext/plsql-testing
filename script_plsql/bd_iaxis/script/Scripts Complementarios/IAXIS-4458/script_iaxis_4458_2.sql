/* Formatted on 2019/07/25 16:29 (Formatter Plus v4.8.8) */
DROP SEQUENCE SDETALLE_CONF;

CREATE SEQUENCE SDETALLE_CONF
  START WITH 1620000
  MAXVALUE 9999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  NOCACHE
  NOORDER;
/
BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050107, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050107, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050310, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050310, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050320, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050320, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050330, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050330, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050340, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050340, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050350, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050350, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050360, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050360, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050370, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050370, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050390, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050390, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050400, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050400, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050410, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050410, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050420, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050420, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050430, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050430, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050440, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050440, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050450, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050450, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050460, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050460, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050470, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050470, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050480, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050480, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050490, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050490, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050500, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050500, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050510, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050510, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050520, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050520, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050530, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050530, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050540, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050540, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050550, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050550, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050560, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050560, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050570, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050570, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050580, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050580, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050590, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050590, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050600, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050600, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050610, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050610, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050620, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050620, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050630, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050630, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050650, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050650, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050660, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050660, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050670, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050670, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050680, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050680, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050690, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050690, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050730, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050730, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050740, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050740, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050750, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050750, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050770, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050770, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050780, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050780, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050790, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050790, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050800, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050800, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050810, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050810, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050820, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050820, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050830, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050830, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050840, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050840, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050850, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050850, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050860, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050860, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050870, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050870, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050880, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050880, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050890, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050890, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050900, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050900, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050910, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050910, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050920, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050920, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050930, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050930, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050940, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050940, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050950, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050950, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050960, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050960, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050970, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050970, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050980, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050980, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050990, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050990, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051000, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051000, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050107, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050107, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050310, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050310, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050320, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050320, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050330, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050330, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050340, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050340, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050350, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050350, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050360, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050360, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050370, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050370, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050390, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050390, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050400, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050400, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050410, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050410, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050420, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050420, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050430, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050430, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050440, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050440, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050450, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050450, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050460, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050460, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050470, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050470, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050480, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050480, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050490, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050490, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050500, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050500, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050510, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050510, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050520, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050520, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050530, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050530, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050540, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050540, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050550, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050550, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050560, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050560, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050570, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050570, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050580, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050580, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050590, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050590, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050600, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050600, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050610, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050610, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050620, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050620, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050630, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050630, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050650, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050650, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050660, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050660, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050670, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050670, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050680, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050680, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050690, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050690, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050730, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050730, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050740, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050740, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050750, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050750, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050770, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050770, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050780, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050780, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050790, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050790, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050800, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050800, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050810, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050810, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050820, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050820, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050830, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050830, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050840, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050840, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050850, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050850, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050860, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050860, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050870, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050870, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050880, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050880, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050890, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050890, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050900, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050900, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050910, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050910, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050920, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050920, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050930, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050930, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050940, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050940, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050950, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050950, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050960, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050960, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050970, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050970, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050980, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050980, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050990, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050990, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051000, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051000, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050107, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050107, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050310, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050310, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050320, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050320, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050330, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050330, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050340, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050340, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050350, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050350, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050360, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050360, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050370, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050370, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050380, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050390, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050390, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050400, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050400, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050410, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050410, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050420, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050420, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050430, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050430, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050440, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050440, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050450, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050450, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050460, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050460, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050470, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050470, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050480, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050480, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050490, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050490, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050500, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050500, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050510, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050510, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050520, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050520, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050530, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050530, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050540, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050540, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050550, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050550, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050560, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050560, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050570, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050570, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050580, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050580, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050590, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050590, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050600, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050600, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050610, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050610, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050620, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050620, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050630, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050630, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050650, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050650, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050660, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050660, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050670, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050670, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050680, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050680, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050690, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050690, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050720, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050730, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050730, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050740, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050740, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050750, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050750, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050770, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050770, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050780, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050780, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050790, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050790, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050800, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050800, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050810, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050810, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050820, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050820, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050830, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050830, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050840, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050840, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050850, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050850, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050860, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050860, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050870, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050870, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050880, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050880, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050890, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050890, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050900, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050900, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050910, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050910, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050920, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050920, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050930, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050930, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050940, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050940, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050950, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050950, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050960, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050960, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050970, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050970, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050980, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050980, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8050990, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8050990, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051000, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051000, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051010, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051020, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051030, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051040, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051050, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051060, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051070, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051080, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051090, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051100, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051110, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051120, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051130, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051140, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051150, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051160, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051170, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051180, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051190, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051200, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051210, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051220, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051230, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051240, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051250, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051260, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051270, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051280, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80007, 0,
                   8051300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80008, 0,
                   8051300, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   COMMIT;
END;
/
BEGIN
BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806100,
                NULL, NULL, NULL, NULL, NULL, 410.740351684868, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806100,
                NULL, NULL, NULL, NULL, NULL, 410.740351684868, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806360,
                NULL, NULL, NULL, NULL, NULL, -3.62282109073516, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806360,
                NULL, NULL, NULL, NULL, NULL, -3.62282109073516, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806200,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806200,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806110,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806110,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806440,
                NULL, NULL, NULL, NULL, NULL, 221.290498418574, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806440,
                NULL, NULL, NULL, NULL, NULL, 221.290498418574, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806390,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806390,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806500,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806500,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806180,
                NULL, NULL, NULL, NULL, NULL, 638.283632871001, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806180,
                NULL, NULL, NULL, NULL, NULL, 638.283632871001, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806060,
                NULL, NULL, NULL, NULL, NULL, 140.942947273162, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806060,
                NULL, NULL, NULL, NULL, NULL, 140.942947273162, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806130,
                NULL, NULL, NULL, NULL, NULL, 215.635260927842, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806130,
                NULL, NULL, NULL, NULL, NULL, 215.635260927842, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806030,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806030,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806280,
                NULL, NULL, NULL, NULL, NULL, 106.233806644481, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806280,
                NULL, NULL, NULL, NULL, NULL, 106.233806644481, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806290,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806290,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806090,
                NULL, NULL, NULL, NULL, NULL, 177.651840938634, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806090,
                NULL, NULL, NULL, NULL, NULL, 177.651840938634, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806170,
                NULL, NULL, NULL, NULL, NULL, -4.20090070868323, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806170,
                NULL, NULL, NULL, NULL, NULL, -4.20090070868323, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806470,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806470,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806380,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806380,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806310,
                NULL, NULL, NULL, NULL, NULL, 303.124708044124, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806310,
                NULL, NULL, NULL, NULL, NULL, 303.124708044124, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806230,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806230,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806070,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806070,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806370,
                NULL, NULL, NULL, NULL, NULL, 635.932247816326, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806370,
                NULL, NULL, NULL, NULL, NULL, 635.932247816326, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806300,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806300,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806120,
                NULL, NULL, NULL, NULL, NULL, 220.311750745326, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806120,
                NULL, NULL, NULL, NULL, NULL, 220.311750745326, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806430,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806430,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806050,
                NULL, NULL, NULL, NULL, NULL, 123.507157587268, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806050,
                NULL, NULL, NULL, NULL, NULL, 123.507157587268, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806240,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806240,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806330,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806330,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806250,
                NULL, NULL, NULL, NULL, NULL, 195.85975736913, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806250,
                NULL, NULL, NULL, NULL, NULL, 195.85975736913, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806350,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806350,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806010,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806010,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806420,
                NULL, NULL, NULL, NULL, NULL, 391.53630366002, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806420,
                NULL, NULL, NULL, NULL, NULL, 391.53630366002, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806140,
                NULL, NULL, NULL, NULL, NULL, 375.197656413706, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806140,
                NULL, NULL, NULL, NULL, NULL, 375.197656413706, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806260,
                NULL, NULL, NULL, NULL, NULL, 195.85975736913, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806260,
                NULL, NULL, NULL, NULL, NULL, 195.85975736913, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806480,
                NULL, NULL, NULL, NULL, NULL, 375.197656413706, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806480,
                NULL, NULL, NULL, NULL, NULL, 375.197656413706, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806320,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806320,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806190,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806190,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806210,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806210,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806400,
                NULL, NULL, NULL, NULL, NULL, 151.683306404368, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806400,
                NULL, NULL, NULL, NULL, NULL, 151.683306404368, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806410,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806410,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806220,
                NULL, NULL, NULL, NULL, NULL, 140.942947273162, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806220,
                NULL, NULL, NULL, NULL, NULL, 140.942947273162, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806270,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806270,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806020,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806020,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806450,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806450,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806150,
                NULL, NULL, NULL, NULL, NULL, 375.197656413706, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806150,
                NULL, NULL, NULL, NULL, NULL, 375.197656413706, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806040,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806040,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806490,
                NULL, NULL, NULL, NULL, NULL, 2323.76248908211, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806490,
                NULL, NULL, NULL, NULL, NULL, 2323.76248908211, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806340,
                NULL, NULL, NULL, NULL, NULL, 317.882860643151, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806340,
                NULL, NULL, NULL, NULL, NULL, 317.882860643151, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806080,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806080,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806160,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806160,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

   --v_cdesamparo -->GARANTIA PARA OBLIGACIONES ANTE LA IATA

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806510
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806510, 1, 'GARANTIA PARA OBLIGACIONES ANTE LA IATA',
                'GARANTIA PARA OBLIGACIONES ANTE LA IATA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806510, 2, 'GARANTIA PARA OBLIGACIONES ANTE LA IATA',
                'GARANTIA PARA OBLIGACIONES ANTE LA IATA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806510, 8, 'GARANTIA PARA OBLIGACIONES ANTE LA IATA',
                'GARANTIA PARA OBLIGACIONES ANTE LA IATA'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806510,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806510,
                NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

   --v_cdesamparo -->CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806520
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806520, 1,
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA',
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806520, 2,
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA',
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806520, 8,
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA',
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806520,
                NULL, NULL, NULL, NULL, NULL, 404.003862007847, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806520,
                NULL, NULL, NULL, NULL, NULL, 404.003862007847, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

   --v_cdesamparo -->PUBLICIDAD MOVIL

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806530
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion, tcaratula
               )
        VALUES (806530, 1, 'PUBLICIDAD MOVIL', 'PUBLICIDAD MOVIL'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion, tcaratula
               )
        VALUES (806530, 2, 'PUBLICIDAD MOVIL', 'PUBLICIDAD MOVIL'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion, tcaratula
               )
        VALUES (806530, 8, 'PUBLICIDAD MOVIL', 'PUBLICIDAD MOVIL'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806530,
                NULL, NULL, NULL, NULL, NULL, 666.037695729947, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806530,
                NULL, NULL, NULL, NULL, NULL, 666.037695729947, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

   --v_cdesamparo -->CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806540
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806540, 1,
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS',
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806540, 2,
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS',
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806540, 8,
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS',
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806540,
                NULL, NULL, NULL, NULL, NULL, 404.003862007847, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806540,
                NULL, NULL, NULL, NULL, NULL, 404.003862007847, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

   --v_cdesamparo -->GARANTIA PARA SUMINISTRO DE PERSONAL

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806550
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806550, 1, 'GARANTIA PARA SUMINISTRO DE PERSONAL ',
                'GARANTIA PARA SUMINISTRO DE PERSONAL '
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806550, 2, 'GARANTIA PARA SUMINISTRO DE PERSONAL ',
                'GARANTIA PARA SUMINISTRO DE PERSONAL '
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806550, 8, 'GARANTIA PARA SUMINISTRO DE PERSONAL ',
                'GARANTIA PARA SUMINISTRO DE PERSONAL '
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806550,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806550,
                NULL, NULL, NULL, NULL, NULL, 11947.1473636581, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

   --v_cdesamparo -->USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806560
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806560, 1,
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA',
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806560, 2,
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA',
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806560, 8,
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA',
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806560,
                NULL, NULL, NULL, NULL, NULL, -4.20090070868323, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806560,
                NULL, NULL, NULL, NULL, NULL, -4.20090070868323, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

   --v_cdesamparo -->INTERVENCIÓN ESPACIO PÚBLICO

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806570
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806570, 1, 'INTERVENCIÓN ESPACIO PÚBLICO',
                'INTERVENCIÓN ESPACIO PÚBLICO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806570, 2, 'INTERVENCIÓN ESPACIO PÚBLICO',
                'INTERVENCIÓN ESPACIO PÚBLICO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806570, 8, 'INTERVENCIÓN ESPACIO PÚBLICO',
                'INTERVENCIÓN ESPACIO PÚBLICO'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806570,
                NULL, NULL, NULL, NULL, NULL, 151.683306404368, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806570,
                NULL, NULL, NULL, NULL, NULL, 151.683306404368, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

   --v_cdesamparo -->CONCESION DE BIENES DE USO PUBLICO

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806580
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806580, 1, 'CONCESION DE BIENES DE USO PUBLICO',
                'CONCESION DE BIENES DE USO PUBLICO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806580, 2, 'CONCESION DE BIENES DE USO PUBLICO',
                'CONCESION DE BIENES DE USO PUBLICO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806580, 8, 'CONCESION DE BIENES DE USO PUBLICO',
                'CONCESION DE BIENES DE USO PUBLICO'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806580,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0, 806580,
                NULL, NULL, NULL, NULL, NULL, 489.622333609519, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

   --v_cdesamparo -->DECLARANTES SOC. INTERMEDIACIÓN  ADUANERA

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806590
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806590, 1, 'DECLARANTES SOC. INTERMEDIACIÓN  ADUANERA',
                'DECLARANTES SOC. INTERMEDIACIÓN  ADUANERA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806590, 2, 'DECLARANTES SOC. INTERMEDIACIÓN  ADUANERA',
                'DECLARANTES SOC. INTERMEDIACIÓN  ADUANERA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806590, 8, 'DECLARANTES SOC. INTERMEDIACIÓN  ADUANERA',
                'DECLARANTES SOC. INTERMEDIACIÓN  ADUANERA'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

BEGIN
   INSERT INTO sgt_subtabs_det
               (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2, ccla3,
                ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2, nval3,
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod,
                ccla9, ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0, 806590,
                NULL, NULL, NULL, NULL, NULL, 79.0941191456145, NULL, NULL,
                NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

 --v_cdesamparo -->GARANTIA PARA OBLIGACIONES ANTE LA IATA

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806510
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806510, 1, 'GARANTIA PARA OBLIGACIONES ANTE LA IATA',
                'GARANTIA PARA OBLIGACIONES ANTE LA IATA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806510, 2, 'GARANTIA PARA OBLIGACIONES ANTE LA IATA',
                'GARANTIA PARA OBLIGACIONES ANTE LA IATA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806510, 8, 'GARANTIA PARA OBLIGACIONES ANTE LA IATA',
                'GARANTIA PARA OBLIGACIONES ANTE LA IATA'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
END;
/

BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806510, NULL, NULL, NULL, NULL, NULL, 200, NULL,
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806590, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   --v_cdesamparo -->EMPRESA DE SERVICIOS TEMPORALES
   BEGIN
      INSERT INTO amparos_conf
                  (ccodamparo
                  )
           VALUES (806600
                  );

      INSERT INTO detamparos_conf
                  (ccodamparo, cidioma, tdescripcion,
                   tcaratula
                  )
           VALUES (806600, 1, 'EMPRESA DE SERVICIOS TEMPORALES ',
                   'EMPRESA DE SERVICIOS TEMPORALES '
                  );

      INSERT INTO detamparos_conf
                  (ccodamparo, cidioma, tdescripcion,
                   tcaratula
                  )
           VALUES (806600, 2, 'EMPRESA DE SERVICIOS TEMPORALES ',
                   'EMPRESA DE SERVICIOS TEMPORALES '
                  );

      INSERT INTO detamparos_conf
                  (ccodamparo, cidioma, tdescripcion,
                   tcaratula
                  )
           VALUES (806600, 8, 'EMPRESA DE SERVICIOS TEMPORALES ',
                   'EMPRESA DE SERVICIOS TEMPORALES '
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;
/

 --v_cdesamparo -->CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806520
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806520, 1,
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA',
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806520, 2,
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA',
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806520, 8,
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA',
                'CONCESION MINERA DE MATERIALES DE CONSTRUCCION Y SUS DERIVA'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806520, NULL, NULL, NULL, NULL, NULL, 404.003862007847,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806520, NULL, NULL, NULL, NULL, NULL, 404.003862007847,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;
/

--v_cdesamparo -->PUBLICIDAD MOVIL

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806530
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion, tcaratula
               )
        VALUES (806530, 1, 'PUBLICIDAD MOVIL', 'PUBLICIDAD MOVIL'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion, tcaratula
               )
        VALUES (806530, 2, 'PUBLICIDAD MOVIL', 'PUBLICIDAD MOVIL'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion, tcaratula
               )
        VALUES (806530, 8, 'PUBLICIDAD MOVIL', 'PUBLICIDAD MOVIL'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806530, NULL, NULL, NULL, NULL, NULL, 666.037695729947,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806530, NULL, NULL, NULL, NULL, NULL, 666.037695729947,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;
/

BEGIN
   --v_cdesamparo -->CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806540
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806540, 1,
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS',
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806540, 2,
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS',
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806540, 8,
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS',
                'CONCESION MINERA DE CARBON Y MINERALES PRECIOSOS'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806540, NULL, NULL, NULL, NULL, NULL, 404.003862007847,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806540, NULL, NULL, NULL, NULL, NULL, 404.003862007847,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;
/

BEGIN
   --v_cdesamparo -->GARANTIA PARA SUMINISTRO DE PERSONAL
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806550
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806550, 1, 'GARANTIA PARA SUMINISTRO DE PERSONAL ',
                'GARANTIA PARA SUMINISTRO DE PERSONAL '
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806550, 2, 'GARANTIA PARA SUMINISTRO DE PERSONAL ',
                'GARANTIA PARA SUMINISTRO DE PERSONAL '
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806550, 8, 'GARANTIA PARA SUMINISTRO DE PERSONAL ',
                'GARANTIA PARA SUMINISTRO DE PERSONAL '
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806550, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806550, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;

/

BEGIN
   --v_cdesamparo -->USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806560
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806560, 1,
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA',
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806560, 2,
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA',
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806560, 8,
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA',
                'USO DEL ESPECTRO RADIOELECTRICO PARA EMPRESAS DE VIGILANCIA'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806560, NULL, NULL, NULL, NULL, NULL, -4.20090070868323,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806560, NULL, NULL, NULL, NULL, NULL, -4.20090070868323,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;
/

BEGIN
   --v_cdesamparo -->INTERVENCI�N ESPACIO P�BLICO
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806570
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806570, 1, 'INTERVENCI�N ESPACIO P�BLICO',
                'INTERVENCI�N ESPACIO P�BLICO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806570, 2, 'INTERVENCI�N ESPACIO P�BLICO',
                'INTERVENCI�N ESPACIO P�BLICO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806570, 8, 'INTERVENCI�N ESPACIO P�BLICO',
                'INTERVENCI�N ESPACIO P�BLICO'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806570, NULL, NULL, NULL, NULL, NULL, 151.683306404368,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806570, NULL, NULL, NULL, NULL, NULL, 151.683306404368,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;
/

BEGIN
   --v_cdesamparo -->CONCESION DE BIENES DE USO PUBLICO
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806580
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806580, 1, 'CONCESION DE BIENES DE USO PUBLICO',
                'CONCESION DE BIENES DE USO PUBLICO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806580, 2, 'CONCESION DE BIENES DE USO PUBLICO',
                'CONCESION DE BIENES DE USO PUBLICO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806580, 8, 'CONCESION DE BIENES DE USO PUBLICO',
                'CONCESION DE BIENES DE USO PUBLICO'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806580, NULL, NULL, NULL, NULL, NULL, 489.622333609519,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806580, NULL, NULL, NULL, NULL, NULL, 489.622333609519,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;
/

BEGIN
   --v_cdesamparo -->DECLARANTES SOC. INTERMEDIACI�N  ADUANERA
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806590
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806590, 1, 'DECLARANTES SOC. INTERMEDIACI�N  ADUANERA',
                'DECLARANTES SOC. INTERMEDIACI�N  ADUANERA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806590, 2, 'DECLARANTES SOC. INTERMEDIACI�N  ADUANERA',
                'DECLARANTES SOC. INTERMEDIACI�N  ADUANERA'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806590, 8, 'DECLARANTES SOC. INTERMEDIACI�N  ADUANERA',
                'DECLARANTES SOC. INTERMEDIACI�N  ADUANERA'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806590, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806590, NULL, NULL, NULL, NULL, NULL, 79.0941191456145,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;

/

BEGIN
   --v_cdesamparo -->EMPRESA DE SERVICIOS TEMPORALES
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806600
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806600, 1, 'EMPRESA DE SERVICIOS TEMPORALES ',
                'EMPRESA DE SERVICIOS TEMPORALES '
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806600, 2, 'EMPRESA DE SERVICIOS TEMPORALES ',
                'EMPRESA DE SERVICIOS TEMPORALES '
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma, tdescripcion,
                tcaratula
               )
        VALUES (806600, 8, 'EMPRESA DE SERVICIOS TEMPORALES ',
                'EMPRESA DE SERVICIOS TEMPORALES '
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806600, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806600, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;
/

BEGIN
   --v_cdesamparo -->GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806610
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806610, 1,
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO',
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806610, 2,
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO',
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806610, 8,
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO',
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806610, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806600, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806600, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
END;
/

--v_cdesamparo -->GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO

BEGIN
   INSERT INTO amparos_conf
               (ccodamparo
               )
        VALUES (806610
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806610, 1,
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO',
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806610, 2,
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO',
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO'
               );

   INSERT INTO detamparos_conf
               (ccodamparo, cidioma,
                tdescripcion,
                tcaratula
               )
        VALUES (806610, 8,
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO',
                'GARANTIA PARA CHATARRIZACION Y/O DESINTEGRACION DE VEHICULO'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80009, 0,
                   806610, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80010, 0,
                   806610, NULL, NULL, NULL, NULL, NULL, 11947.1473636581,
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
END;
/