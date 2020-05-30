DECLARE
   v_nerror     NUMBER;
   v_contexto   NUMBER;
   v_psu        NUMBER:= 807187;

   CURSOR c_productos
   IS
      SELECT sproduc
        FROM productos
        where cramo = 801;
BEGIN
   SELECT pac_contexto.f_inicializarctx
                                   (pac_parametros.f_parempresa_t (24,
                                                                   'USER_BBDD'
                                                                  )
                                   )
    INTO v_contexto
     FROM DUAL;

   DELETE      psu_nivel_control
         WHERE ccontrol =  v_psu;

   DELETE      psu_controlpro
         WHERE ccontrol = v_psu;

   DELETE      psu_desresultado
         WHERE ccontrol = v_psu;

   DELETE      psu_descontrol
         WHERE ccontrol = v_psu;

   DELETE      psu_codcontrol
         WHERE ccontrol = v_psu;

   DELETE      sgt_trans_formula
         WHERE clave = v_psu;

   DELETE      sgt_formulas
         WHERE clave = v_psu;

   INSERT INTO psu_codcontrol
               (ccontrol, cusualt, falta
               )
        VALUES (v_psu, f_user, f_sysdate
               );

   INSERT INTO psu_descontrol
               (ccontrol, cidioma,
                tcontrol,
                cusualt, falta
               )
        VALUES (v_psu, 1,
                'Contratante pertenece a Convenio Grandes Beneficiarios',
                f_user, f_sysdate
               );

   INSERT INTO psu_descontrol
               (ccontrol, cidioma,
                tcontrol,
                cusualt, falta
               )
        VALUES (v_psu, 2,
                'Contratante pertenece a Convenio Grandes Beneficiarios',
                f_user, f_sysdate
               );

   INSERT INTO psu_descontrol
               (ccontrol, cidioma,
                tcontrol,
                cusualt, falta
               )
        VALUES (v_psu, 8,
                'Contratante pertenece a Convenio Grandes Beneficiarios',
                f_user, f_sysdate
               );

   INSERT INTO sgt_formulas
               (clave, codigo,
                descripcion,
                formula
               )
        VALUES (v_psu, v_psu||'_VALIDA_CONVENIO',
                'Valida_Asegurado_Convenio',
                'PAC_PSU_CONF.F_VALIDA_CONVENIO(SSEGURO)'
               );

   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (v_psu, 'SSEGURO'
               );

   FOR i IN c_productos
   LOOP
      INSERT INTO psu_controlpro
                  (ccontrol, sproduc, ctratar, cgarant, producci, renovaci,
                   suplemen, cotizaci, autmanual, establoquea, autoriprev,
                   cretenpor, cformula, cusualt, falta, ccritico, psuext,
                   psuage
                  )
           VALUES (v_psu, i.sproduc, 3, 0, 1, 0,
                   1, 1, 'A', 'E', 'S',
                   3, v_psu, f_user, f_sysdate, 1, 0,
                   0
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta
                  )
           VALUES (v_psu, i.sproduc, 0, 1, 'Correcte', f_user, f_sysdate
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta
                  )
           VALUES (v_psu, i.sproduc, 0, 2, 'Correcto', f_user, f_sysdate
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta
                  )
           VALUES (v_psu, i.sproduc, 0, 8, 'Correcto', f_user, f_sysdate
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma,
                   tdesniv, cusualt,
                   falta
                  )
           VALUES (v_psu, i.sproduc, 2610, 1,
                   'Contratante pertenece a Convenio Grandes Beneficiarios', f_user,
                   f_sysdate
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma,
                   tdesniv, cusualt,
                   falta
                  )
           VALUES (v_psu, i.sproduc, 2610, 2,
                   'Contratante pertenece a Convenio Grandes Beneficiarios', f_user,
                   f_sysdate
                  );

      INSERT INTO psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma,
                   tdesniv, cusualt,
                   falta
                  )
           VALUES (v_psu, i.sproduc, 2610, 8,
                   'Contratante pertenece a Convenio Grandes Beneficiarios', f_user,
                   f_sysdate
                  );

      INSERT INTO psu_nivel_control
                  (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta
                  )
           VALUES (v_psu, i.sproduc, 0, 0, 0, f_user, f_sysdate
                  );

      INSERT INTO psu_nivel_control
                  (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta
                  )
           VALUES (v_psu, i.sproduc, 1, 1, 2610, f_user, f_sysdate
                  );
   END LOOP;

   COMMIT;
END;

/


/*********************************************************************************************************/

DELETE FROM axis_literales WHERE slitera = 89906260;
DELETE FROM axis_codliterales WHERE slitera = 89906260;

DELETE FROM CFG_REL_AVISOS WHERE CIDREL = 733709 AND CAVISO = 733719;
DELETE FROM AVISOS WHERE CAVISO = 733719;


INSERT INTO axis_codliterales (SLITERA,CLITERA) VALUES (89906260,2);

INSERT INTO axis_literales (CIDIOMA,SLITERA,TLITERA) VALUES (1,89906260,'Contratante pertenece a Convenio Grandes Beneficiarios');
INSERT INTO axis_literales (CIDIOMA,SLITERA,TLITERA) VALUES (2,89906260,'Contratante pertenece a Convenio Grandes Beneficiarios');
INSERT INTO axis_literales (CIDIOMA,SLITERA,TLITERA) VALUES (8,89906260,'Contratante pertenece a Convenio Grandes Beneficiarios');

INSERT INTO avisos (CEMPRES,CAVISO,SLITERA,CTIPAVISO,TFUNC,CACTIVO,CUSUARI,FALTA) VALUES (24,733719,89906260,1,'PAC_AVISOS_CONF.F_VALIDA_CONVENIO_GB',1,f_user, f_sysdate);
INSERT INTO CFG_REL_AVISOS (CEMPRES,CIDREL,CAVISO,CBLOQUEO,NORDEN,CUSUARI,FALTA) VALUES (24,733709,733719,2,1,f_user,f_sysdate);


COMMIT;

/
