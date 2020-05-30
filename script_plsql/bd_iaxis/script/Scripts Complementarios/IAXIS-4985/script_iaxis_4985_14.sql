DECLARE
   CURSOR c_prod
   IS
      SELECT DISTINCT a.sproduc, b.cgarant, c.cactivi
                 FROM v_productos a, garanpro b, activiprod c
                WHERE a.sproduc = b.sproduc
                  AND a.cramo = b.cramo
                  AND a.cmodali = b.cmodali
                  AND a.ccolect = b.ccolect
                  AND a.ctipseg = b.ctipseg
                  AND a.sproduc IN (80002, 80001, 80003,80007,80009, 80010, 80011,80012)
                  AND a.sproduc = c.sproduc
             ORDER BY a.sproduc, b.cgarant, c.cactivi;
BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
         INSERT INTO detgaranformula
                     (sproduc, cactivi, cgarant, ccampo, cconcep,
                      norden, clave, clave2, falta, cusualt, fmodifi,
                      cusumod, ndecvis
                     )
              VALUES (i.sproduc, i.cactivi, i.cgarant, 'TASA', 'TASASUPL',
                      26, 999792, NULL, f_sysdate, f_user, f_sysdate,
                      f_user, NULL
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
 
            begin
            INSERT INTO clasecontrato
            (ccodcontrato, cclacontrato
            )
     VALUES (166,4290);
     EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (166,4290,1,'Contratos para obras de Dragado');
         EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (166,4290,2,'Contratos para obras de Dragado');
         EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (166,4290,8,'Contratos para obras de Dragado');
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
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,0,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 0
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,1,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 1
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,2,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 2
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,3,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 3
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,0,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 0
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,1,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 1
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,2,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 2
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,3,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 3
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,0,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 0
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,1,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 1
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,2,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 2
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,3,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 3
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,0,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 0
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,1,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 1
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,2,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 2
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,3,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 3
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,0,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 0
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,1,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 1
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,2,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 2
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,3,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 3
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,0,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 0
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,1,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 1
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,2,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 2
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,3,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 3
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,10,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80007,0,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80007
         and ccla2 = 0
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,11,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80008,0,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80008
         and ccla2 = 0
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,12,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80009,0,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80009
         and ccla2 = 0
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,13,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80010,0,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80010
         and ccla2 = 0
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,14,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80011,0,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80011
         and ccla2 = 0
         and ccla3 = 1664290;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,15,1,0, 0,
                         NULL ,1,166,4290,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80012,1,1664290, NULL, NULL, NULL, NULL, NULL,125, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =125
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80012
         and ccla2 = 1
         and ccla3 = 1664290;
   END;
 
            begin
            INSERT INTO clasecontrato
            (ccodcontrato, cclacontrato
            )
     VALUES (212,4720);
     EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (212,4720,1,'Suministro de Equipos Mecánicos');
         EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (212,4720,2,'Suministro de Equipos Mecánicos');
         EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (212,4720,8,'Suministro de Equipos Mecánicos');
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
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,0,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 0
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,1,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 1
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,2,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 2
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,3,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 3
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,0,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 0
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,1,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 1
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,2,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 2
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,3,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 3
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,0,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 0
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,1,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 1
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,2,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 2
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,3,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 3
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,0,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 0
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,1,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 1
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,2,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 2
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,3,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 3
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,0,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 0
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,1,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 1
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,2,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 2
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,3,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 3
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,0,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 0
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,1,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 1
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,2,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 2
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,3,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 3
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,10,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80007,0,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80007
         and ccla2 = 0
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,11,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80008,0,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80008
         and ccla2 = 0
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,12,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80009,0,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80009
         and ccla2 = 0
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,13,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80010,0,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80010
         and ccla2 = 0
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,14,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80011,0,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80011
         and ccla2 = 0
         and ccla3 = 2124720;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,15,1,0, 0,
                         NULL ,2,212,4720,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80012,1,2124720, NULL, NULL, NULL, NULL, NULL,87.5, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =87.5
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80012
         and ccla2 = 1
         and ccla3 = 2124720;
   END;
 
            begin
            INSERT INTO clasecontrato
            (ccodcontrato, cclacontrato
            )
     VALUES (483,0);
     EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (483,0,1,'Convenio de Compensación');
         EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (483,0,2,'Convenio de Compensación');
         EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (483,0,8,'Convenio de Compensación');
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
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,0,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 0
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,1,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 1
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,2,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 2
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,3,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 3
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,0,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 0
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,1,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 1
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,2,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 2
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,3,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 3
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,0,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 0
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,1,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 1
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,2,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 2
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,3,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 3
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,0,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 0
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,1,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 1
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,2,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 2
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,3,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 3
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,0,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 0
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,1,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 1
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,2,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 2
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,3,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 3
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,0,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 0
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,1,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 1
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,2,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 2
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,3,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 3
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,10,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80007,0,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80007
         and ccla2 = 0
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,11,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80008,0,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80008
         and ccla2 = 0
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,12,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80009,0,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80009
         and ccla2 = 0
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,13,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80010,0,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80010
         and ccla2 = 0
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,14,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80011,0,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80011
         and ccla2 = 0
         and ccla3 = 4830;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,15,1,0, 0,
                         NULL ,3,483,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80012,1,4830, NULL, NULL, NULL, NULL, NULL,150, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =150
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80012
         and ccla2 = 1
         and ccla3 = 4830;
   END;
 
            begin
            INSERT INTO clasecontrato
            (ccodcontrato, cclacontrato
            )
     VALUES (484,0);
     EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (484,0,1,'Polizas para Candidatos');
         EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (484,0,2,'Polizas para Candidatos');
         EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         NULL;
   END;
 
            begin
            INSERT INTO detclasecontrato
            (ccodcontrato, cclacontrato, cidioma, tdescripcion
            )
     VALUES (484,0,8,'Polizas para Candidatos');
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
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,0,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 0
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,1,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 1
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,2,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 2
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,6,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80001,3,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80001
         and ccla2 = 3
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,0,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 0
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,1,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 1
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,2,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 2
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80002,3,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80002
         and ccla2 = 3
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,0,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 0
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,1,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 1
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,2,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 2
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,7,2,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80003,3,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80003
         and ccla2 = 3
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,0,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 0
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,1,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 1
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,2,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 2
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,8,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80004,3,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80004
         and ccla2 = 3
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,0,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 0
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,1,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 1
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,2,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 2
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80005,3,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80005
         and ccla2 = 3
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,0,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 0
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,1,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 1
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,2,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 2
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,9,2,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80006,3,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80006
         and ccla2 = 3
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,10,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80007,0,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80007
         and ccla2 = 0
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,11,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80008,0,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80008
         and ccla2 = 0
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,12,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80009,0,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80009
         and ccla2 = 0
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,13,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80010,0,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80010
         and ccla2 = 0
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,14,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80011,0,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80011
         and ccla2 = 0
         and ccla3 = 4840;
   END;
 BEGIN
            INSERT INTO sectoresprod
                        (cempres, cramo, cmodali, ctipseg, ccolect, cactivi,
                         cgarant, csector, ccodcontrato, cclacontrato,
                         precarg, iextrap, creten, ffecini, ffecfin,
                         cgruries, cusualt, falta, cusumod, fmodifi
                        )
                 VALUES (24,801,15,1,0, 0,
                         NULL ,3,484,0,
                         0, 0, 'N', f_sysdate, NULL,
                         NULL, NULL, NULL, NULL, NULL
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
                nval4, nval5, nval6, falta, cusualt, fmodifi, cusumod, ccla9,
                ccla10, nval7, nval8, nval9, nval10
               )
        VALUES (SDETALLE_CONF.NEXTVAL, 24, 8000047, 1, 80012,1,4840, NULL, NULL, NULL, NULL, NULL,2400, NULL, NULL,NULL, NULL, NULL, f_sysdate, f_user, NULL, NULL, NULL,
                NULL, NULL, NULL, NULL, NULL
               );
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         update sgt_subtabs_det
         set nval1 =2400
         where csubtabla = 8000047
         and cversubt = 1
         and ccla1 = 80012
         and ccla2 = 1
         and ccla3 = 4840;
   END;
END;
/
commit;