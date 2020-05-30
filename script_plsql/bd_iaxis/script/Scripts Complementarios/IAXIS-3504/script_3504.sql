/* Formatted on 2020/01/08 16:43 (Formatter Plus v4.8.8) */
DECLARE
   v_cidcfg   cfg_wizard.cidcfg%TYPE;
   v_cmodo    cfg_wizard.cmodo%TYPE;

   CURSOR c_cfg
   IS
      SELECT cmodo, sproduc, cidcfg, SUBSTR (cmodo, 11, 14) cmodos
        FROM cfg_wizard
       WHERE cmodo LIKE 'SUPLEMENTO%' AND ccfgwiz = 'CFG_CENTRAL';

   CURSOR c_fcfg
   IS
      SELECT cidcfg, cform_sig
        FROM cfg_wizard_forms
       WHERE cidcfg = v_cidcfg
         AND cform_act = 'AXISCTR020'
         AND ccampo_act = 'BT_SUPLE' || v_cmodo;
BEGIN
   FOR i IN c_cfg
   LOOP
      v_cidcfg := i.cidcfg;
      v_cmodo := i.cmodos;

      FOR j IN c_fcfg
      LOOP
         BEGIN
            INSERT INTO cfg_wizard_forms
                        (cempres, cidcfg, cform_act, ccampo_act,
                         cform_sig, cform_ant, niteracio, csituac
                        )
                 VALUES (24, v_cidcfg, 'AXISCTR018', 'BT_EDITAR',
                         j.cform_sig, NULL, 1, 'O'
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               NULL;
         END;

         COMMIT;
         DBMS_OUTPUT.put_line (i.cmodo || ' j ' || j.cidcfg || ' '
                               || j.cform_sig
                              );
      END LOOP;
   END LOOP;
END;
/
BEGIN
   UPDATE parproductos
      SET cvalpar = 0
    WHERE cparpro = 'ANTIGUEDAD_FCC';

   COMMIT;
END;
/