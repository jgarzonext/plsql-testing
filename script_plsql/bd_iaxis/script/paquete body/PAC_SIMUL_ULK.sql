--------------------------------------------------------
--  DDL for Package Body PAC_SIMUL_ULK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_SIMUL_ULK" AS
/******************************************************************************
   NOMBRE:     Pac_Simul_Ilk
   PROP�SITO:  Funciones para la simulacion de Unit Link

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        XX/XX/XXXX   XXX                1. Creaci�n del package.
   2.0        30/04/2009   APD                2. Bug 9685 - primero se ha de buscar para la actividad en concreto
                                                 y si no se encuentra nada ir a buscar a GARANFORMULA para la actividad cero
   2.1        30/04/2009   APD                3. Bug 9685 - en lugar de coger la actividad de la tabla seguros, llamar a la
                                                 funci�n pac_seguros.ff_get_actividad
******************************************************************************/--  f_get_dades_calculades
  --    �nicament preparada per simulacions
  --
  --  Par�metres
  --      pssolicit  :  n�mero de la simulaci�
  --      pfefecto   :  data d'alta de la p�lissa
  --      piprima    :  prima
  --      pcidioma_user: idioma del usuario
  --
   FUNCTION f_get_dades_calculades(
      pssolicit IN NUMBER,
      pfefecto IN DATE,
      piprima IN NUMBER,
      pcidioma_user IN literales.cidioma%TYPE,
      pnum_err OUT NUMBER)
      RETURN ob_resp_simula_pu_ulk IS
      -- Utilitzats per omplir la simulaci�
      v_tipo_penalizacion NUMBER;
      v_imp_penalizacion NUMBER;
      v_rendimiento  NUMBER(5, 2);
      vtsimulaanys   t_det_simula_pu := t_det_simula_pu();
      vtsimulaanys_ulk t_det_simula_pu_ulk := t_det_simula_pu_ulk();
      v_errores      ob_errores;
      vsimulacion    ob_resp_simula_pu_ulk;
      vintany        solpregunseg.crespue%TYPE;   --NUMBER(5, 2); BUG 26100
      v_fecha_calculo DATE;
      vcapfall       NUMBER;   --NUMBER(13, 2);
      vcapgar        NUMBER;   --NUMBER(13, 2);
      vprovmat       NUMBER;   --NUMBER(13, 2);
      v_error        literales.slitera%TYPE;
      vintprom       solpregunseg.crespue%TYPE;   -- NUMBER(5, 2); BUG 26100
      vintfin        NUMBER(5, 2);   --26100 deprecado 2013
      vintmin        NUMBER(5, 2);   --26100 deprecado 2013
      -- RSC 26/11/2007
      vcapeuroplazo  solpregunseg.crespue%TYPE;   --NUMBER(13, 2); BUG 26100
      vcapibex       solpregunseg.crespue%TYPE;   --NUMBER(13, 2); BUG 26100
      pprimaibex     NUMBER;   --NUMBER(13, 2);
      ttramoibex     NUMBER;
      itramoibex     NUMBER;   --NUMBER(13, 2);
      pinttec        solintertecseg.pinttec%TYPE;   --       pinttec        NUMBER(5, 2); --- BUG 25803: DECIMALES Y OTROS CAMPOS ---

      TYPE rt_dades IS RECORD(
         clave          garanformula.clave%TYPE,
         ccampo         garanformula.ccampo%TYPE
      );

      vr_garan       rt_dades;
      vr_fall        rt_dades;
      vr_provmat     rt_dades;
      ex_error       EXCEPTION;
      v_traza        tab_error.ntraza%TYPE;

      PROCEDURE validar(perror IN NUMBER) IS
      BEGIN
         IF perror <> 0 THEN
            v_errores := ob_errores(perror, f_axis_literales(perror, pcidioma_user));
            RAISE ex_error;
         END IF;
      END;
   BEGIN
      v_traza := 1;

      FOR rdades IN (
                     -- Bug 9685 - APD - 30/04/2009 - en lugar de coger la actividad de la tabla seguros, llamar a la funci�n pac_seguros.ff_get_actividad
                     SELECT s.sproduc,
                            pac_seguros.ff_get_actividad(s.ssolicit, g.nriesgo, 'SOL')
                                                                                      cactivi,
                            s.fvencim, g.cgarant, s.ccolect, s.ctipseg, s.cmodali, s.cramo
                       FROM solgaranseg g, solseguros s
                      WHERE g.ssolicit = s.ssolicit
                        AND f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                            pac_seguros.ff_get_actividad(s.ssolicit, g.nriesgo,
                                                                         'SOL'),
                                            g.cgarant, 'TIPO') = 5   -- Capital garantizado
                        AND s.ssolicit = pssolicit
                                                  -- Bug 9685 - APD - 30/04/2009 - Fin
                   ) LOOP
         FOR rformula IN (
                          -- Bug 9685 - APD - 30/04/2009 - primero se ha de buscar para la actividad en concreto
                          -- y si no se encuentra nada ir a buscar a GARANFORMULA para la actividad cero
                          SELECT gf.clave, gf.ccampo
                            FROM garanformula gf
                           WHERE gf.cgarant = rdades.cgarant
                             AND gf.cramo = rdades.cramo
                             AND gf.cmodali = rdades.cmodali
                             AND gf.ctipseg = rdades.ctipseg
                             AND gf.ccolect = rdades.ccolect
                             AND gf.cactivi = rdades.cactivi
                          UNION
                          SELECT gf.clave, gf.ccampo
                            FROM garanformula gf
                           WHERE gf.cgarant = rdades.cgarant
                             AND gf.cramo = rdades.cramo
                             AND gf.cmodali = rdades.cmodali
                             AND gf.ctipseg = rdades.ctipseg
                             AND gf.ccolect = rdades.ccolect
                             AND gf.cactivi = 0
                             AND NOT EXISTS(SELECT gf.clave, gf.ccampo
                                              FROM garanformula gf
                                             WHERE gf.cgarant = rdades.cgarant
                                               AND gf.cramo = rdades.cramo
                                               AND gf.cmodali = rdades.cmodali
                                               AND gf.ctipseg = rdades.ctipseg
                                               AND gf.ccolect = rdades.ccolect
                                               AND gf.cactivi = rdades.cactivi)
                                                                               -- Bug 9685 - APD - 30/04/2009 - Fin
                        ) LOOP
            CASE rformula.ccampo
               WHEN 'ICGARAC' THEN
                  vr_garan.clave := rformula.clave;
                  vr_garan.ccampo := rformula.ccampo;
                  NULL;
               WHEN 'IPROVAC' THEN
                  vr_provmat.clave := rformula.clave;
                  vr_provmat.ccampo := rformula.ccampo;
               WHEN 'ICFALLAC' THEN
                  vr_fall.clave := rformula.clave;
                  vr_fall.ccampo := rformula.ccampo;
               ELSE
                  NULL;
            END CASE;
         END LOOP;

         FOR v_i IN 1 .. 1 LOOP   -- solo devolvemos el primer a�o
            v_fecha_calculo := ADD_MONTHS(pfefecto, 12 * v_i) - 1;
            v_traza := 10;
            validar(pac_calculo_formulas.calc_formul(v_fecha_calculo, rdades.sproduc,
                                                     rdades.cactivi, rdades.cgarant, 1,
                                                     pssolicit, vr_garan.clave, vcapgar, NULL,
                                                     NULL, 0, pfefecto, 'R'));
            v_traza := 11;
            validar(pac_calculo_formulas.calc_formul(v_fecha_calculo, rdades.sproduc,
                                                     rdades.cactivi, rdades.cgarant, 1,
                                                     pssolicit, vr_fall.clave, vcapfall, NULL,
                                                     NULL, 0, pfefecto, 'R'));
            v_traza := 111;
            validar(pac_calculo_formulas.calc_formul(v_fecha_calculo, rdades.sproduc,
                                                     rdades.cactivi, rdades.cgarant, 1,
                                                     pssolicit, vr_provmat.clave, vprovmat,
                                                     NULL, NULL, 0, pfefecto, 'R'));
            --v_traza := 12;
            vintany := pac_inttec.ff_int_producto(rdades.sproduc, 3, v_fecha_calculo, piprima);
            -- pctipmov => Rescates totales
            v_traza := 13;
            validar(f_penalizacion(3, 2, rdades.sproduc, NULL, pfefecto, v_imp_penalizacion,
                                   v_tipo_penalizacion, 'SOL', 1));
            v_traza := 14;
            vtsimulaanys.EXTEND;
            vtsimulaanys(vtsimulaanys.LAST) :=
               ob_det_simula_pu(v_i, v_fecha_calculo, vcapgar, vcapfall, vprovmat,
                                CASE v_tipo_penalizacion
                                   WHEN 1 THEN NVL(v_imp_penalizacion, 0)
                                   ELSE 100 - NVL(v_imp_penalizacion, 0)
                                END,
                                vintany);
         END LOOP;

         v_traza := 30;

         -- Dades de la simulaci�
         IF vtsimulaanys.FIRST IS NOT NULL THEN
            -- Nota : Calcula mesos enlloc d'anys per si agafem un anys parcial
            v_rendimiento := ROUND(((vcapgar / piprima) **(12
                                                           / MONTHS_BETWEEN(rdades.fvencim,
                                                                            pfefecto))
                                    - 1)
                                   * 100,
                                   2);
         ELSE
            -- Com ho calculem si hi ha aportacions posteriors a la prima inicial ?
            v_rendimiento := NULL;
         END IF;

         v_traza := 31;

         -- Calculamos el inter�s promocional
         BEGIN
            SELECT DECODE(crespue, 0, vintany, crespue)
              INTO vintprom
              FROM solpregunseg
             WHERE ssolicit = pssolicit
               AND crespue = 6;
         EXCEPTION
            WHEN OTHERS THEN
               vintprom := vintany;
         END;

