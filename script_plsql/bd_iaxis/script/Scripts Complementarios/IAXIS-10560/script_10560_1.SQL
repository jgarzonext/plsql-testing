/* Formatted on 2020/02/18 16:39 (Formatter Plus v4.8.8) */
DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc
        FROM productos
       WHERE cactivo = 1;
BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
         INSERT INTO pds_supl_config
                     (cconfig, cmotmov,
                      sproduc, cmodo, ctipfec, tfecrec, suplcolec, cusualt,
                      falta, cusumod, fmodifi
                     )
              VALUES ('conf_212_' || i.sproduc || '_suplemento_tf', 212,
                      i.sproduc, 'SUPLEMENTO', 1, 'F_SYSDATE', NULL, f_user,
                      f_sysdate, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO pds_supl_validacio
                     (cconfig, nselect,
                      tselect
                     )
              VALUES ('conf_212_' || i.sproduc || '_suplemento_tf', 1,
                      'BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT cagente FROM seguros WHERE sseguro = :pssegpol MINUS SELECT cagente FROM estseguros WHERE sseguro = :psseguro ); END;'
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