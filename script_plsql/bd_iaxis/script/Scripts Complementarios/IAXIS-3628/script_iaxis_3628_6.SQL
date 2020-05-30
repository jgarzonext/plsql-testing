/* Formatted on 2019/07/26 15:15 (Formatter Plus v4.8.8) */
BEGIN
   DELETE      sgt_subtabs_det
         WHERE csubtabla LIKE '9000003'
           AND ccla3 IN (7007, 7008, 7011, 7014)
           AND ccla2 = 0
           AND nval1 <> 0.000992;

   COMMIT;
END;
/

BEGIN
   DELETE      sgt_subtabs_det
         WHERE csubtabla LIKE '9000003'
           AND ccla3 IN (7007, 7008, 7011, 7014)
           AND ccla2 = 2
           AND nval1 <> 0.000992;

   COMMIT;
END;
/

BEGIN
   DELETE      sgt_subtabs_det
         WHERE csubtabla LIKE '9000003'
           AND ccla3 IN (7007, 7008, 7011, 7014)
           AND ccla2 = 3
           AND nval1 <> 0.001004;

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
       WHERE csubtabla = v_csubtabla AND ccla3 = 7007;

   CURSOR c_prod
   IS
      SELECT sproduc, cdivisa
        FROM productos
       WHERE cramo = 801 AND cactivo = 1;