--------------------------------------------------------------------------------------------------------
-- Obtenemos parte de capital Europlazo
         v_traza := 311;

         BEGIN
            SELECT NVL(crespue, 0)
              INTO vcapeuroplazo
              FROM solpregunseg
             WHERE ssolicit = pssolicit
               AND cpregun = 1012;
         EXCEPTION
            WHEN OTHERS THEN
               vcapeuroplazo := 0;
         END;

         -- Obtenemos parte de capital Ibex 35
         v_traza := 312;

         BEGIN
            SELECT NVL(crespue, 0)
              INTO vcapibex
              FROM solpregunseg
             WHERE ssolicit = pssolicit
               AND cpregun = 1013;
         EXCEPTION
            WHEN OTHERS THEN
               vcapibex := 0;
         END;

         -- Porcentaje de la prima �nica inicial destinado al indice
         pprimaibex := (vcapibex / piprima) * 100;
         ttramoibex := -60;

         WHILE(ttramoibex <= 60) LOOP
            IF ttramoibex <= 0 THEN
               itramoibex := vcapibex *(ttramoibex / 100) + vcapibex;
               vtsimulaanys_ulk.EXTEND;
               vtsimulaanys_ulk(vtsimulaanys_ulk.LAST) :=
                  ob_det_simula_pu_ulk(ttramoibex, pprimaibex *((100 + ttramoibex) / 100),
                                       itramoibex, NULL);
            ELSE
               itramoibex := vcapibex *(ttramoibex / 100) + vcapibex;
               vtsimulaanys_ulk.EXTEND;
               vtsimulaanys_ulk(vtsimulaanys_ulk.LAST) :=
                  ob_det_simula_pu_ulk(ttramoibex, pprimaibex *((100 + ttramoibex) / 100),
                                       itramoibex,
                                       (itramoibex /(piprima *(ttramoibex / 100))) * 100);
            END IF;

            ttramoibex := ttramoibex + 20;
         END LOOP;

         SELECT pinttec
           INTO pinttec
           FROM solintertecseg
          WHERE ssolicit = pssolicit;

