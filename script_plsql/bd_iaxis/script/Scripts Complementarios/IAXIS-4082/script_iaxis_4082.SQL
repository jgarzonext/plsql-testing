/* Formatted on 2019/08/05 14:41 (Formatter Plus v4.8.8) */
select pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD')) FROM dual;
DECLARE
   CURSOR c_prod
   IS
      SELECT cmodali, ccolect, cramo, ctipseg, sproduc
        FROM productos
       WHERE cramo = 802;
BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
         INSERT INTO pregunpro
                     (cpregun, cmodali, ccolect, cramo, ctipseg,
                      sproduc, cpretip, npreord, tprefor, cpreobl, npreimp,
                      cresdef, cofersn, ctabla,
                      tvalfor, cmodo,
                      cnivel, ctarpol, cvisible, esccero, visiblecol,
                      visiblecert, crecarg, ccalcular, tmodalidad, ctipconv
                     )
              VALUES (2912, i.cmodali, i.ccolect, i.cramo, i.ctipseg,
                      i.sproduc, 1, 1, NULL, 0, NULL,
                      NULL, 0, NULL,
                      'pac_propio_albval_conf.f_val_nit_contratante()', 'T',
                      'P', 0, 2, 0, 1,
                      1, 0, NULL, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      

      
   END LOOP;
END;
/

DECLARE
   CURSOR c_garpro
   IS
      SELECT a.sproduc, b.cgarant
        FROM productos a, garanpro b
       WHERE a.cramo = 802 AND a.sproduc = b.sproduc;
BEGIN
   FOR i IN c_garpro
   LOOP
      BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.nextval, 24, 9000007, 1, i.sproduc, 1,
                      8300372480, i.cgarant, NULL, NULL, NULL, NULL, 0.016,
                      30000, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
--
         COMMIT;
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
       BEGIN
         INSERT INTO sgt_subtabs_det
                     (sdetalle, cempres, csubtabla, cversubt, ccla1, ccla2,
                      ccla3, ccla4, ccla5, ccla6, ccla7, ccla8, nval1,
                      nval2, nval3, nval4, nval5, nval6, falta, cusualt,
                      fmodifi, cusumod, ccla9, ccla10, nval7, nval8, nval9,
                      nval10
                     )
              VALUES (sdetalle_conf.nextval, 24, 9000007, 1, i.sproduc, 1,
                      8110430331, i.cgarant, NULL, NULL, NULL, NULL, 0.016,
                      30000, NULL, NULL, NULL, NULL, f_sysdate, f_user,
                      NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                      NULL
                     );
--8110430331
         COMMIT;
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
   END LOOP;
END;
/
begin

update  pregunprogaran
set tprefor =  null
where cpregun = 8001
and sproduc in (select sproduc from productos where cramo = 802 and cactivo = 1); 

         COMMIT;
     
end;
/
BEGIN
   update sgt_formulas
   set formula = 'PAC_FORMUL_CONF.F_TASA_CONVENIO_RC(SSEGURO, NMOVIMI, NRIESGO)'
   where clave =248022;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_term_form
               (termino, tipo, origen, tdesc, operador
               )
        VALUES ('TASACON', 'F', 2, 'Tasa Convenio', 1
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (248022, 'NRIESGO'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (248022, 'SSEGURO'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (248022, 'NMOVIMI'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
BEGIN
   INSERT INTO sgt_trans_formula
               (clave, parametro
               )
        VALUES (248022, 'CGARANT'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
commit;