BEGIN
   DELETE      sgt_subtabs_det
         WHERE csubtabla = v_csubtabla AND ccla3 IN (7008, 7011, 7014);

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
                         j.sproduc, i.ccla2, 7008, j.cdivisa, NULL, NULL,
                         NULL, NULL, i.nval1, NULL, NULL, NULL, NULL,
                         NULL, f_sysdate, f_user, NULL, NULL, NULL, NULL,
                         NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               NULL;
         END;

         BEGIN
            INSERT INTO sgt_subtabs_det
                        (sdetalle, cempres, csubtabla, cversubt,
                         ccla1, ccla2, ccla3, ccla4, ccla5, ccla6,
                         ccla7, ccla8, nval1, nval2, nval3, nval4, nval5,
                         nval6, falta, cusualt, ccla9, ccla10, nval7, nval8,
                         nval9, nval10
                        )
                 VALUES (sdetalle_conf.NEXTVAL, v_cempres, v_csubtabla, 1,
                         j.sproduc, i.ccla2, 7011, j.cdivisa, NULL, NULL,
                         NULL, NULL, i.nval1, NULL, NULL, NULL, NULL,
                         NULL, f_sysdate, f_user, NULL, NULL, NULL, NULL,
                         NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               NULL;
         END;

         BEGIN
            INSERT INTO sgt_subtabs_det
                        (sdetalle, cempres, csubtabla, cversubt,
                         ccla1, ccla2, ccla3, ccla4, ccla5, ccla6,
                         ccla7, ccla8, nval1, nval2, nval3, nval4, nval5,
                         nval6, falta, cusualt, ccla9, ccla10, nval7, nval8,
                         nval9, nval10
                        )
                 VALUES (sdetalle_conf.NEXTVAL, v_cempres, v_csubtabla, 1,
                         j.sproduc, i.ccla2, 7014, j.cdivisa, NULL, NULL,
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

DECLARE
   v_csubtabla   NUMBER := 9000003;
   v_cempres     NUMBER := 24;

   CURSOR c_con
   IS
      SELECT *
        FROM sgt_subtabs_det
       WHERE csubtabla = v_csubtabla AND ccla3 = 7007;

   CURSOR c_prod
   IS
      SELECT sproduc, cdivisa
        FROM productos
       WHERE cramo = 801 AND cactivo = 1;
BEGIN
   DELETE      sgt_subtabs_det
         WHERE csubtabla = v_csubtabla AND ccla3 IN (7012, 7013);

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
                         j.sproduc, i.ccla2, 7012, j.cdivisa, NULL, NULL,
                         NULL, NULL, i.nval1, NULL, NULL, NULL, NULL,
                         NULL, f_sysdate, f_user, NULL, NULL, NULL, NULL,
                         NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               NULL;
         END;

         BEGIN
            INSERT INTO sgt_subtabs_det
                        (sdetalle, cempres, csubtabla, cversubt,
                         ccla1, ccla2, ccla3, ccla4, ccla5, ccla6,
                         ccla7, ccla8, nval1, nval2, nval3, nval4, nval5,
                         nval6, falta, cusualt, ccla9, ccla10, nval7, nval8,
                         nval9, nval10
                        )
                 VALUES (sdetalle_conf.NEXTVAL, v_cempres, v_csubtabla, 1,
                         j.sproduc, i.ccla2, 7013, j.cdivisa, NULL, NULL,
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

DECLARE
   v_sproduc   NUMBER;

   CURSOR c_prod
   IS
      SELECT a.sproduc, b.cgarant
        FROM v_productos a, garanpro b
       WHERE a.sproduc = b.sproduc
         AND a.cramo = b.cramo
         AND a.cmodali = b.cmodali
         AND a.ccolect = b.ccolect
         AND a.ctipseg = b.ctipseg
         AND a.cramo = 801
         AND a.sproduc = 80011
         AND a.cactivo = 1;

   CURSOR c_acti
   IS
      SELECT cactivi
        FROM activiprod
       WHERE sproduc = v_sproduc;
BEGIN
   FOR i IN c_prod
   LOOP
      v_sproduc := i.sproduc;

      DELETE      detgaranformula
            WHERE cconcep = 'TASATEC'
              AND sproduc = v_sproduc
              AND clave = 750124;

      FOR j IN c_acti
      LOOP
         BEGIN
            INSERT INTO detgaranformula
                        (sproduc, cactivi, cgarant, ccampo, cconcep,
                         norden, clave, clave2, falta, cusualt
                        )
                 VALUES (v_sproduc, j.cactivi, i.cgarant, 'TASA', 'TASATEC',
                         23, 750125, NULL, f_sysdate, f_user
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
   DELETE      sgt_trans_formula
         WHERE clave = 750125;

   DELETE      sgt_formulas
         WHERE clave = 750125;

   INSERT INTO sgt_formulas
               (clave, codigo, descripcion,
                formula, cramo,
                cutili, crastro
               )
        VALUES (750125, 'TASATEC4', 'Tasa Técnica',
                '(CAPFINAN*CONTGARA/1000000)*(TASAREF)*(TASAPURA)', NULL,
                NULL, NULL
               );

   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750125, 'TASASUPL'
               );

   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750125, 'TASAPURA'
               );

   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750125, 'FACSUSCR'
               );

   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (750125, 'RECTARIF'
               );

   COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

DECLARE
   v_csubtabla   NUMBER := 9000003;
   v_cempres     NUMBER := 24;

   CURSOR c_con
   IS
      SELECT *
        FROM sgt_subtabs_det
       WHERE csubtabla = v_csubtabla
         AND ccla1 = 80001
         AND ccla2 = 0
         AND ccla3 = 7001;

   CURSOR c_prod
   IS
      SELECT sproduc, cdivisa
        FROM productos
       WHERE sproduc = 80011;
BEGIN
   DELETE      sgt_subtabs_det
         WHERE csubtabla = v_csubtabla AND ccla1 IN (80011);

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
                         j.sproduc, i.ccla2, 7017, j.cdivisa, NULL, NULL,
                         NULL, NULL, i.nval1, NULL, NULL, NULL, NULL,
                         NULL, f_sysdate, f_user, NULL, NULL, NULL, NULL,
                         NULL, NULL
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               NULL;
         END;

         BEGIN
            INSERT INTO sgt_subtabs_det
                        (sdetalle, cempres, csubtabla, cversubt,
                         ccla1, ccla2, ccla3, ccla4, ccla5, ccla6,
                         ccla7, ccla8, nval1, nval2, nval3, nval4, nval5,
                         nval6, falta, cusualt, ccla9, ccla10, nval7, nval8,
                         nval9, nval10
                        )
                 VALUES (sdetalle_conf.NEXTVAL, v_cempres, v_csubtabla, 1,
                         j.sproduc, i.ccla2, 7018, j.cdivisa, NULL, NULL,
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
   UPDATE garanformula
      SET clave = 750058
    WHERE sproduc = 80011 AND ccampo = 'IPRITAR';

   COMMIT;
END;
/

BEGIN
   UPDATE sgt_subtabs_det
      SET nval1 = 0.000624
    WHERE csubtabla LIKE '9000003'
      AND ccla2 = 1
      AND ccla3 IN (7012, 7013, 7014)
      AND ccla4 <> 8;

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
       WHERE csubtabla = v_csubtabla AND ccla3 = 7010;

   CURSOR c_prod
   IS
      SELECT sproduc, cdivisa
        FROM productos
       WHERE cramo = 801 AND cactivo = 1;
BEGIN
   DELETE      sgt_subtabs_det
         WHERE csubtabla = v_csubtabla AND ccla3 IN (7009);

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
                         j.sproduc, i.ccla2, 7009, j.cdivisa, NULL, NULL,
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

BEGIN
   UPDATE sgt_formulas
      SET formula =
             '(CAPFINAN*CONTGARA/10000)*(TASAREF)*(TASAPURA)/(1-(RECTARIF/100))'
    WHERE clave = 750125;

   COMMIT;
END;
/

BEGIN
   UPDATE parproductos
      SET cvalpar = 365
    WHERE cparpro = 'DIASDESPU_SUPLEM'
      AND cvalpar = 100
      AND sproduc IN (SELECT sproduc
                        FROM productos
                       WHERE cramo = 801 AND cactivo = 1);

   COMMIT;
END;
/

BEGIN
   UPDATE sgt_subtabs_det
      SET nval1 = 0.0010836
    WHERE csubtabla = 9000003 AND ccla1 IN (80011) AND nval1 = 0.001084;

   COMMIT;
END;
/

BEGIN
   UPDATE sgt_subtabs_det
      SET nval1 = 0.0010836
    WHERE csubtabla = 9000003 AND nval1 = 0.001084;

   COMMIT;
END;
/

BEGIN
   UPDATE detgaranformula
      SET clave = 750122
    WHERE sproduc IN (80008) AND cconcep = 'TASATEC';

   COMMIT;
END;
/

--89907040

BEGIN
   INSERT INTO axis_codliterales
               (slitera, clitera
               )
        VALUES (89907040, 2
               );

   INSERT INTO axis_literales
               (cidioma, slitera,
                tlitera
               )
        VALUES (1, 89907040,
                'El valor del recargo no puede ser menor que cero'
               );

   INSERT INTO axis_literales
               (cidioma, slitera,
                tlitera
               )
        VALUES (2, 89907040,
                'El valor del recargo no puede ser menor que cero'
               );

   INSERT INTO axis_literales
               (cidioma, slitera,
                tlitera
               )
        VALUES (8, 89907040,
                'El valor del recargo no puede ser menor que cero'
               );

   COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   UPDATE pregunprogaran
      SET tvalfor = 'pac_propio_albval_conf.f_val_preg_recargo(6623)'
    WHERE cpregun = 6623;

   COMMIT;
END;
/
BEGIN
   UPDATE pregunprogaran
      SET tvalfor = 'pac_propio_albval_conf.f_val_preg_recargo(6549)'
    WHERE cpregun = 6549;

   COMMIT;
END;
/

BEGIN
   UPDATE pregunpro
      SET tvalfor = 'pac_propio_albval_conf.f_val_porcen_contragar()'
 WHERE cpregun = 2703;

   COMMIT;
END;
/     
      
BEGIN
   UPDATE pregunpro
      SET cresdef = 36.2
    WHERE cpregun = 571
    and cramo = 801;

   COMMIT;
END;
/
BEGIN
   UPDATE garanformula
      SET clave = 750058
    WHERE sproduc in (select sproduc from productos where cramo = 801 and cactivo = 1) AND ccampo = 'IPRITAR';

   COMMIT;
END;
/
begin
UPDATE detgaranformula
      SET norden = 20
    WHERE cconcep = 'TASASUPL';
    commit;
end;
/
begin
update garanformula 
set  clave = 850000
where sproduc in (80004,80005,80006)
 AND CCAMPO = 'IPRITAR';
 commit;
end;
/ 
BEGIN
   DELETE      detgaranformula
         WHERE sproduc IN (80004, 80005, 80006);

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
begin
UPDATE detgaranformula
      SET norden = 22
    WHERE cconcep = 'TASASUPL'
    and sproduc = 80007;
    commit;
end;
/
BEGIN
   DELETE      detgaranformula
         WHERE sproduc IN (80010);

   COMMIT;
END;
/ 
begin
update garanformula 
set  clave = 850000
where sproduc in (80010)
 AND CCAMPO = 'IPRITAR';
 commit;
end;
/ 
BEGIN
   DELETE      detgaranformula
         WHERE sproduc IN (80008);

   COMMIT;
END;
/ 
begin
update garanformula 
set  clave = 850000
where sproduc in (80008)
 AND CCAMPO = 'IPRITAR';
 commit;
end;
/

DECLARE
   CURSOR c_prod
   IS
      SELECT distinct a.sproduc, b.cgarant
        FROM productos a, garanpro b
       WHERE a.cramo = 801
         AND a.cactivo = 1
         AND a.cmodali = b.cmodali
         AND a.ccolect = b.ccolect
         AND a.cramo = b.cramo
         AND a.ctipseg = b.ctipseg
         and a.sproduc not in (80008,80009,80010,80011,80007,80012, 80004, 80005, 80006, 80010, 80008);
BEGIN
   FOR i IN c_prod
   LOOP
   dbms_output.put_line(i.sproduc||','||i.cgarant);
      BEGIN
         INSERT INTO detgaranformula
                     (sproduc, cactivi, cgarant, ccampo, cconcep, norden,
                      clave, clave2,
                      falta,
                      cusualt,
                      fmodifi,
                      cusumod, ndecvis
                     )
              VALUES (i.sproduc, 0, i.cgarant, 'TASA', 'TASASUPL', 20,
                      999792, NULL,
                      TO_DATE ('02/19/2018 10:05:10', 'MM/DD/YYYY HH24:MI:SS'),
                      'AXIS_CONF',
                      TO_DATE ('08/08/2019 11:20:07', 'MM/DD/YYYY HH24:MI:SS'),
                      'AXIS', NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO detgaranformula
                     (sproduc, cactivi, cgarant, ccampo, cconcep, norden,
                      clave, clave2,
                      falta,
                      cusualt,
                      fmodifi,
                      cusumod, ndecvis
                     )
              VALUES (i.sproduc, 2, i.cgarant, 'TASA', 'TASASUPL', 20,
                      999792, NULL,
                      TO_DATE ('02/19/2018 10:05:10', 'MM/DD/YYYY HH24:MI:SS'),
                      'AXIS_CONF',
                      TO_DATE ('08/08/2019 11:20:07', 'MM/DD/YYYY HH24:MI:SS'),
                      'AXIS', NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO detgaranformula
                     (sproduc, cactivi, cgarant, ccampo, cconcep, norden,
                      clave, clave2,
                      falta,
                      cusualt,
                      fmodifi,
                      cusumod, ndecvis
                     )
              VALUES (i.sproduc, 3, i.cgarant, 'TASA', 'TASASUPL', 20,
                      999792, NULL,
                      TO_DATE ('02/19/2018 10:05:10', 'MM/DD/YYYY HH24:MI:SS'),
                      'AXIS_CONF',
                      TO_DATE ('08/08/2019 11:20:07', 'MM/DD/YYYY HH24:MI:SS'),
                      'AXIS', NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      COMMIT;
   END LOOP;
END;
/

BEGIN
   DELETE      detgaranformula
         WHERE sproduc IN (80004, 80005, 80006, 80010, 80008);

   COMMIT;
END;
/