--------------------------------------------------------------------------------------------------------------

         --v_traza := 32;
         -- Calculamos el inter�s financiero
         --vIntFin := round(((vProvMat/piprima)-1)*100,2);

         --v_traza := 33;
         -- Calculamos el inter�s m�nimo garantizado
         --vIntMin := pac_inttec.Ff_int_producto (rDades.SProduc, 1, v_fecha_calculo, piprima);
         v_traza := 34;
         vsimulacion := ob_resp_simula_pu_ulk(pssolicit, vtsimulaanys, piprima, v_rendimiento,
                                              vcapgar, pinttec, vcapibex, pprimaibex,
                                              vtsimulaanys_ulk, v_errores);
         EXIT;   -- Nom�s hi ha d'haver un registre
      END LOOP;

      RETURN vsimulacion;
   EXCEPTION
      WHEN ex_error THEN
         p_tab_error(f_sysdate, f_user, 'pac_simul_ulk.f_get_dades_calculades', v_traza,
                     'parametros: pssolicit =' || pssolicit || ' piprima =' || piprima,
                     'ERROR-' || v_errores.cerror || ':' || v_errores.terror);
         RETURN ob_resp_simula_pu_ulk(pssolicit, vtsimulaanys, NULL, NULL, NULL, NULL, NULL,
                                      NULL, vtsimulaanys_ulk, v_errores);
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_simul_ulk.f_get_dades_calculades', v_traza,
                     'parametros: pssolicit =' || pssolicit || ' piprima =' || piprima,
                     SQLERRM);
         RETURN ob_resp_simula_pu_ulk(pssolicit, vtsimulaanys, NULL, NULL, NULL, NULL, NULL,
                                      NULL, vtsimulaanys_ulk,
                                      ob_errores(180160,
                                                 f_axis_literales(180160, pcidioma_user)));
   END;

   FUNCTION f_genera_sim_pu(
      psproduc IN NUMBER,
      pnombre1 IN VARCHAR2,
      ptapelli1 IN VARCHAR2,
      pfnacimi1 IN DATE,
      psexo1 IN NUMBER,
      pnombre2 IN VARCHAR2,
      ptapelli2 IN VARCHAR2,
      pfnacimi2 IN DATE,
      psexo2 IN NUMBER,
      piprima IN NUMBER,
      pndurper IN NUMBER,
      pfvencim IN DATE,
      ppinttec IN NUMBER,
      pfefecto IN DATE,
      pssolicit OUT NUMBER)
      RETURN NUMBER IS
      /**********************************************************************************************************************************
             f_genera_sim_pu: Funci�n que genera la simulaci�n y la tarificaci�n (calcula datos)
             26-2-2007. CSI
             Vida Ahorro

             La funci�n retornar�
                 a) Si todo es correcto: 0
                 b) Si hay un error: c�digo de error

      **********************************************************************************************************************************/
      v_ssolicit     NUMBER;
      num_err        NUMBER;
      v_nduraci      NUMBER;
      v_fvencim      DATE;
      v_errores      ob_errores;
      error          EXCEPTION;
      v_traza        tab_error.ntraza%TYPE;
   BEGIN
    --------------------------
    -- se crea la solicitud --
