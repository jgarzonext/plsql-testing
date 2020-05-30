DELETE      axis_literales
         WHERE slitera = 89907057;

   DELETE      axis_codliterales
         WHERE slitera = 89907057;

   INSERT INTO axis_codliterales
               (slitera, clitera
               )
        VALUES (89907058, 2
               );

   INSERT INTO axis_literales
               (cidioma, slitera,
                tlitera
               )
        VALUES (1, 89907058,
                'No se puede cancelar la póliza porque se realizó un abono que supera al valor a cobrar'
               );

   INSERT INTO axis_literales
               (cidioma, slitera,
                tlitera
               )
        VALUES (2, 89907058,
                'No se puede cancelar la póliza porque se realizó un abono que supera al valor a cobrar'
               );

   INSERT INTO axis_literales
               (cidioma, slitera,
                tlitera
               )
        VALUES (8, 89907058,
                'No se puede cancelar la póliza porque se realizó un abono que supera al valor a cobrar'
               );

   COMMIT;