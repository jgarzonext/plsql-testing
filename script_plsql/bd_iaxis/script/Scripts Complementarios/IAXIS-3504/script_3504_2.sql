/* Formatted on 2019/12/24 14:35 (Formatter Plus v4.8.8) */
DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc
        FROM productos
       WHERE cramo IN (801, 802) AND cactivo = 1;
BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
         INSERT INTO pds_supl_dif_config
                     (cmotmov, sproduc, tfecrec,
                      fvalfun,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (673, i.sproduc, NULL,
                      'PAC_VALIDA_ACCION_SUPL.F_VALIDA_CDOMICI(:SSEGURO,:FECHA,:CMOTMOV)',
                      NULL, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
      BEGIN
         INSERT INTO pds_supl_dif_config
                     (cmotmov, sproduc, tfecrec,
                      fvalfun,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (729, i.sproduc, NULL,
                      'PAC_VALIDA_ACCION_SUPL.F_VALIDA_REVALORIZA(:SSEGURO,:FECHA,:CMOTMOV)',
                      NULL, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO pds_supl_dif_config
                     (cmotmov, sproduc, tfecrec,
                      fvalfun,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (825, i.sproduc, NULL,
                      'PAC_VALIDA_ACCION_SUPL.F_VALIDA_MODIFCOCORRETAJE(:SSEGURO,:FECHA,:CMOTMOV)',
                      NULL, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO pds_supl_dif_config
                     (cmotmov, sproduc, tfecrec,
                      fvalfun,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (281, i.sproduc, NULL,
                      'PAC_VALIDA_ACCION_SUPL.F_VALIDA_MODIFGARANTIAS(:SSEGURO,:FECHA,:CMOTMOV)',
                      NULL, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO pds_supl_dif_config
                     (cmotmov, sproduc, tfecrec,
                      fvalfun,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (288, i.sproduc, NULL,
                      'PAC_VALIDA_ACCION_SUPL.F_VALIDA_MODIFCLAUSULAS(:SSEGURO,:FECHA,:CMOTMOV)',
                      NULL, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO pds_supl_dif_config
                     (cmotmov, sproduc, tfecrec,
                      fvalfun,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (684, i.sproduc, NULL,
                      'PAC_VALIDA_ACCION_SUPL.F_VALIDA_MODIFPREGUNPOL(:SSEGURO,:FECHA,:CMOTMOV)',
                      NULL, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO pds_supl_dif_config
                     (cmotmov, sproduc, tfecrec,
                      fvalfun,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (685, i.sproduc, NULL,
                      'PAC_VALIDA_ACCION_SUPL.F_VALIDA_MODIFPREGUNRIES(:SSEGURO,:FECHA,:CMOTMOV)',
                      NULL, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO pds_supl_dif_config
                     (cmotmov, sproduc, tfecrec,
                      fvalfun,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (900, i.sproduc, 'F_FCARANU',
                      'PAC_VALIDA_ACCION_SUPL.F_PRORROGA_VIGENCIA(:SSEGURO,:FECHA,:CMOTMOV)',
                      NULL, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO pds_supl_dif_config
                     (cmotmov, sproduc, tfecrec,
                      fvalfun,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (905, i.sproduc, 'F_FCARANU',
                      'PAC_VALIDA_ACCION_SUPL.F_PRORROGA_VIGENCIA(:SSEGURO,:FECHA,:CMOTMOV)',
                      NULL, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO pds_supl_dif_config
                     (cmotmov, sproduc, tfecrec,
                      fvalfun,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (828, i.sproduc, 'F_FCARANU',
                      'PAC_VALIDA_ACCION_SUPL.F_VALIDA_MODIFCOMISI(:SSEGURO,:FECHA,:CMOTMOV)',
                      NULL, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO pds_supl_dif_config
                     (cmotmov, sproduc, tfecrec,
                      fvalfun,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (225, i.sproduc, 'F_FCARANU',
                      'PAC_VALIDA_ACCION_SUPL.F_VALIDA_MODIFOFICINA(:SSEGURO,:FECHA,:CMOTMOV)',
                      NULL, NULL, NULL, NULL
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