--------------------------
      v_traza := 1;
      num_err := pk_simulaciones.f_crea_solicitud(psproduc, v_ssolicit, 1, pfefecto);

      IF num_err <> 0 THEN
         RAISE error;
      END IF;

---------------------------------------
-- actualizamos los datos del riesgo --
---------------------------------------
      v_traza := 2;
      num_err := pac_simul_comu.f_actualiza_riesgo(v_ssolicit, 1, pfnacimi1, psexo1, pnombre1,
                                                   ptapelli1);

      IF num_err <> 0 THEN
         RAISE error;
      END IF;

------------------------------------------
-- actualizamos los datos del asegurado --
------------------------------------------
      v_traza := 3;
      num_err := pac_simul_comu.f_actualiza_asegurado(v_ssolicit, 1, pfnacimi1, psexo1,
                                                      pnombre1, ptapelli1);

      IF num_err <> 0 THEN
         RAISE error;
      END IF;

---------------------------------------------
-- Informa los datos del segundo asegurado --
---------------------------------------------
      v_traza := 4;

      IF pfnacimi2 IS NOT NULL THEN   -- hay 2 asegurados
         num_err := pac_simul_comu.f_crea_solasegurado(v_ssolicit, 2, ptapelli2, pnombre2,
                                                       pfnacimi2, psexo2);

         IF num_err <> 0 THEN
            RAISE error;
         END IF;
      END IF;

---------------------------
-- actualizamos la prima --
---------------------------
      v_traza := 5;
      num_err := pac_simul_comu.f_actualiza_capital(v_ssolicit, 1, 48, piprima);

      IF num_err <> 0 THEN
         RAISE error;
      END IF;

----------------------------------------------------------
-- actualizamos la duraci�n periodo inter�s garantizado --
----------------------------------------------------------
      v_traza := 6;
      v_nduraci := pndurper;
      v_fvencim := pfvencim;

      IF pfvencim IS NOT NULL THEN
         -- MSR Ref 1991
         num_err := pac_calc_comu.f_calcula_fvencim_nduraci(psproduc, pfnacimi1, pfefecto,
                                                            NULL, v_nduraci, v_fvencim);
      END IF;

      -- el producto utiliza duraci�n periodo
      IF NVL(f_parproductos_v(psproduc, 'DURPER'), 0) = 1 THEN   -- Producto Europlazo 16 o Euroterm 16
         v_traza := 7;
         num_err := pac_simul_comu.f_actualiza_duracion_periodo(v_ssolicit, v_nduraci);

         IF num_err <> 0 THEN
            RAISE error;
         END IF;
      ELSE   -- psproduc IN (85, 86, 87, 88, 89, 90) = Producto Ahorro Seguro
         v_traza := 8;
         num_err := pac_simul_comu.f_actualiza_duracion(v_ssolicit, v_nduraci, v_fvencim);

         IF num_err <> 0 THEN
            RAISE error;
         END IF;
      END IF;

