/* Formatted on 2019/03/01 14:44 (Formatter Plus v4.8.8) */



DECLARE
   v_nerror     NUMBER;
   v_contexto   NUMBER;

   CURSOR c_productos
   IS
      SELECT sproduc
        FROM productos;
BEGIN
   SELECT pac_contexto.f_inicializarctx
                                   (pac_parametros.f_parempresa_t (24,
                                                                   'USER_BBDD'
                                                                  )
                                   )
     INTO v_contexto
     FROM DUAL;

   DELETE      psu_nivel_control
         WHERE ccontrol = 807186;

   DELETE      psu_controlpro
         WHERE ccontrol = 807186;

   DELETE      psu_desresultado
         WHERE ccontrol = 807186;

   DELETE      psu_descontrol
         WHERE ccontrol = 807186;

   DELETE      psu_codcontrol
         WHERE ccontrol = 807186;

   DELETE      sgt_trans_formula
         WHERE clave = 807186;

   DELETE      sgt_formulas
         WHERE clave = 807186;

   INSERT INTO psu_codcontrol
               (ccontrol, cusualt, falta
               )
        VALUES (807186, f_user, f_sysdate
               );

   INSERT INTO psu_descontrol
               (ccontrol, cidioma,
                tcontrol,
                cusualt, falta
               )
        VALUES (807186, 1,
                'Persona Natural del Régimen Simplificado supera el Máximo Valor',
                f_user, f_sysdate
               );

   INSERT INTO psu_descontrol
               (ccontrol, cidioma,
                tcontrol,
                cusualt, falta
               )
        VALUES (807186, 2,
                'Persona Natural del Régimen Simplificado supera el Máximo Valor',
                f_user, f_sysdate
               );

   INSERT INTO psu_descontrol
               (ccontrol, cidioma,
                tcontrol,
                cusualt, falta
               )
        VALUES (807186, 8,
                'Persona Natural del Régimen Simplificado supera el Máximo Valor',
                f_user, f_sysdate
               );

   INSERT INTO sgt_formulas
               (clave, codigo,
                descripcion,
                formula
               )
        VALUES (807186, '807186_VALIDA_REGIMEN',
                'Valida_Regimen_Simplificado',
                'PAC_PSU_CONF.F_VALIDA_REGIMEN(SSEGURO)'
               );

   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (807186, 'SSEGURO'
               );

   FOR i IN c_productos
   LOOP
      INSERT INTO psu_controlpro
                  (ccontrol, sproduc, ctratar, cgarant, producci, renovaci,
                   suplemen, cotizaci, autmanual, establoquea, autoriprev,
                   cretenpor, cformula, cusualt, falta, ccritico, psuext,
                   psuage
                  )
           VALUES (807186, i.sproduc, 3, 0, 1, 0,
                   1, 1, 'A', 'E', 'S',
                   3, 807186, f_user, f_sysdate, 1, 0,
                   0
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta
                  )
           VALUES (807186, i.sproduc, 0, 1, 'Correcte', f_user, f_sysdate
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta
                  )
           VALUES (807186, i.sproduc, 0, 2, 'Correcto', f_user, f_sysdate
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta
                  )
           VALUES (807186, i.sproduc, 0, 8, 'Correcto', f_user, f_sysdate
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma,
                   tdesniv, cusualt,
                   falta
                  )
           VALUES (807186, i.sproduc, 2610, 1,
                   'Agente supera tope de Regimen Simplificado', f_user,
                   f_sysdate
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma,
                   tdesniv, cusualt,
                   falta
                  )
           VALUES (807186, i.sproduc, 2610, 2,
                   'Agente supera tope de Regimen Simplificado', f_user,
                   f_sysdate
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma,
                   tdesniv, cusualt,
                   falta
                  )
           VALUES (807186, i.sproduc, 2610, 8,
                   'Agente supera tope de Regimen Simplificado', f_user,
                   f_sysdate
                  );

      INSERT INTO psu_nivel_control
                  (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta
                  )
           VALUES (807186, i.sproduc, 0, 0, 0, f_user, f_sysdate
                  );

      INSERT INTO psu_nivel_control
                  (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta
                  )
           VALUES (807186, i.sproduc, 1, 1, 2610, f_user, f_sysdate
                  );
   END LOOP;

   COMMIT;
END;
/