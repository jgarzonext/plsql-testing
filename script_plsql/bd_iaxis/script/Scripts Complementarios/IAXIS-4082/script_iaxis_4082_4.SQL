/* Formatted on 2019/10/01 14:41 (Formatter Plus v4.8.8) */
DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc
        FROM productos
       WHERE cramo = 802 AND cactivo = 1;
BEGIN
   FOR i IN c_prod
   LOOP
    BEGIN
         INSERT INTO convcomespprod
                     (idconvcomesp, sproduc
                     )
              VALUES (1, i.sproduc
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
       BEGIN
         INSERT INTO convcomespprod
                     (idconvcomesp, sproduc
                     )
              VALUES (2, i.sproduc
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
       BEGIN
         INSERT INTO convcomespprod
                     (idconvcomesp, sproduc
                     )
              VALUES (3, i.sproduc
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
      BEGIN
         INSERT INTO convcomespprod
                     (idconvcomesp, sproduc
                     )
              VALUES (4, i.sproduc
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