-------------------------------------
-- se inserta el inter�s t�cnico --
-------------------------------------
      v_traza := 9;
      num_err := pac_simul_comu.f_ins_inttec(v_ssolicit, pfefecto, ppinttec);

      IF num_err <> 0 THEN
         RAISE error;
      END IF;

---------------
-- tarifamos --
---------------
      v_traza := 10;
      num_err := pac_tarifas.f_tarifar_riesgo_tot('SOL', v_ssolicit, 1, 1,

                                                  -- JLB - I - BUG 18423 COjo la moneda del producto
                                                                                         --        1,
                                                  pac_monedas.f_moneda_producto(psproduc),

                                                  -- JLB - F - BUG 18423 COjo la moneda del producto
                                                  pfefecto);

      IF num_err <> 0 THEN
         RAISE error;
      END IF;

-----------------------
-- Valor de ssolicit --
-----------------------
      v_traza := 11;
      pssolicit := v_ssolicit;
      RETURN 0;   -- Todo OK
   EXCEPTION
      WHEN error THEN
         RETURN num_err;
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_simul_ulk.f_genera_sim_pu', v_traza,
                     'parametros: sproduc =' || psproduc || ' pnombre1=' || pnombre1
                     || ' ptapelli1=' || ptapelli1 || ' pfnacimi1=' || pfnacimi1 || ' psexo1='
                     || psexo1 || ' pnombre2=' || pnombre2 || ' ptapelli2=' || ptapelli2
                     || ' pfnacimi2=' || pfnacimi2 || ' psexo1=' || psexo2 || ' piprima='
                     || piprima || ' pndurper=' || pndurper || ' ppinttec=' || ppinttec,
                     SQLERRM);
         RETURN(108190);   -- Error general
   END f_genera_sim_pu;

-- ---------------------------------------------------------------------------------------
--       f_get_evoluprovmat: Devuelve los datos de la simulaci�n
--
--       La funci�n retornar�
--           a) Si todo es correcto: 0
--           b) Si hay un error: c�digo de error en el par�metro de salida pnum_err
--
-- ---------------------------------------------------------------------------------------
   FUNCTION f_get_evoluprovmat(
      pssolicit IN NUMBER,
      pndurper IN NUMBER,
      pnanyos_transcurridos IN NUMBER,
      pnum_err OUT NUMBER)
      RETURN t_det_simula_pu IS
      /**********************************************************************************************************************************
             f_get_evoluprovmat: Devuelve los datos de la tabla SOLEVOLUPROVMATSEG
             2-1-2007. CSI
             Vida Ahorro

             La funci�n retornar�
                 a) Si todo es correcto: 0
                 b) Si hay un error: c�digo de error en el par�metro de salida pnum_err

      **********************************************************************************************************************************/
      v_t_det_simula_pu t_det_simula_pu := t_det_simula_pu();
      v_ob_det_simula_pu ob_det_simula_pu;
      ncount         NUMBER := 0;

      CURSOR c_prov IS
         SELECT   *
             FROM solevoluprovmatseg
            WHERE ssolicit = pssolicit
              AND nanyo <= pndurper
         ORDER BY nanyo, fprovmat;
   BEGIN
      pnum_err := 0;
      v_t_det_simula_pu.DELETE;

      FOR prov IN c_prov LOOP
         ncount := ncount + 1;
         v_t_det_simula_pu.EXTEND;
         v_ob_det_simula_pu := ob_det_simula_pu(prov.nanyo + pnanyos_transcurridos,
                                                prov.fprovmat, prov.iprovmat, prov.icapfall,
                                                prov.iprovest, prov.prescate, prov.pinttec);
         v_t_det_simula_pu(ncount) := v_ob_det_simula_pu;
      END LOOP;

      RETURN v_t_det_simula_pu;
   EXCEPTION
      WHEN OTHERS THEN
         v_ob_det_simula_pu := NULL;
         v_t_det_simula_pu.DELETE;
         pnum_err := 180160;   -- Error al leer de la tabla EVOLUPROVMATSEG
         p_tab_error(f_sysdate, f_user, 'pac_simul_ulk.f_get_evoluprovmat', NULL,
                     'parametros: pssolicit =' || pssolicit || ' pndurper =' || pndurper,
                     SQLERRM);
         RETURN v_t_det_simula_pu;
   END f_get_evoluprovmat;
END pac_simul_ulk;

/

  GRANT EXECUTE ON "AXIS"."PAC_SIMUL_ULK" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_SIMUL_ULK" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_SIMUL_ULK" TO "PROGRAMADORESCSI";
