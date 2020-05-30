/* Formatted on 2020/02/18 09:18 (Formatter Plus v4.8.8) */
DELETE      cfg_avisos
      WHERE cform = 'AXISCTR004'
        AND cmodo LIKE 'SUPLEMENTO%'
        AND cidrel = 802001;
COMMIT ;
/

DECLARE
   CURSOR c_mod
   IS
      SELECT cmodo
        FROM cfg_cod_modo
       WHERE cmodo LIKE 'SUPLEMENTO%';
BEGIN
   FOR i IN c_mod
   LOOP
      INSERT INTO cfg_avisos
                  (cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel,
                   cusuari, falta, cusumod, fmodifi
                  )
           VALUES (24, 'AXISCTR004', i.cmodo, 'CFG_FO', 802, 0, 802001,
                   f_user, f_sysdate, NULL, NULL
                  );

      INSERT INTO cfg_avisos
                  (cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel,
                   cusuari, falta, cusumod, fmodifi
                  )
           VALUES (24, 'AXISCTR004', i.cmodo, 'CFG_CENTRAL', 802, 0, 802001,
                   f_user, f_sysdate, NULL, NULL
                  );

      INSERT INTO cfg_avisos
                  (cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel,
                   cusuari, falta, cusumod, fmodifi
                  )
           VALUES (24, 'AXISCTR004', i.cmodo, 'CFG_FO', 801, 0, 802001,
                   f_user, f_sysdate, NULL, NULL
                  );

      INSERT INTO cfg_avisos
                  (cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel,
                   cusuari, falta, cusumod, fmodifi
                  )
           VALUES (24, 'AXISCTR004', i.cmodo, 'CFG_CENTRAL', 801, 0, 802001,
                   f_user, f_sysdate, NULL, NULL
                  );
   END LOOP;

   COMMIT;
END;
/
DELETE      cfg_avisos
      WHERE cform = 'AXISCTR207'
        AND cmodo LIKE 'SUPLEMENTO%'
        AND cidrel = 802001;
COMMIT ;
/

DECLARE
   CURSOR c_mod
   IS
      SELECT cmodo
        FROM cfg_cod_modo
       WHERE cmodo LIKE 'SUPLEMENTO%';
BEGIN
   FOR i IN c_mod
   LOOP
      INSERT INTO cfg_avisos
                  (cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel,
                   cusuari, falta, cusumod, fmodifi
                  )
           VALUES (24, 'AXISCTR207', i.cmodo, 'CFG_FO', 802, 0, 802001,
                   f_user, f_sysdate, NULL, NULL
                  );

      INSERT INTO cfg_avisos
                  (cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel,
                   cusuari, falta, cusumod, fmodifi
                  )
           VALUES (24, 'AXISCTR207', i.cmodo, 'CFG_CENTRAL', 802, 0, 802001,
                   f_user, f_sysdate, NULL, NULL
                  );

      INSERT INTO cfg_avisos
                  (cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel,
                   cusuari, falta, cusumod, fmodifi
                  )
           VALUES (24, 'AXISCTR207', i.cmodo, 'CFG_FO', 801, 0, 802001,
                   f_user, f_sysdate, NULL, NULL
                  );

      INSERT INTO cfg_avisos
                  (cempres, cform, cmodo, ccfgavis, cramo, sproduc, cidrel,
                   cusuari, falta, cusumod, fmodifi
                  )
           VALUES (24, 'AXISCTR207', i.cmodo, 'CFG_CENTRAL', 801, 0, 802001,
                   f_user, f_sysdate, NULL, NULL
                  );
   END LOOP;

   COMMIT;
END;
/