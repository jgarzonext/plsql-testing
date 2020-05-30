/* Formatted on 2019/05/14 16:32 (Formatter Plus v4.8.8) */
BEGIN
   DELETE      parproductos
         WHERE cparpro = 'NOTIFICA_VENCIMIENTO';

   DELETE      codparam
         WHERE cparam = 'NOTIFICA_VENCIMIENTO';

   INSERT INTO codparam
               (cparam, cutili, ctipo, cgrppar, norden, cobliga, tdefecto,
                cvisible
               )
        VALUES ('NOTIFICA_VENCIMIENTO', 4, 2, 'GEN', 1367, 0, NULL,
                1
               );
END;
/

DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc
        FROM productos
       WHERE cramo = 801 AND cactivo = 1;
BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
         INSERT INTO parproductos
                     (sproduc, cparpro, cvalpar, nagrupa, tvalpar, fvalpar
                     )
              VALUES (i.sproduc, 'NOTIFICA_VENCIMIENTO', 1, NULL, NULL, NULL
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

DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc
        FROM productos
       WHERE cramo = 801 AND cactivo = 1;
BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
         INSERT INTO parproductos
                     (sproduc, cparpro, cvalpar, nagrupa, tvalpar, fvalpar
                     )
              VALUES (i.sproduc, 'CSIT_VTO', 18, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            UPDATE parproductos
               SET cvalpar = 18
             WHERE sproduc = i.sproduc AND cparpro = 'CSIT_VTO';
      END;
   END LOOP;

   COMMIT;
END;
/

--'DIASVTO'

DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc
        FROM productos
       WHERE cramo = 801 AND cactivo = 1;
BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
         INSERT INTO parproductos
                     (sproduc, cparpro, cvalpar, nagrupa, tvalpar, fvalpar
                     )
              VALUES (i.sproduc, 'DIASVTO', 365, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            UPDATE parproductos
               SET cvalpar = 365
             WHERE sproduc = i.sproduc AND cparpro = 'DIASVTO';
      END;
   END LOOP;

   COMMIT;
END;
/

DELETE      detvalores
      WHERE cvalor = 61 AND catribu = 18;

INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (61, 1, 18, 'Completa'
            );
INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (61, 2, 18, 'Finalizada'
            );
INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (61, 8, 18, 'Finalizada'
            );
COMMIT ;
/
ALTER TABLE seguros
DROP CONSTRAINT ck_seguros_csituac;

ALTER TABLE seguros
ADD
( CONSTRAINT ck_seguros_csituac
 CHECK (csituac IN(0,1,2,3,4,5,7,8,9,10,11,12,13,14,15,16,17,18))
 );