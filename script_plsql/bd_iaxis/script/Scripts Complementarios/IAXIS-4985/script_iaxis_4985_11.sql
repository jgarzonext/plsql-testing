/* Formatted on 2019/09/11 18:10 (Formatter Plus v4.8.8) */
BEGIN
   update      sgt_subtabs_det
   set ccla3 = 4680
         WHERE csubtabla LIKE '8000047' AND ccla3 IN (1674720); --, 1870
         
             
   
            begin
            INSERT INTO clasecontrato
            (ccodcontrato, cclacontrato
            )
     VALUES (138,4290);
     EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (138,4290,1,'Construcción de Vías en placa huella');
         EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (138,4290,2,'Construcción de Vías en placa huella');
         EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (138,4290,8,'Construcción de Vías en placa huella');
         EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,11,1,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,12,1,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,13,1,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,14,1,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,10,1,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,15,1,0, 0,
                         NULL ,1,138,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               
         NULL;
   END;

  
   DELETE      detclasecontrato
         WHERE cclacontrato IN (0) AND ccodcontrato IN (243);

   DELETE      clasecontrato
         WHERE cclacontrato IN (0) AND ccodcontrato IN (243);

   DELETE      detclasecontrato
         WHERE cclacontrato IN (0) AND ccodcontrato IN (345);

   DELETE      clasecontrato
         WHERE cclacontrato IN (0) AND ccodcontrato IN (345);
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.830271904361,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.830271904361
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.830271904361,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.830271904361
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.830271904361,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.830271904361
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.9902648937437,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.9902648937437
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.9902648937437,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.9902648937437
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.9902648937437,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.9902648937437
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 146.8358376088498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 146.8358376088498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 146.8358376088498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 146.8358376088498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 146.8358376088498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 146.8358376088498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.830271904361,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.830271904361
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.830271904361,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.830271904361
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.830271904361,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.830271904361
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.9902648937437,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.9902648937437
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.9902648937437,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.9902648937437
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 135.9902648937437,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.9902648937437
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 131.316379799491,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 131.316379799491
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 131.316379799491,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 131.316379799491
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4610;
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
                   4610, NULL, NULL, NULL, NULL, NULL, 131.316379799491,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 131.316379799491
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4610;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1354290;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1354290;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1354290;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 80.9687069705699,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 80.9687069705699
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1354290;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 80.9687069705699,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 80.9687069705699
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1354290;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 80.9687069705699,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 80.9687069705699
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1354290;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1354290;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1354290;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1354290;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1354290;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1354290;
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
                   1354290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1354290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 89.6802693173738,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 89.6802693173738
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1504290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 89.6802693173738,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 89.6802693173738
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1504290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 89.6802693173738,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 89.6802693173738
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1504290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 96.94655894877167,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 96.94655894877167
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1504290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 96.94655894877167,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 96.94655894877167
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1504290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 96.94655894877167,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 96.94655894877167
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1504290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 89.6802693173738,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 89.6802693173738
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1504290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 89.6802693173738,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 89.6802693173738
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1504290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 89.6802693173738,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 89.6802693173738
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1504290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 86.7000274761491,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 86.7000274761491
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1504290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 86.7000274761491,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 86.7000274761491
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1504290;
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
                   1504290, NULL, NULL, NULL, NULL, NULL, 86.7000274761491,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 86.7000274761491
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1504290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1524290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1524290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1524290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 72.639636979643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 72.639636979643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1524290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 72.639636979643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 72.639636979643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1524290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 72.639636979643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 72.639636979643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1524290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1524290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1524290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1524290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 64.9621666852606,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 64.9621666852606
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1524290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 64.9621666852606,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 64.9621666852606
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1524290;
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
                   1524290, NULL, NULL, NULL, NULL, NULL, 64.9621666852606,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 64.9621666852606
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1524290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 95.9931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 95.9931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1534290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 95.9931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 95.9931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1534290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 95.9931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 95.9931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1534290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 171.0299776593698,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 171.0299776593698
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1534290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 171.0299776593698,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 171.0299776593698
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1534290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 171.0299776593698,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 171.0299776593698
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1534290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 95.9931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 95.9931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1534290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 95.9931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 95.9931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1534290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 95.9931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 95.9931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1534290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 92.80309526465795,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 92.80309526465795
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1534290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 92.80309526465795,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 92.80309526465795
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1534290;
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
                   1534290, NULL, NULL, NULL, NULL, NULL, 92.80309526465795,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 92.80309526465795
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1534290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 68.3515801561831,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 68.3515801561831
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1384290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 68.3515801561831,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 68.3515801561831
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1384290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 68.3515801561831,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 68.3515801561831
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1384290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 132.7222771552894,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 132.7222771552894
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1384290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 132.7222771552894,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 132.7222771552894
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1384290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 132.7222771552894,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 132.7222771552894
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1384290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 68.3515801561831,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 68.3515801561831
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1384290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 68.3515801561831,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 68.3515801561831
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1384290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 68.3515801561831,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 68.3515801561831
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1384290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1384290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1384290;
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
                   1384290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1384290;
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
                   1394290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1394290;
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
                   1394290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1394290;
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
                   1394290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1394290;
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
                   1394290, NULL, NULL, NULL, NULL, NULL, 81.3812055533658,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 81.3812055533658
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1394290;
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
                   1394290, NULL, NULL, NULL, NULL, NULL, 81.3812055533658,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 81.3812055533658
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1394290;
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
                   1394290, NULL, NULL, NULL, NULL, NULL, 81.3812055533658,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 81.3812055533658
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1394290;
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
                   1394290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1394290;
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
                   1394290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1394290;
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
                   1394290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1394290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                   nval1, nval2, nval3, nval4, nval5, nval6,
                   falta, cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                   nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   1394290, NULL, NULL, NULL, NULL, NULL,
                   108.00617776116044, NULL, NULL, NULL, NULL, NULL,
                   f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 108.00617776116044
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1394290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                   nval1, nval2, nval3, nval4, nval5, nval6,
                   falta, cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                   nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   1394290, NULL, NULL, NULL, NULL, NULL,
                   108.00617776116044, NULL, NULL, NULL, NULL, NULL,
                   f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 108.00617776116044
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1394290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                   nval1, nval2, nval3, nval4, nval5, nval6,
                   falta, cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                   nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   1394290, NULL, NULL, NULL, NULL, NULL,
                   108.00617776116044, NULL, NULL, NULL, NULL, NULL,
                   f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 108.00617776116044
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1394290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1404290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1404290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1404290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 78.5149171874864,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 78.5149171874864
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1404290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 78.5149171874864,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 78.5149171874864
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1404290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 78.5149171874864,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 78.5149171874864
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1404290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1404290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1404290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1404290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1404290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1404290;
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
                   1404290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1404290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 74.6609612166752
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 74.6609612166752
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 74.6609612166752
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 80.7103204847547
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 80.7103204847547
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 80.7103204847547
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 74.6609612166752
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 74.6609612166752
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 74.6609612166752
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1574290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 77.4450436847182
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 77.4450436847182
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 77.4450436847182
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1584290;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 221.576968819512
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 221.576968819512
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 221.576968819512
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 154.0377735518015
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 154.0377735518015
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 154.0377735518015
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 221.576968819512
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 221.576968819512
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 221.576968819512
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 210.890369136604
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 210.890369136604
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 210.890369136604
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 724720;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 148.874456394289
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4620;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 148.874456394289
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4620;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 148.874456394289
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4620;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 160.9369192650181
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4620;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 160.9369192650181
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4620;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 160.9369192650181
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4620;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 148.874456394289
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4620;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 148.874456394289
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4620;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 148.874456394289
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4620;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 143.9270818222337
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4620;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 143.9270818222337
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4620;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 143.9270818222337
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4620;
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
                   4620, NULL, NULL, NULL, NULL, NULL, 404.003862007847,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 404.003862007847
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 5
            AND ccla3 = 4620;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 5,
                   4620, NULL, NULL, NULL, NULL, NULL, 404.003862007847,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 404.003862007847
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 5
            AND ccla3 = 4620;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                   nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                   fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                   nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 5,
                   4620, NULL, NULL, NULL, NULL, NULL, 404.003862007847,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 404.003862007847
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 5
            AND ccla3 = 4620;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 144.923415336003,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 144.923415336003
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4630;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 144.923415336003,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 144.923415336003
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4630;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 144.923415336003,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 144.923415336003
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4630;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 164.768187066609,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 164.768187066609
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4630;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 164.768187066609,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 164.768187066609
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4630;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 164.768187066609,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 164.768187066609
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4630;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 144.923415336003,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 144.923415336003
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4630;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 144.923415336003,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 144.923415336003
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4630;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 144.923415336003,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 144.923415336003
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4630;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 136.784155543007,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 136.784155543007
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4630;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 136.784155543007,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 136.784155543007
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4630;
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
                   4630, NULL, NULL, NULL, NULL, NULL, 136.784155543007,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 136.784155543007
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4630;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 859.931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 859.931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4660;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 859.931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 859.931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4660;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 859.931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 859.931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4660;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 937.709099709186,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 937.709099709186
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4660;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 937.709099709186,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 937.709099709186
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4660;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 937.709099709186,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 937.709099709186
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4660;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 859.931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 859.931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4660;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 859.931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 859.931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4660;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 859.931250207498,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 859.931250207498
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4660;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 828.030952646579,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 828.030952646579
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4660;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 828.030952646579,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 828.030952646579
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4660;
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
                   4660, NULL, NULL, NULL, NULL, NULL, 828.030952646579,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 828.030952646579
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4660;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4650;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4650;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4650;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 651.208748209546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4650;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 651.208748209546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4650;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 651.208748209546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4650;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4650;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4650;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4650;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4650;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4650;
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
                   4650, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4650;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4670;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4670;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4670;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 116.7089451778814,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 116.7089451778814
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4670;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 116.7089451778814,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 116.7089451778814
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4670;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 116.7089451778814,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 116.7089451778814
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4670;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4670;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4670;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4670;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 104.37367621249543,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 104.37367621249543
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4670;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 104.37367621249543,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 104.37367621249543
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4670;
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
                   4670, NULL, NULL, NULL, NULL, NULL, 104.37367621249543,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 104.37367621249543
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4670;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1674720;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1674720;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1674720;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 87.205121590084,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 87.205121590084
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1674720;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 87.205121590084,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 87.205121590084
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1674720;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 87.205121590084,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 87.205121590084
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1674720;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1674720;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1674720;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1674720;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 81.8168776905447,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 81.8168776905447
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1674720;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 81.8168776905447,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 81.8168776905447
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1674720;
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
                   1674720, NULL, NULL, NULL, NULL, NULL, 81.8168776905447,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 81.8168776905447
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1674720;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4690;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4690;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4690;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 651.208748209546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4690;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 651.208748209546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4690;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 651.208748209546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4690;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4690;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4690;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4690;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4690;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4690;
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
                   4690, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4690;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 190.337800912824,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 190.337800912824
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1594290;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 190.337800912824,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 190.337800912824
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1594290;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 190.337800912824,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 190.337800912824
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1594290;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 124.8911141954,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 124.8911141954
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1594290;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 124.8911141954,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 124.8911141954
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1594290;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 124.8911141954,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 124.8911141954
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1594290;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 190.337800912824,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 190.337800912824
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1594290;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 190.337800912824,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 190.337800912824
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1594290;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 190.337800912824,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 190.337800912824
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1594290;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 178.409285793974,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 178.409285793974
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1594290;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 178.409285793974,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 178.409285793974
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1594290;
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
                   1594290, NULL, NULL, NULL, NULL, NULL, 178.409285793974,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 178.409285793974
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
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
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4700;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4700;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4700;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4700;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4700;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4700;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4700;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4700;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   4700, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4700;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 111.5891330633549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4710;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 111.5891330633549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4710;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 111.5891330633549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4710;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 120.6305751411592
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4710;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 120.6305751411592
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4710;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 120.6305751411592
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4710;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 111.5891330633549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4710;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 111.5891330633549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4710;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 111.5891330633549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4710;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 107.88081900595077
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4710;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 107.88081900595077
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4710;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 107.88081900595077
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4710;
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
                   4730, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4730;
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
                   4730, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4730;
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
                   4730, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4730;
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
                   4730, NULL, NULL, NULL, NULL, NULL, 151.3121478733385,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 151.3121478733385
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4730;
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
                   4730, NULL, NULL, NULL, NULL, NULL, 151.3121478733385,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 151.3121478733385
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4730;
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
                   4730, NULL, NULL, NULL, NULL, NULL, 151.3121478733385,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 151.3121478733385
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4730;
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
                   4730, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4730;
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
                   4730, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4730;
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
                   4730, NULL, NULL, NULL, NULL, NULL, 107.9614351328313,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.9614351328313
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4730;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   4730, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4730;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   4730, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4730;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   4730, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4730;
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
                   1614290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1614290;
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
                   1614290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1614290;
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
                   1614290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1614290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                   nval1, nval2, nval3, nval4, nval5, nval6,
                   falta, cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                   nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   1614290, NULL, NULL, NULL, NULL, NULL,
                   103.07009243237286, NULL, NULL, NULL, NULL, NULL,
                   f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 103.07009243237286
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1614290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                   nval1, nval2, nval3, nval4, nval5, nval6,
                   falta, cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                   nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   1614290, NULL, NULL, NULL, NULL, NULL,
                   103.07009243237286, NULL, NULL, NULL, NULL, NULL,
                   f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 103.07009243237286
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1614290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8,
                   nval1, nval2, nval3, nval4, nval5, nval6,
                   falta, cusualt, fmodifi, cusumod, ccla9, ccla10, nval7,
                   nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   1614290, NULL, NULL, NULL, NULL, NULL,
                   103.07009243237286, NULL, NULL, NULL, NULL, NULL,
                   f_sysdate, f_user, NULL, NULL, NULL, NULL, NULL,
                   NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 103.07009243237286
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1614290;
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
                   1614290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1614290;
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
                   1614290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1614290;
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
                   1614290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1614290;
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
                   1614290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1614290;
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
                   1614290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1614290;
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
                   1614290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
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
                   50, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   50, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   50, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   50, NULL, NULL, NULL, NULL, NULL, 428.034284196977, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 428.034284196977
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   50, NULL, NULL, NULL, NULL, NULL, 428.034284196977, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 428.034284196977
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   50, NULL, NULL, NULL, NULL, NULL, 428.034284196977, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 428.034284196977
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   50, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   50, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   50, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   50, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   50, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   50, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 50;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   4760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4760;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4760;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4760;
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
                   4760, NULL, NULL, NULL, NULL, NULL, 428.034284196977,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 428.034284196977
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4760;
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
                   4760, NULL, NULL, NULL, NULL, NULL, 428.034284196977,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 428.034284196977
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4760;
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
                   4760, NULL, NULL, NULL, NULL, NULL, 428.034284196977,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 428.034284196977
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4760;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   4760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4760;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   4760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4760;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   4760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4760;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   4760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4760;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   4760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4760;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   4760, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4760;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 40;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   40, NULL, NULL, NULL, NULL, NULL, 594.904528675414, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 40;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   40, NULL, NULL, NULL, NULL, NULL, 594.904528675414, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 40;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   40, NULL, NULL, NULL, NULL, NULL, 323.003497700804, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 323.003497700804
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 40;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   40, NULL, NULL, NULL, NULL, NULL, 323.003497700804, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 323.003497700804
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 40;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   40, NULL, NULL, NULL, NULL, NULL, 323.003497700804, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 323.003497700804
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 40;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 40;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   40, NULL, NULL, NULL, NULL, NULL, 594.904528675414, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 40;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   40, NULL, NULL, NULL, NULL, NULL, 594.904528675414, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 40;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 40;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   40, NULL, NULL, NULL, NULL, NULL, 571.811561094262, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 40;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   40, NULL, NULL, NULL, NULL, NULL, 571.811561094262, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 40;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4740;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4740;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4740;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 323.003497700804,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 323.003497700804
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4740;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 323.003497700804,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 323.003497700804
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4740;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 323.003497700804,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 323.003497700804
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4740;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4740;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4740;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4740;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4740;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4740;
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
                   4740, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4740;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 129.6801666578601,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 129.6801666578601
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 2054720;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 129.6801666578601,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 129.6801666578601
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 2054720;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 129.6801666578601,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 129.6801666578601
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 2054720;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 111.318021473575,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 111.318021473575
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 2054720;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 111.318021473575,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 111.318021473575
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 2054720;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 111.318021473575,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 111.318021473575
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 2054720;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 129.6801666578601,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 129.6801666578601
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 2054720;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 129.6801666578601,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 129.6801666578601
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 2054720;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 129.6801666578601,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 129.6801666578601
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 2054720;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 185.6061905293159,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 185.6061905293159
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 2054720;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 185.6061905293159,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 185.6061905293159
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 2054720;
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
                   2054720, NULL, NULL, NULL, NULL, NULL, 185.6061905293159,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 185.6061905293159
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 2054720;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 65.5954406690123,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 65.5954406690123
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1434290;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 65.5954406690123,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 65.5954406690123
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1434290;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 65.5954406690123,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 65.5954406690123
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1434290;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 72.639636979643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 72.639636979643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1434290;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 72.639636979643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 72.639636979643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1434290;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 72.639636979643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 72.639636979643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1434290;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 65.5954406690123,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 65.5954406690123
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1434290;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 65.5954406690123,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 65.5954406690123
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1434290;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 65.5954406690123,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 65.5954406690123
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1434290;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1434290;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1434290;
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
                   1434290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1434290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 0,
                   1644290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   1644290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
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
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   1644290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1644290;
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
                   1644290, NULL, NULL, NULL, NULL, NULL, 72.639636979643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 72.639636979643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1644290;
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
                   1644290, NULL, NULL, NULL, NULL, NULL, 72.639636979643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 72.639636979643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1644290;
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
                   1644290, NULL, NULL, NULL, NULL, NULL, 72.639636979643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 72.639636979643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1644290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   1644290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1644290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   1644290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1644290;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   1644290, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1644290;
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
                   1644290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1644290;
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
                   1644290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1644290;
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
                   1644290, NULL, NULL, NULL, NULL, NULL, 75.1705071643729,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 75.1705071643729
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1644290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1324290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1324290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1324290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 73.4091557330523,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 73.4091557330523
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1324290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 73.4091557330523,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 73.4091557330523
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1324290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 73.4091557330523,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 73.4091557330523
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1324290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1324290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1324290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 67.1951875145249,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 67.1951875145249
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1324290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 119.6671491560821,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 119.6671491560821
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1324290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 119.6671491560821,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 119.6671491560821
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1324290;
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
                   1324290, NULL, NULL, NULL, NULL, NULL, 119.6671491560821,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 119.6671491560821
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1324290;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 173.872885361934,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 173.872885361934
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4790;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 173.872885361934,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 173.872885361934
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4790;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 173.872885361934,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 173.872885361934
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4790;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 196.063270408436,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 196.063270408436
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4790;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 196.063270408436,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 196.063270408436
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4790;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 196.063270408436,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 196.063270408436
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4790;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 173.872885361934,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 173.872885361934
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4790;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 173.872885361934,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 173.872885361934
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4790;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 173.872885361934,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 173.872885361934
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4790;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 164.77158093516,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 164.77158093516
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4790;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 164.77158093516,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 164.77158093516
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4790;
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
                   4790, NULL, NULL, NULL, NULL, NULL, 164.77158093516,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 164.77158093516
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4790;
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
                   435530, NULL, NULL, NULL, NULL, NULL, 124.7264909180643,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 124.7264909180643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 124.7264909180643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 124.7264909180643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 114.1480009680105
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 114.1480009680105
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 114.1480009680105
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 111.3637143175895
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 111.3637143175895
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 111.3637143175895
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 124.7264909180643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 124.7264909180643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 124.7264909180643
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 435530;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 76.8948273187546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1870;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 76.8948273187546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1870;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 76.8948273187546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1870;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 83.1251842379231
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1870;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 83.1251842379231
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1870;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 83.1251842379231
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1870;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 76.8948273187546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1870;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 76.8948273187546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1870;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 76.8948273187546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1870;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 74.3394694513724
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1870;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 74.3394694513724
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1870;
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
         UPDATE sgt_subtabs_det
            SET nval1 = 74.3394694513724
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1870;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 94.94074918838132,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 94.94074918838132
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 1654290;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 94.94074918838132,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 94.94074918838132
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 1654290;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 94.94074918838132,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 94.94074918838132
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 1654290;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 90.46763008444174,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 90.46763008444174
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 1654290;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 90.46763008444174,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 90.46763008444174
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 1654290;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 90.46763008444174,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 90.46763008444174
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 1654290;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 94.94074918838132,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 94.94074918838132
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 1654290;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 94.94074918838132,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 94.94074918838132
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 1654290;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 94.94074918838132,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 94.94074918838132
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 1654290;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 91.87506431201137,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 91.87506431201137
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 1654290;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 91.87506431201137,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 91.87506431201137
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 1654290;
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
                   1654290, NULL, NULL, NULL, NULL, NULL, 91.87506431201137,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 91.87506431201137
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 1654290;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 2064720;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 2064720;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 2064720;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 651.208748209546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 2064720;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 651.208748209546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 2064720;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 651.208748209546,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 651.208748209546
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 2064720;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 2064720;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 2064720;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 594.904528675414,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 594.904528675414
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 2064720;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 2064720;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 2064720;
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
                   2064720, NULL, NULL, NULL, NULL, NULL, 571.811561094262,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 571.811561094262
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
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
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 4640;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 0,
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 4640;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 0,
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 4640;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 1,
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 4640;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 1,
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 4640;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 1,
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 4640;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 2,
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 4640;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 2,
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 4640;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 2,
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 4640;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80001, 3,
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 4640;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80002, 3,
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 4640;
   END;

   BEGIN
      INSERT INTO sgt_subtabs_det
                  (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                   ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1, nval2,
                   nval3, nval4, nval5, nval6, falta, cusualt, fmodifi,
                   cusumod, ccla9, ccla10, nval7, nval8, nval9, nval10
                  )
           VALUES (sdetalle_conf.NEXTVAL, 24, 8000047, 1, 80003, 3,
                   4640, NULL, NULL, NULL, NULL, NULL, 200, NULL,
                   NULL, NULL, NULL, NULL, f_sysdate, f_user, NULL,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 200
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 4640;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 135.3876261525094,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.3876261525094
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 2084720;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 135.3876261525094,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.3876261525094
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 2084720;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 135.3876261525094,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.3876261525094
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 2084720;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 124.8715805464753,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 124.8715805464753
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 2084720;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 124.8715805464753,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 124.8715805464753
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 2084720;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 124.8715805464753,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 124.8715805464753
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 2084720;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 135.3876261525094,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.3876261525094
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 2084720;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 135.3876261525094,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.3876261525094
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 2084720;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 135.3876261525094,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 135.3876261525094
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 2084720;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 119.5160882850886,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 119.5160882850886
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 2084720;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 119.5160882850886,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 119.5160882850886
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 2084720;
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
                   2084720, NULL, NULL, NULL, NULL, NULL, 119.5160882850886,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 119.5160882850886
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 2084720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 70.0390795391863,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 70.0390795391863
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 2104720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 70.0390795391863,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 70.0390795391863
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 2104720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 70.0390795391863,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 70.0390795391863
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 2104720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 77.4898706661553,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 77.4898706661553
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 2104720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 77.4898706661553,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 77.4898706661553
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 2104720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 77.4898706661553,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 77.4898706661553
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 2104720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 70.0390795391863,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 70.0390795391863
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 2104720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 70.0390795391863,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 70.0390795391863
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 2104720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 70.0390795391863,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 70.0390795391863
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 2104720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 111.4105155873087,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 111.4105155873087
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 2104720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 111.4105155873087,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 111.4105155873087
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 2104720;
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
                   2104720, NULL, NULL, NULL, NULL, NULL, 111.4105155873087,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 111.4105155873087
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 2104720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 196.539678457549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 196.539678457549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 0
            AND ccla3 = 2074720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 196.539678457549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 196.539678457549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 0
            AND ccla3 = 2074720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 196.539678457549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 196.539678457549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 0
            AND ccla3 = 2074720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 107.541819941837,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.541819941837
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 1
            AND ccla3 = 2074720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 107.541819941837,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.541819941837
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 1
            AND ccla3 = 2074720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 107.541819941837,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 107.541819941837
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 1
            AND ccla3 = 2074720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 196.539678457549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 196.539678457549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 2
            AND ccla3 = 2074720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 196.539678457549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 196.539678457549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 2
            AND ccla3 = 2074720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 196.539678457549,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 196.539678457549
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 2
            AND ccla3 = 2074720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 137.48647458301,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 137.48647458301
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80001
            AND ccla2 = 3
            AND ccla3 = 2074720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 137.48647458301,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 137.48647458301
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80002
            AND ccla2 = 3
            AND ccla3 = 2074720;
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
                   2074720, NULL, NULL, NULL, NULL, NULL, 137.48647458301,
                   NULL, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                   NULL
                  );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         UPDATE sgt_subtabs_det
            SET nval1 = 137.48647458301
          WHERE csubtabla = 8000047
            AND cversubt = 1
            AND ccla1 = 80003
            AND ccla2 = 3
            AND ccla3 = 2074720;
   END;
END;
/
commit;