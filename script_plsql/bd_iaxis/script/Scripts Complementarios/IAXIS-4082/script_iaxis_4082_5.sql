/* Formatted on 2019/10/18 16:00 (Formatter Plus v4.8.8) */

DECLARE
   CURSOR c_gar
   IS
      SELECT sproduc, cgarant
        FROM garanpro
       WHERE sproduc IN (SELECT sproduc
                           FROM productos
                          WHERE cramo = 801 AND cactivo = 1);
BEGIN
   FOR i IN c_gar
   LOOP
      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.NEXTVAL, 24, 9000007, 1, i.sproduc, 1,
                      8999990681, i.cgarant, NULL, NULL, NULL, NULL, 0.15,
                      30000, NULL, NULL, NULL, NULL, f_sysdate, f_user,
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