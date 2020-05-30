DECLARE
   CURSOR c0
   IS
      SELECT sproduc
        FROM productos
       WHERE cramo = 801 AND cactivo = 1;
BEGIN
   DELETE FROM prod_plant_cab
         WHERE ccodplan = 'SU-OD-01-05';

   COMMIT;

   FOR corec IN c0
   LOOP
      INSERT INTO prod_plant_cab
                  (sproduc, ctipo, ccodplan, imp_dest, fdesde, fhasta,
                   cgarant, cduplica, norden, clave, nrespue, tcopias,
                   ccategoria, cdiferido, cusualt, falta, cusumod, fmodifi
                  )
           VALUES (corec.sproduc, 0, 'SU-OD-01-05', 1, f_sysdate, NULL,
                   NULL, 1, NULL, NULL, NULL, 'pac_impresion_conf.f_clausula_ecopetrol_gb',
                   NULL, NULL, f_user, f_sysdate, NULL, NULL
                  );

      INSERT INTO prod_plant_cab
                  (sproduc, ctipo, ccodplan, imp_dest, fdesde, fhasta,
                   cgarant, cduplica, norden, clave, nrespue, tcopias,
                   ccategoria, cdiferido, cusualt, falta, cusumod, fmodifi
                  )
           VALUES (corec.sproduc, 8, 'SU-OD-01-05', 1, f_sysdate, NULL,
                   NULL, 1, NULL, NULL, NULL, 'pac_impresion_conf.f_clausula_ecopetrol_gb',
                   NULL, NULL, f_user, f_sysdate, NULL, NULL
                  );

      INSERT INTO prod_plant_cab
                  (sproduc, ctipo, ccodplan, imp_dest, fdesde, fhasta,
                   cgarant, cduplica, norden, clave, nrespue, tcopias,
                   ccategoria, cdiferido, cusualt, falta, cusumod, fmodifi
                  )
           VALUES (corec.sproduc, 21, 'SU-OD-01-05', 1, f_sysdate, NULL,
                   NULL, 1, NULL, NULL, NULL, 'pac_impresion_conf.f_clausula_ecopetrol_gb',
                   NULL, NULL, f_user, f_sysdate, NULL, NULL
                  );
   END LOOP;

   COMMIT;
END;
/
