/* Formatted on 2019/09/07 16:07 (Formatter Plus v4.8.8) */
BEGIN
   UPDATE sgt_subtabs_det
      SET ccla3 = 1384290
    WHERE csubtabla LIKE '8000047' AND ccla3 = 1544290;

   DELETE      sectoresprod
         WHERE cclacontrato IN (4290)
           AND ccodcontrato IN (138)
           AND TRUNC (ffecini) = TO_DATE ('05/09/2019', 'dd/mm/yyyy');

   DELETE      sectoresprod
         WHERE cclacontrato = 4290 AND ccodcontrato = 154;

   DELETE      detclasecontrato
         WHERE cclacontrato = 4290 AND ccodcontrato = 154;

   DELETE      clasecontrato
         WHERE cclacontrato = 4290 AND ccodcontrato = 154;

   UPDATE sgt_subtabs_det
      SET nval1 = 11947.1473636581
    WHERE csubtabla = 8000047 AND ccla3 = 806390;

   UPDATE sgt_subtabs_det
      SET nval1 = 11947.1473636581
    WHERE csubtabla = 8000047 AND ccla3 = 806380;

   UPDATE sgt_subtabs_det
      SET nval1 = 2323.76248908211
    WHERE csubtabla = 8000047 AND ccla3 = 806490;
    DELETE      detclasecontrato
         WHERE cclacontrato = 4290 AND ccodcontrato = 133;

   DELETE      clasecontrato
         WHERE cclacontrato = 4290 AND ccodcontrato = 133;

   DELETE      detclasecontrato
         WHERE cclacontrato = 0 AND ccodcontrato = 217;

   DELETE      clasecontrato
         WHERE cclacontrato = 0 AND ccodcontrato = 217;

   

   UPDATE sgt_subtabs_det
      SET ccla3 = 1654290
    WHERE csubtabla = 8000047 AND ccla3 = 1334290;

   UPDATE sgt_subtabs_det
      SET ccla2 = 1
    WHERE csubtabla LIKE '8000047' AND ccla3 IN (1350) AND ccla2 = 4;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 6, 1, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 11, 1, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 12, 1, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 13, 1, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 7, 1, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 7, 2, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 8, 1, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 14, 1, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 9, 1, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 9, 2, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 10, 1, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sectoresprod
                  (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, csector, ccodcontrato, cclacontrato, precarg,
                   iextrap, creten, ffecini, ffecfin, cgruries, cusualt,
                   falta, cusumod, fmodifi
                  )
           VALUES (24, 801, 15, 1, 0, 0,
                   NULL, 4, 187, 0, 0,
                   0, 'N', f_sysdate, NULL, NULL, NULL,
                   NULL, NULL, NULL
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
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   435530, NULL, NULL, NULL, NULL, NULL, 124.7264909180643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   435530, NULL, NULL, NULL, NULL, NULL, 124.7264909180643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   435530, NULL, NULL, NULL, NULL, NULL, 124.7264909180643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   435530, NULL, NULL, NULL, NULL, NULL, 114.1480009680105,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   435530, NULL, NULL, NULL, NULL, NULL, 114.1480009680105,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   435530, NULL, NULL, NULL, NULL, NULL, 114.1480009680105,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   435530, NULL, NULL, NULL, NULL, NULL, 124.7264909180643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   435530, NULL, NULL, NULL, NULL, NULL, 124.7264909180643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   435530, NULL, NULL, NULL, NULL, NULL, 124.7264909180643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   435530, NULL, NULL, NULL, NULL, NULL, 111.3637143175895,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   435530, NULL, NULL, NULL, NULL, NULL, 111.3637143175895,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   435530, NULL, NULL, NULL, NULL, NULL, 111.3637143175895,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   724720, NULL, NULL, NULL, NULL, NULL, 221.576968819512,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   724720, NULL, NULL, NULL, NULL, NULL, 221.576968819512,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   724720, NULL, NULL, NULL, NULL, NULL, 221.576968819512,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   724720, NULL, NULL, NULL, NULL, NULL, 154.0377735518015,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   724720, NULL, NULL, NULL, NULL, NULL, 154.0377735518015,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   724720, NULL, NULL, NULL, NULL, NULL, 154.0377735518015,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   724720, NULL, NULL, NULL, NULL, NULL, 221.576968819512,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   724720, NULL, NULL, NULL, NULL, NULL, 221.576968819512,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   724720, NULL, NULL, NULL, NULL, NULL, 221.576968819512,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   724720, NULL, NULL, NULL, NULL, NULL, 210.890369136604,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   724720, NULL, NULL, NULL, NULL, NULL, 210.890369136604,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   724720, NULL, NULL, NULL, NULL, NULL, 210.890369136604,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1574290, NULL, NULL, NULL, NULL, NULL, 74.6609612166752,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1574290, NULL, NULL, NULL, NULL, NULL, 74.6609612166752,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1574290, NULL, NULL, NULL, NULL, NULL, 74.6609612166752,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1574290, NULL, NULL, NULL, NULL, NULL, 80.7103204847547,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   1574290, NULL, NULL, NULL, NULL, NULL, 80.7103204847547,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   1574290, NULL, NULL, NULL, NULL, NULL, 80.7103204847547,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1574290, NULL, NULL, NULL, NULL, NULL, 74.6609612166752,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   1574290, NULL, NULL, NULL, NULL, NULL, 74.6609612166752,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   1574290, NULL, NULL, NULL, NULL, NULL, 74.6609612166752,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1574290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   1574290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   1574290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1584290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1584290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1584290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1584290, NULL, NULL, NULL, NULL, NULL, 77.4450436847182,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   1584290, NULL, NULL, NULL, NULL, NULL, 77.4450436847182,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   1584290, NULL, NULL, NULL, NULL, NULL, 77.4450436847182,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1584290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   1584290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   1584290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1584290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   1584290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   1584290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1870, NULL, NULL, NULL, NULL, NULL, 76.8948273187546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1870, NULL, NULL, NULL, NULL, NULL, 76.8948273187546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1870, NULL, NULL, NULL, NULL, NULL, 76.8948273187546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1870, NULL, NULL, NULL, NULL, NULL, 83.1251842379231,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   1870, NULL, NULL, NULL, NULL, NULL, 83.1251842379231,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   1870, NULL, NULL, NULL, NULL, NULL, 83.1251842379231,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1870, NULL, NULL, NULL, NULL, NULL, 76.8948273187546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   1870, NULL, NULL, NULL, NULL, NULL, 76.8948273187546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   1870, NULL, NULL, NULL, NULL, NULL, 76.8948273187546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   1870, NULL, NULL, NULL, NULL, NULL, 74.3394694513724,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   1870, NULL, NULL, NULL, NULL, NULL, 74.3394694513724,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   1870, NULL, NULL, NULL, NULL, NULL, 74.3394694513724,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   4620, NULL, NULL, NULL, NULL, NULL, 148.874456394289,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4620, NULL, NULL, NULL, NULL, NULL, 148.874456394289,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4620, NULL, NULL, NULL, NULL, NULL, 148.874456394289,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   4620, NULL, NULL, NULL, NULL, NULL, 160.9369192650181,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   4620, NULL, NULL, NULL, NULL, NULL, 160.9369192650181,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   4620, NULL, NULL, NULL, NULL, NULL, 160.9369192650181,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   4620, NULL, NULL, NULL, NULL, NULL, 148.874456394289,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   4620, NULL, NULL, NULL, NULL, NULL, 148.874456394289,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   4620, NULL, NULL, NULL, NULL, NULL, 148.874456394289,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   4620, NULL, NULL, NULL, NULL, NULL, 143.9270818222337,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   4620, NULL, NULL, NULL, NULL, NULL, 143.9270818222337,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   4620, NULL, NULL, NULL, NULL, NULL, 143.9270818222337,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   4710, NULL, NULL, NULL, NULL, NULL, 111.5891330633549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4710, NULL, NULL, NULL, NULL, NULL, 111.5891330633549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4710, NULL, NULL, NULL, NULL, NULL, 111.5891330633549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   4710, NULL, NULL, NULL, NULL, NULL, 120.6305751411592,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   4710, NULL, NULL, NULL, NULL, NULL, 120.6305751411592,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   4710, NULL, NULL, NULL, NULL, NULL, 120.6305751411592,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   4710, NULL, NULL, NULL, NULL, NULL, 111.5891330633549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   4710, NULL, NULL, NULL, NULL, NULL, 111.5891330633549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   4710, NULL, NULL, NULL, NULL, NULL, 111.5891330633549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
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
                   4710, NULL, NULL, NULL, NULL, NULL, 107.88081900595077,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   4710, NULL, NULL, NULL, NULL, NULL, 107.88081900595077,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   4710, NULL, NULL, NULL, NULL, NULL, 107.88081900595077,
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