
UPDATE parproductos
   SET cvalpar = 180
 WHERE sproduc >= 10000 AND cparpro = 'VIG_FECHA_TARIFA';
COMMIT ;

/
DECLARE
   CURSOR c_productos
   IS
      SELECT sproduc
        FROM v_productos;
BEGIN
   FOR i IN c_productos
   LOOP
      BEGIN
         INSERT INTO parproductos
                     (sproduc, cparpro, cvalpar, nagrupa, tvalpar, fvalpar
                     )
              VALUES (i.sproduc, 'VIG_SIMUL', '180', NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
   END LOOP;
END;
/

COMMIT ;
/