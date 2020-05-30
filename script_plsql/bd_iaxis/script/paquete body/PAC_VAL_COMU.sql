--------------------------------------------------------
--  DDL for Package Body PAC_VAL_COMU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_VAL_COMU" AS
/******************************************************************************
   NAME:       PAC_VAL_COMU
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   4.0        05/01/2010   JMF             4. Bug 0012549 CIV - ESTRUC - Prima m�ltiplo de 100
******************************************************************************/
   FUNCTION f_valida_forpag(psproduc IN NUMBER, pcforpag IN NUMBER)
      RETURN NUMBER IS
/*********************************************************************************************************************************
   Funci�n que valida si una forma de pago est� permitida en un producto
 *******************************************************************************************************************************/
      v_cforpag      NUMBER;
   BEGIN
      SELECT cforpag
        INTO v_cforpag
        FROM forpagpro
       WHERE (cramo, cmodali, ctipseg, ccolect) = (SELECT cramo, cmodali, ctipseg, ccolect
                                                     FROM productos
                                                    WHERE sproduc = psproduc)
         AND cforpag = pcforpag;

      RETURN 0;
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         RETURN 140704;   --Forma de pago incorrecta
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_forpag', 1,
                     'parametros: sproduc =' || psproduc || ' pcforpag =' || pcforpag,
                     SQLERRM);
         RETURN 108190;   -- Error general
   END f_valida_forpag;

   FUNCTION f_control_edat(
      pfnacimi IN DATE,
      pfecha IN DATE,
      pnedamic IN NUMBER,
      pciedmic IN NUMBER,
      pnedamac IN NUMBER,
      pciedmac IN NUMBER)
      RETURN NUMBER IS
         /*********************************************************************************************************************************
            Funci�n que controla la edad m�nima y m�xima de contrataci�n seg�n la fecha de nacimiento
           La funci�n retorna:
              0 - si la edad est� comprendida entre la edad m�nima y la m�xima
             codigo error:  103366- si la edad NO est� comprendida entre la edad m�nima y la m�xima
                              108190- Error general
      ************************************************************************************************************************************/
      n_ciedamic     NUMBER;
      n_ciedamac     NUMBER;
      n_ciedamac2    NUMBER;
      num_err        NUMBER;
      valor          NUMBER;
   BEGIN
      num_err := 0;

      --Edat m�xima
      --mirem l'edat segons CIEDMIC,CIEMAC (1 Real ,0 Actuarial)
      IF pfnacimi IS NULL
         OR pfecha IS NULL
         OR pnedamic IS NULL
         OR pciedmic IS NULL
         OR pnedamac IS NULL
         OR pciedmac IS NULL THEN
         num_err := 100;   -- error de paso de par�metros
      ELSE
         IF pciedmac = 0 THEN   -- edad actuarial
            num_err := f_difdata(pfnacimi, pfecha, 2, 1, valor);
            n_ciedamac := valor;
         ELSIF pciedmac = 1 THEN   -- edad real
            num_err := f_difdata(pfnacimi, pfecha, 1, 1, valor);
            n_ciedamac := valor;
         END IF;

         IF pciedmic = 0 THEN   -- edad actuarial
            num_err := f_difdata(pfnacimi, pfecha, 2, 1, valor);
            n_ciedamic := valor;
         ELSIF pciedmic = 1 THEN   --edad real
            num_err := f_difdata(pfnacimi, pfecha, 1, 1, valor);
            n_ciedamic := valor;
         END IF;

         IF (n_ciedamic < pnedamic
             OR n_ciedamac > pnedamac)
            AND(n_ciedamac IS NOT NULL
                AND n_ciedamic IS NOT NULL) THEN
            num_err := 103366;   -- Edad no comprendida entre la edad m�xima y la m�nima de contrataci�n
         END IF;
      END IF;

      RETURN num_err;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_control_edat', 1,
                     'parametros: fnacimi = ' || pfnacimi || ' pfecha = ' || pfecha
                     || ' pnedamic = ' || pnedamic || ' pciedmic = ' || pciedmic
                     || ' pnedamac = ' || pnedamac || ' pciedmac = ' || pciedmac,
                     SQLERRM);
         RETURN 108190;   -- Error general
   END f_control_edat;

   FUNCTION f_control_edad_suma(
      pfnacimi IN DATE,
      pfecha IN DATE,
      pfnacimi2 IN DATE,
      pnsedmac IN NUMBER,
      pcisemac IN NUMBER)
      RETURN NUMBER IS
         /*****************************************************************************************************************************
          Funci�n que controla la edad m�nima y m�xima de contrataci�n de la suma de edades de los 2 asegurados
         (para productos a 2 cabezas)
           La funci�n retorna:
              0 - si la edad est� comprendida entre la edad m�nima y la m�xima
             codigo error : 103366 - si la edad NO est� comprendida entre la edad m�nima y la m�xima
                              108190 - Error general
      ************************************************************************************************************************************/
      n_cisemac      NUMBER;
      num_err        NUMBER;
      valor1         NUMBER;
      valor2         NUMBER;
      suma_edad      NUMBER;
   BEGIN
      num_err := 0;

      --Edat m�xima
      --mirem l'edat segons CIEDMIC,CIEMAC (1 Real ,0 Actuarial)
      IF pfnacimi IS NULL
         OR pfecha IS NULL
         OR pfnacimi2 IS NULL
         OR pnsedmac IS NULL
         OR pcisemac IS NULL THEN
         num_err := 100;   -- error de paso de par�metros
      ELSE
         IF pcisemac = 0 THEN   -- edad actuarial
            num_err := f_difdata(pfnacimi, pfecha, 2, 1, valor1);
            num_err := f_difdata(pfnacimi2, pfecha, 2, 1, valor2);
         ELSIF pcisemac = 1 THEN   -- edad real
            num_err := f_difdata(pfnacimi, pfecha, 1, 1, valor1);
            num_err := f_difdata(pfnacimi2, pfecha, 1, 1, valor1);
         END IF;

         suma_edad := valor1 + valor2;

         IF suma_edad > pnsedmac THEN
            num_err := 103366;   -- Edad no comprendida entre la edad m�xima y la m�nima de contrataci�n
         END IF;
      END IF;

      RETURN num_err;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_control_edad_suma', 1,
                     'parametros: fnacimi =' || pfnacimi || ' pfecha =' || pfecha
                     || ' pfnacimi2 = ' || pfnacimi2 || ' pnsedmac = ' || pnsedmac
                     || ' pcisemac = ' || pcisemac,
                     SQLERRM);
         RETURN 108190;   -- Error general
   END f_control_edad_suma;

   FUNCTION f_valida_edad_prod(
      psproduc IN NUMBER,
      pfefecto IN DATE,
      pfnacimi IN DATE,
      pfnacimi2 IN DATE DEFAULT NULL)
      RETURN NUMBER IS
/*****************************************************************************************************************************
 Funci�n que valida la edad m�nima y m�xima de contrataci�n seg�n la parametrizaci�n del producto
     La funci�n retorna:
        0 - si la edad est� comprendida entre la edad m�nima y la m�xima
       codigo error - si la edad NO est� comprendida entre la edad m�nima y la m�xima o hay alg�n error
************************************************************************************************************************************/
      vnedamac       NUMBER;   --edad max. permitida primer asegurado
      vnedamic       NUMBER;   -- edad min. permitida primer asegurado
      vciedmac       NUMBER;   -- indicador edad real o actuarial en max. permitida primer asegurado
      vciedmic       NUMBER;   -- indicador edad real o actuarial en min. permitida primer asegurado
      vnedma2c       NUMBER;   -- edad max. permitida segundo asegurado
      vnedmi2c       NUMBER;   -- edad min. permitida segundo asegurado
      vciema2c       NUMBER;   -- indicador edad real o actuarial en max. permitida segundo asegurado
      vciemi2c       NUMBER;   -- indicador edad real o actuarial en min. permitida segundo asegurado
      vnsedmac       NUMBER;   -- m�ximo de contrataci�n de la suma de edades (productos 2 cabezas)
      vcisemac       NUMBER;   -- indicar edad real o actuarial m�ximo de suma de edades
      vedad_aseg1    NUMBER;
      vedad_aseg2    NUMBER;
      num_err        NUMBER;
   BEGIN
      SELECT nedamac, nedamic, ciedmac, ciedmic, nedma2c, ciema2c, nedmi2c, ciemi2c,
             nsedmac, cisemac
        INTO vnedamac, vnedamic, vciedmac, vciedmic, vnedma2c, vciema2c, vnedmi2c, vciemi2c,
             vnsedmac, vcisemac
        FROM productos
       WHERE sproduc = psproduc;

      -- Controlamos la edad del primer asegurado
      num_err := f_control_edat(pfnacimi, pfefecto, NVL(vnedamic, 0), NVL(vciedmic, 0),
                                NVL(vnedamac, 999), NVL(vciedmac, 0));

      IF num_err = 0 THEN
         -- Controlamos la edad del segundo asegurado (2 cabezas)
         IF pfnacimi2 IS NOT NULL THEN
            num_err := f_control_edat(pfnacimi2, pfefecto, NVL(vnedmi2c, 0), NVL(vciemi2c, 0),
                                      NVL(vnedma2c, 999), NVL(vciema2c, 0));

            IF num_err = 0 THEN   -- validamos la suma de edades
               num_err := f_control_edad_suma(pfnacimi, pfefecto, pfnacimi2,
                                              NVL(vnsedmac, 999), NVL(vcisemac, 0));
            END IF;
         END IF;
      END IF;

      -- El producto tiene parametrizada la edad minima de alguno de los asegurados
      IF NVL(f_parproductos_v(psproduc, 'EDADMINASEG'), 0) <> 0 THEN
         num_err := f_difdata(pfnacimi, pfefecto, 1, 1, vedad_aseg1);

         IF pfnacimi2 IS NOT NULL THEN
            -- Hay 2 asegurados, por lo que al menos uno de los 2 debe ser mayor de 18 a�os
            num_err := f_difdata(pfnacimi2, pfefecto, 1, 1, vedad_aseg2);

            IF vedad_aseg1 < NVL(f_parproductos_v(psproduc, 'EDADMINASEG'), 0)
               AND vedad_aseg2 < NVL(f_parproductos_v(psproduc, 'EDADMINASEG'), 0) THEN
               RETURN 109631;   -- Asegurado menor de edad
            END IF;
         ELSE
            -- S�lo hay un asegurado, entonces debe ser mayor de edad
            IF vedad_aseg1 < NVL(f_parproductos_v(psproduc, 'EDADMINASEG'), 0) THEN
               RETURN 109631;   -- Asegurado menor de edad
            END IF;
         END IF;
      END IF;

      RETURN num_err;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_edad_prod', 1,
                     'parametros: sproduc = ' || psproduc || ' pfefecto = ' || pfefecto
                     || ' pfnacimi = ' || pfnacimi || ' pfnacimi2 = ' || pfnacimi2,
                     SQLERRM);
         RETURN 108190;   -- Error general
   END f_valida_edad_prod;

   FUNCTION f_valida_edad_garant(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      psperson IN NUMBER,
      pfefecto IN DATE)
      RETURN NUMBER IS
      vfefecto       DATE;
      vsperson       NUMBER;
      vnedamic       NUMBER;
      vnedamac       NUMBER;
      vciedmic       NUMBER;
      vciedmac       NUMBER;
      vnsedmac       NUMBER;
      vcobjase       NUMBER;
      vfnacimi       DATE;
      num_err        NUMBER;
   BEGIN
      SELECT g.nedamic, g.nedamac, g.ciedmic, g.ciedmac, cobjase
        INTO vnedamic, vnedamac, vciedmic, vciedmac, vcobjase
        FROM garanpro g, productos p
       WHERE g.sproduc = psproduc
         AND g.cactivi = pcactivi
         AND g.cgarant = pcgarant
         AND g.sproduc = p.sproduc;

      IF vcobjase = 1 THEN
         SELECT fnacimi
           INTO vfnacimi
           FROM personas
          WHERE sperson = psperson;

         num_err := f_control_edat(vfnacimi, pfefecto, NVL(vnedamic, 0), NVL(vciedmic, 0),
                                   NVL(vnedamac, 999), NVL(vciedmac, 0));

         IF num_err <> 0 THEN
            RETURN num_err;
         END IF;
      /*********** falta las validaciones de 2 cabeza **************/
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_edad_garant', 1,
                     'parametros: psproduc = ' || psproduc || ' pcactivi = ' || pcactivi
                     || ' pcgarant = ' || pcgarant || ' psperson = ' || psperson
                     || ' pfefecto = ' || pfefecto,
                     SQLERRM);
         RETURN 108190;   -- Error general
   END f_valida_edad_garant;

   FUNCTION f_valida_durper(psproduc IN NUMBER, pndurper IN NUMBER, pfecha IN DATE)
      RETURN NUMBER IS
      /*********************************************************************************************************************
         Funci�n que valida si la duraci�n est� permitida en la parametrizaci�n del producto
        ********************************************************************************************************************/
      v_ndurper      NUMBER;
   BEGIN
      SELECT ndurper
        INTO v_ndurper
        FROM durperiodoprod
       WHERE sproduc = psproduc
         AND ndurper = pndurper
         AND finicio <= pfecha
         AND(ffin > pfecha
             OR ffin IS NULL);

      RETURN 0;
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         RETURN 180198;   -- Duraci�n no permitida en el producto
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_durper', 1,
                     'parametros: sproduc =' || psproduc || ' pndurper =' || pndurper
                     || ' pfecha = ' || pfecha,
                     SQLERRM);
         RETURN 108190;   -- Error general
   END f_valida_durper;

   FUNCTION f_valida_residentes(
      psproduc IN NUMBER,
      pcpais1 IN NUMBER,
      pcpais2 IN NUMBER,
      piprima IN NUMBER)
      RETURN NUMBER IS
      /*********************************************************************************************************************************
         23-2-2007.  CSI
        Vida Ahorro
       Funci�n que valida si el producto permite residentes o no residentes seg�n el par�metro de producto
       'RESIDENTES'. Adem�s se debe validar que no se mezclen Residentes y NO Residentes

      ********************************************************************************************************************************/
      v_csujeto1     NUMBER;
      v_csujeto2     NUMBER;
      error          EXCEPTION;
   BEGIN
      v_csujeto1 := pac_personas.ff_calcula_tipo_sujeto(pcpais1);

      IF pcpais2 IS NOT NULL THEN
         v_csujeto2 := pac_personas.ff_calcula_tipo_sujeto(pcpais2);
      END IF;

      IF v_csujeto1 IS NOT NULL
         AND((pcpais2 IS NOT NULL
              AND v_csujeto2 IS NOT NULL)
             OR(pcpais2 IS NULL)) THEN
         IF v_csujeto1 NOT IN(301, 690, 990) THEN
            RETURN 180199;   -- Tipo de Sujeto incorrecto
         END IF;

         IF NVL(f_parproductos_v(psproduc, 'RESIDENTES'), 0) = 1 THEN   -- S�lo Residentes
            IF v_csujeto1 NOT IN(301)
               OR v_csujeto2 NOT IN(301) THEN   -- 301 = Residente
               RETURN 153049;   -- Este producto s�lo admite titulares Residentes
            END IF;
         ELSIF NVL(f_parproductos_v(psproduc, 'RESIDENTES'), 0) = 2 THEN   -- S�lo NO Residentes
            -- 690 = No Residente UE, 990 = No Residente No UE
            IF v_csujeto1 NOT IN(690, 990)
               OR v_csujeto2 NOT IN(690, 990) THEN
               RETURN 153050;   -- Este producto s�lo admite titulares No Residentes
            END IF;
         ELSIF NVL(f_parproductos_v(psproduc, 'RESIDENTES'), 0) = 3 THEN   -- Ambos
            IF (v_csujeto1 = 301
                AND v_csujeto2 IN(690, 990))
               OR(v_csujeto1 IN(690, 990)
                  AND v_csujeto2 = 301) THEN
               RETURN 153045;   -- No se pueden mezclar Residentes y No Residentes
            END IF;
         ELSIF NVL(f_parproductos_v(psproduc, 'RESIDENTES'), 0) = 4 THEN   -- S�lo Residentes con L�mite
            -- Si la prima es superior al Limite de la prima para Residentes, se permite los No
            -- Residentes, siempre y cuando no se mezclen Residentes y no Residentes, es decir,
            -- csujeto1 y csujeto2 deben ser del mismo tipo, Residentes los dos o No Residentes los dos
            IF piprima IS NULL THEN   -- si no viene informada s�lo validamos que no se mezclen residentes y no residentes
               IF (v_csujeto1 = 301
                   AND v_csujeto2 IN(690, 990))
                  OR(v_csujeto1 IN(690, 990)
                     AND v_csujeto2 = 301) THEN
                  RETURN 153045;   -- No se pueden mezclar Residentes y No Residentes
               END IF;
            ELSE
               IF piprima >= NVL(f_parproductos_v(psproduc, 'LIMITE_RESIDENTES'), 0) THEN
                  IF (v_csujeto1 = 301
                      AND v_csujeto2 IN(690, 990))
                     OR(v_csujeto1 IN(690, 990)
                        AND v_csujeto2 = 301) THEN
                     RETURN 153045;   -- No se pueden mezclar Residentes y No Residentes
                  END IF;
               ELSE   -- S�lo se permiten Residentes
                  IF v_csujeto1 NOT IN(301)
                     OR v_csujeto2 NOT IN(301) THEN   -- 301 = Residente
                     RETURN 153049;   -- Este producto s�lo admite titulares Residentes
                  END IF;
               END IF;
            END IF;
         END IF;

         RETURN 0;   -- Todo OK
      ELSE
         RAISE error;
      END IF;
   EXCEPTION
      WHEN error THEN
         RETURN 108190;   -- error general
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_resisdentes', NULL,
                     'parametros: sproduc =' || psproduc || ' cpais1 =' || pcpais1
                     || ' cpais2 =' || pcpais2 || ' piprima =' || piprima,
                     SQLERRM);
         RETURN 108190;   -- error general
   END f_valida_residentes;

   FUNCTION f_valida_capital(
      ptipo IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      picapital IN NUMBER,
      pcforpag IN NUMBER,
      picapmin OUT NUMBER,
      picapmax OUT NUMBER)
      RETURN NUMBER IS
      /*********************************************************************************************************************************
         11-1-2007.  CSI
        Vida Ahorro
        Funci�n que valida el capital de una garant�a antes de tener la solicitud creada. Se le pasa como par�metro el capital
        Valida: capitales multiplos de 1000
                capital m�nimo permitido
              capital m�ximo permitido

        ptipo := 1 - alta o simulaci�n
                 2 - suplemento o modificaci�n

         La funci�n retorna:
           0.- Si todo es correcto
          codigo error: - Si hay error o no cumple alguna validaci�n
      ********************************************************************************************************************************/
      num_err        NUMBER;
      capmin         NUMBER;
      capmax         NUMBER;
      n              NUMBER;
      n_capimult     NUMBER;   -- Bug 0012549 - 05/01/2010 - JMF
   BEGIN
 ------------------------------------------------------------------------------------
-- Verificar que, en el Alta, la prima sea m�ltiplo de 1000 --
------------------------------------------------------------------------------------
      -- ini Bug 0012549 - 05/01/2010 - JMF
      --IF ptipo = 1
      --   AND   -- Alta
      --      NVL(f_parproductos_v(psproduc, 'CAPMULT1000'), 0) = 1 THEN
      --   n := MOD(picapital, 1000);
      --   IF n <> 0 THEN
      --      RETURN 153044;   -- La prima s�lo admite m�ltiplos de 1000
      --   END IF;
      --END IF;
      n_capimult := NVL(f_parproductos_v(psproduc, 'CAPMULT1000'), 0);

      -- Alta
      IF ptipo = 1 THEN
         IF n_capimult = 1 THEN
            n := MOD(picapital, 1000);

            IF n <> 0 THEN
               RETURN 153044;   -- La prima s�lo admite m�ltiplos de 1000
            END IF;
         ELSIF n_capimult = 2 THEN
            n := MOD(picapital, 100);

            IF n <> 0 THEN
               RETURN 9900912;   -- La prima nom�s admet m�ltiples de 100
            END IF;
         ELSIF n_capimult = 3 THEN
            n := MOD(picapital, 10000);

            IF n <> 0 THEN
               RETURN 9900913;   -- La prima nom�s admet m�ltiples de 10000
            END IF;
         END IF;
      END IF;

      -- fin Bug 0012549 - 05/01/2010 - JMF

      ------------------------------------------------------
 --verificar que no supere ni el m�ximo ni el m�nimo --
------------------------------------------------------
      picapmin := NVL(pac_calc_comu.ff_capital_min_garantia(psproduc, pcactivi, pcforpag,
                                                            pcgarant),
                      0);

      IF picapmin > picapital THEN
         RETURN 151289;   -- la prima no supera la prima m�nima
      END IF;

      picapmax := pac_calc_comu.ff_capital_max_garantia(psproduc, pcactivi, pcgarant);

      IF (picapital > picapmax
          AND picapmax IS NOT NULL) THEN
         RETURN 140601;   -- Prima m�x:
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_capital', NULL,
                     'parametros: ptipo =' || ptipo || ' sproduc =' || psproduc
                     || ' pcactivi =' || pcactivi || ' pcgarant =' || pcgarant
                     || ' picapital =' || picapital || ' pcforpag =' || pcforpag,
                     SQLERRM);
         RETURN 108190;   -- error general
   END f_valida_capital;

   FUNCTION f_valida_capital_persona(
      ptipo IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      picapital IN NUMBER,
      psperson IN NUMBER,
      pcpais IN NUMBER,
      pfefecto IN DATE DEFAULT f_sysdate)
      RETURN NUMBER IS
      /*********************************************************************************************************************************
         11-1-2007.  CSI
        Vida Ahorro
        Funci�n que valida el capital de una garant�a antes de tener la solicitud creada. Se le pasa como par�metro el capital
        En este caso se hacen validaciones en las que intervine la persona (asegurado)
        Valida: capital permitido si es no residente
                       aportaci�n m�xima en PPA (c�mulos)

        ptipo := 1 - alta o simulaci�n
                 2 - suplemento o modificaci�n

         La funci�n retorna:
           0.- Si todo es correcto
          codigo error: - Si hay error o no cumple alguna validaci�n
      ********************************************************************************************************************************/
      v_csujeto      NUMBER;
      v_anyo         NUMBER;
      v_ctipgar      NUMBER;
      num_err        NUMBER;
      error          EXCEPTION;
   BEGIN
 ------------------------------------------------------------------------------------------------------
-- validamos el l�mite de residentes
------------------------------------------------------------------------------------------------------
 -- se busca el valor de csujeto
      IF psperson IS NULL THEN
         IF pcpais IS NULL THEN
            num_err := 140384;   -- Es obligatorio informar el pais
            RAISE error;
         END IF;
      END IF;

      /*
      IF pcpais IS NOT NULL THEN
         v_csujeto := pac_personas.ff_calcula_tipo_sujeto(pcpais);
      ELSE -- si cpais is null, psperson ser� not null
        SELECT csujeto INTO v_csujeto FROM personas WHERE sperson = psperson;
      END IF;

      IF v_csujeto IS NOT NULL THEN
          -- validamos el l�mite de residentes
        IF v_csujeto IN (690, 990)  -- NO RESIDENTES
             AND NVL(f_parproductos_v(psproduc, 'RESIDENTES'),0) = 4  -- el producto admite no resientes con l�mite de capital
            AND NVL(f_parproductos_v(psproduc, 'LIMITE_RESIDENTES'),0) > picapital  --limite mayor que el capital
        THEN
            RETURN 180200; -- Importe m�nimo para no residentes:
        END IF;

      ELSE
          num_err := 180199; -- Tipo de Sujeto incorrecto
          Raise error;
      END IF;
      */

      -- Si la garant�a es la Prima per�odo seg�n forma de pago y se est� en modo suplemetno, entonces no se debe
      -- validar la prima
      IF psperson IS NOT NULL
         AND NVL(f_parproductos_v(psproduc, 'APORTMAXIMAS'), 0) = 1 THEN
         IF NOT(pcgarant = pac_calc_comu.f_cod_garantia(psproduc, 3, NULL, v_ctipgar)
                AND ptipo = 2) THEN
            v_anyo := TO_CHAR(pfefecto, 'yyyy');

            IF picapital > NVL(pac_ppa_planes.ff_importe_por_aportar_persona(v_anyo, NULL,
                                                                             NULL, psperson,
                                                                             1),
                               0) THEN
               num_err := 180221;   -- Se supera las aportaciones m�ximas por a�o.
               RAISE error;
            END IF;
         END IF;
      END IF;

      -- RSC 30/01/2008 PIAS ----------------------------------------------------------------------
      -- Si se trata de una validaci�n en un producto PIAS se debe realizar la validaci�n de cumulos
      IF psperson IS NOT NULL
         AND NVL(f_parproductos_v(psproduc, 'TIPO_LIMITE'), 0) <> 0 THEN
         v_anyo := TO_CHAR(pfefecto, 'yyyy');

         IF picapital >
               NVL
                  (pac_limites_ahorro.ff_importe_por_aportar_persona
                                                             (v_anyo,
                                                              f_parproductos_v(psproduc,
                                                                               'TIPO_LIMITE'),
                                                              psperson, pfefecto),
                   0) THEN
            num_err := 180742;   -- Se supera la aportaci�n m�xima por a�o o total en la totalidad de p�lizas.
            RAISE error;
         END IF;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN error THEN
         RETURN num_err;
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_capital_persona', NULL,
                     'parametros: ptipo =' || ptipo || ' sproduc =' || psproduc
                     || ' pcactivi =' || pcactivi || ' pcgarant =' || pcgarant
                     || ' picapital =' || picapital || ' psperson =' || psperson,
                     SQLERRM);
         RETURN 108190;   -- error general
   END f_valida_capital_persona;

   FUNCTION f_valida_fefecto(psproduc IN NUMBER, pfefecto IN DATE)
      RETURN NUMBER IS
      /*********************************************************************************************************************************
         11-1-2007.  CSI
        Vida Ahorro
        Funci�n que calcula si la fecha de efecto de la p�liza est� permitida en la parametrizaci�n del producto.
         Se le pasa como par�metro el identificador del producto y la fecha de efecto de la p�liza.
        Valida: fecha efecto informada
                 fecha no demasiado antigua
                 fecha no est� fuera de l�mites

         La funci�n retorna:
           0.- Si todo es correcto
          codigo error: - Si hay error o no cumple alguna validaci�n
      ********************************************************************************************************************************/
      vdias_a        NUMBER;
      vdias_d        NUMBER;
      vmeses_a       NUMBER;
      vmeses_d       NUMBER;
      num_err        NUMBER;
   BEGIN
      num_err := f_parproductos(psproduc, 'DIASATRAS', vdias_a);
      num_err := f_parproductos(psproduc, 'DIASDESPU', vdias_d);
      -- 34866/206242
      vmeses_a := NVL(f_parproductos_v(psproduc, 'MESESATRAS'), 0);
      vmeses_d := NVL(f_parproductos_v(psproduc, 'MESESDESPU'), 0);

      -- Calcular v_dias:
      -- Si la fecha de efecto esta en diferente a�o al actual de la emisi�n de la
      -- la propuesta, solo se permitir� retroactividad hasta el principio del a�o:
      --
      IF vmeses_a != 0 THEN
         IF (ADD_MONTHS(pfefecto, vmeses_a) >= TRUNC(f_sysdate)) THEN
            IF TO_NUMBER(TO_CHAR(pfefecto, 'YYYY')) <> TO_NUMBER(TO_CHAR(f_sysdate, 'YYYY')) THEN
               vmeses_a := NULL;
               vdias_a := TRUNC(f_sysdate
                                - TO_DATE('01/01/' || TO_CHAR(f_sysdate, 'YYYY'),
                                          'dd/mm/yyyy'));
            ELSE
               vmeses_a := NULL;
               vdias_a := TRUNC(f_sysdate - pfefecto);
            END IF;
         ELSE
            IF ADD_MONTHS(pfefecto, vmeses_a) < TRUNC(f_sysdate) THEN
               vmeses_a := NULL;
               vdias_a := f_sysdate - ADD_MONTHS(f_sysdate, -1 * vmeses_a);
            END IF;
         END IF;
      END IF;

      -- Calcular v_dias_d
      IF (vmeses_d != 0) THEN
         vdias_d := TRUNC(ADD_MONTHS(f_sysdate, vmeses_d) - f_sysdate);
      END IF;

      -- Validar retroactividad
      --
      IF vdias_d = -1 THEN   --primer dia del mes siguiente
         vdias_d := LAST_DAY(f_sysdate) + 1 - f_sysdate;
      END IF;

      IF pfefecto IS NULL THEN
         RETURN 104532;   -- Fecha efecto obligatoria
      ELSIF pfefecto + NVL(vdias_a, 0) < TRUNC(f_sysdate) THEN
         RETURN 109909;   -- La fecha es demasiado antigua. Consulte a la central
      ELSIF pfefecto > TRUNC(f_sysdate) + NVL(vdias_d, 0) THEN
         RETURN 101490;   -- Fecha fuera de l�mites
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_fefecto', NULL,
                     'parametros: sproduc =' || psproduc || ' pfefecto =' || pfefecto,
                     SQLERRM);
         RETURN 108190;   -- error general
   END f_valida_fefecto;

   FUNCTION f_valida_duracion(
      psproduc IN NUMBER,
      pfnacimi IN DATE,
      pfefecto IN DATE,
      pnduraci IN NUMBER,
      pfvencim IN DATE)
      RETURN NUMBER IS
      /*********************************************************************************************************************************
         11-1-2007.  CSI
        Vida Ahorro
        Funci�n que valida la duraci�n y fecha de vencimiento de la p�liza seg�n la parametrizaci�n del producto.
         Se le pasa como par�metro el identificador del producto, la fecha de nacimieto, la fecha de efecto de la p�liza,
         la duraci�n de la p�liza (en a�os) y la fecha de vencimiento de la p�liza.
        Valida: la duraci�n del per�odo seg�n la parametrizaci�n del producto
                 la fecha de vencimiento de la p�liza
                 Calcula el vencimiento m�nimo y vencimiento m�ximo seg�n el producto

         La funci�n retorna:
           0.- Si todo es correcto
          codigo error: - Si hay error o no cumple alguna validaci�n
      ********************************************************************************************************************************/
      num_err        NUMBER;
      v_cduraci      NUMBER;
      v_nduraci      NUMBER;
      v_fvencim      DATE;
   BEGIN
      SELECT cduraci
        INTO v_cduraci
        FROM productos
       WHERE sproduc = psproduc;

      v_nduraci := pnduraci;
      v_fvencim := pfvencim;

      IF NVL(f_parproductos_v(psproduc, 'DURPER'), 0) = 1 THEN
         num_err := f_valida_durper(psproduc, v_nduraci, pfefecto);

         IF num_err <> 0 THEN
            RETURN num_err;
         END IF;

         v_nduraci := NULL;   -- para que calcule la duraci�n m�nima
      END IF;

      num_err := pac_calc_comu.f_calcula_fvencim_nduraci(psproduc, pfnacimi, pfefecto,
                                                         v_cduraci, v_nduraci, v_fvencim);

      IF num_err <> 0 THEN
         RETURN num_err;
      END IF;

      IF v_fvencim IS NOT NULL THEN
         IF v_fvencim <= pfefecto THEN
            RETURN 100022;   -- La fecha de venimiento no puede ser m�s grande que la fecha de efecto
         END IF;
      ELSE
         -- Bug 23117 - RSC - 30/07/2012 - LCOL_T010-LCOL - POLIZAS RENOVABLES Y VIGENCIA DIFERENTE A UN A�O (a�adimos 6)
         IF v_cduraci NOT IN(0, 4, 6) THEN
            RETURN 151288;   -- La duraci�n es obligatoria
         END IF;
      END IF;

      num_err := f_validar_duracion(psproduc, NULL, pfnacimi, pfefecto, v_fvencim);

      IF num_err <> 0 THEN
         RETURN num_err;
      END IF;

      RETURN 0;   -- Todo OK
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_duracion', NULL,
                     'parametros: sproduc =' || psproduc || ' pfnacimi =' || pfnacimi
                     || ' pfefecto =' || pfefecto || ' pcduraci=' || pnduraci || ' pfvencim='
                     || pfvencim,
                     SQLERRM);
         RETURN 108190;   -- error general
   END f_valida_duracion;

   FUNCTION f_valida_idioma(pcidioma IN NUMBER)
      RETURN NUMBER IS
   /*********************************************************************************************************************************
      11-1-2007.  CSI
     Vida Ahorro
     Funci�n que valida el idioma de la p�liza seg�n la parametrizaci�n del producto.
      Se le pasa como par�metro el c�digo del idioma.
     Valida: el idioma no puede ser nulo

      La funci�n retorna:
        0.- Si todo es correcto
       codigo error: - Si hay error o no cumple alguna validaci�n
   ********************************************************************************************************************************/
   BEGIN
      IF pcidioma IS NULL THEN
         RETURN 102242;   -- Idioma obligatorio
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_idioma', NULL,
                     'parametros: pcidioma =' || pcidioma, SQLERRM);
         RETURN 108190;   -- error general
   END f_valida_idioma;

   FUNCTION f_valida_ccc(pcbancar IN VARCHAR2, pctipban IN NUMBER)
      RETURN NUMBER IS
      /*********************************************************************************************************************************
         11-1-2007.  CSI
        Vida Ahorro
        Funci�n que calcula si la cuenta bancaria es correcta y si est� permitida en la parametrizaci�n del producto.
         Se le pasa como par�metro el c�digo de cuenta.
        Valida: la cuenta corriente no puede ser nula
                 la cuenta corriente debe v�lida

         La funci�n retorna:
           0.- Si todo es correcto
          codigo error: - Si hay error o no cumple alguna validaci�n
      ********************************************************************************************************************************/
      num_err        NUMBER;
      dummy          NUMBER;
   BEGIN
      IF pcbancar IS NULL THEN
         RETURN 151103;   --cuenta corriente obligatoria
      ELSE
         num_err := f_ccc(pcbancar, pctipban, dummy, dummy);

         IF num_err <> 0 THEN
            RETURN num_err;
         END IF;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_ccc', NULL,
                     'parametros: pcbancar =' || pcbancar, SQLERRM);
         RETURN 108190;   -- error general
   END f_valida_ccc;

   FUNCTION f_valida_poliza_renova(psseguro IN NUMBER, ptipo IN NUMBER)
      RETURN NUMBER IS
      /*********************************************************************************************************************************
         18-4-2007.  CSI
        Vida Ahorro
        Funci�n que validar� si una p�liza es apta para hacer la simulaci�n de la renovaci�n/revisi�n.
         Se le pasa como par�metro:
                 psseguro - Identificador de la p�liza
                 ptipo - Tipo de validaci�n:
                                  . 1 = Simulaci�n Renovaci�n/Revisi�n
                                  . 2 = Renovaci�n/Revisi�n
        Valida: . que la p�liza pertenezca a un producto que permite la simulaci�n de renovaci�n/revisi�n seg�n
                   el par�metro SIMRENOVA (0 - No; 1 - S�)
                 . que la p�liza est� en per�odo de simulaci�n o renovaci�n seg�n el par�metro 'PERIODO_SIMRENOVA'
                   o 'PERIODO_RENOVA'. El valor de dichos par�metros son meses.

         La funci�n retorna:
           0.- Si todo es correcto
          codigo error: - Si hay error o no cumple alguna validaci�n
      ********************************************************************************************************************************/
      v_sproduc      NUMBER;
      n_periodo      NUMBER;
      num_dias       NUMBER;
      vcsituac       NUMBER;   --JRH 03/2008 Incidencias 11. La poliza debe estar activa.
      vcreteni       NUMBER;
   BEGIN
      BEGIN
         SELECT sproduc, csituac, creteni
           INTO v_sproduc, vcsituac, vcreteni
           FROM seguros
          WHERE sseguro = psseguro;
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            RETURN 151834;   -- Faltan datos. Debe indicar el producto.
         WHEN OTHERS THEN
            RETURN 108190;   -- Error general
      END;

      IF (vcreteni <> 0) THEN
         RETURN 103816;   -- P�liza retenida
      END IF;

      IF (vcsituac <> 0) THEN
         RETURN 102662;   -- P�liza no vigente
      END IF;

      -- Valida que la poliza pertenece a un producto que permite la simulaci�n de renovaci�n/revisi�n seg�n
      -- el par�metro 'SIMRENOVA' (0 - No; 1 - Si)
      IF ptipo = 1 THEN   -- Simulaci�n Renovaci�n/Revisi�n
         IF NVL(f_parproductos_v(v_sproduc, 'SIMRENOVA'), 0) <> 1 THEN
            RETURN 180227;   -- El producto de la p�liza no permite la simulaci�n de la renovaci�n/revisi�n
         END IF;
      END IF;

      -- Valida que la poliza est� en per�odo de simulaci�n o renovaci�n seg�n el par�metro 'PERIODO_SIMRENOVA'
      -- o 'PERIODO_RENOVA'. El valor de dichos par�metros ser�n meses.
      IF ptipo = 1 THEN   -- Simulaci�n Renovaci�n/Revisi�n
         n_periodo := NVL(f_parproductos_v(v_sproduc, 'PERIODO_SIMRENOVA'), 0);
      ELSIF ptipo = 2 THEN   -- Renovaci�n/Revisi�n
         n_periodo := NVL(f_parproductos_v(v_sproduc, 'PERIODO_RENOVA'), 0);
      END IF;

      SELECT TRUNC(frevisio) - TRUNC(ADD_MONTHS(f_sysdate, n_periodo))
        INTO num_dias
        FROM seguros_aho
       WHERE sseguro = psseguro;

      IF num_dias > 0 THEN
         IF ptipo = 1 THEN   -- Simulaci�n Renovaci�n/Revisi�n
            RETURN 180225;   -- La operaci�n s�lo se permite durante los 6 meses anteriores a la renovaci�n/revisi�n de la p�liza.
         ELSIF ptipo = 2 THEN   -- Renovaci�n/Revisi�n
            RETURN 180226;   -- La operaci�n s�lo se permite durante los 2 meses anteriores a la renovaci�n/revisi�n de la p�liza.
         END IF;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_poliza_renova', NULL,
                     'parametros: psseguro =' || psseguro || ' ptipo = ' || ptipo, SQLERRM);
         RETURN 108190;   -- Error general
   END f_valida_poliza_renova;

   FUNCTION f_valida_duracion_renova(psseguro IN NUMBER, pndurper IN NUMBER)
      RETURN NUMBER IS
      /*********************************************************************************************************************************
         18-4-2007.  CSI
        Vida Ahorro
        Funci�n que valida la duraci�n de la renovaci�n seg�n la parametrizaci�n del producto, teniendo en cuenta
         la duraci�n m�xima y m�nima permitida. Es decir, no puede haber ning�n per�odo con duraci�n menor a la
         m�nima permitida.
         Se le pasa como par�metro:
                 psseguro - Identificador de la p�liza
                 pndurper - Duraci�n per�odo
        Valida: . Busca la duraci�n m�xima de la p�liza (seguros.nduraci)
                 . Busca la duraci�n m�nima permitida en DURPERIODOPROD
                 . Si durmax - (pnduraci + a�os transcurridos) > durmin entonces
                      Return 0
                   si no
                      Return slitera = 'Duraci�n no permitida'
                   Fin si

         La funci�n retorna:
           0.- Si todo es correcto
          codigo error: - Si hay error o no cumple alguna validaci�n
      ********************************************************************************************************************************/
      v_nduraci      NUMBER;
      v_sproduc      NUMBER;
      v_min_ndurper  NUMBER;
      v_max_ndurper  NUMBER;
      v_frevisio     DATE;
      v_fefecto      DATE;
      tipdur         NUMBER;
      num_err        NUMBER;
   BEGIN
      IF NVL(f_parproductos_v(v_sproduc, 'DURPER'), 0) = 1 THEN
         BEGIN
            SELECT sproduc, nduraci, fefecto
              INTO v_sproduc, v_nduraci, v_fefecto
              FROM seguros
             WHERE sseguro = psseguro;
         EXCEPTION
            WHEN NO_DATA_FOUND THEN
               RETURN 120078;   -- Falta informar la duraci�n de la p�liza
            WHEN OTHERS THEN
               RETURN 108190;   -- Error general
         END;

         SELECT cduraci
           INTO tipdur
           FROM productos
          WHERE sproduc = v_sproduc;

         SELECT MIN(ndurper)
           INTO v_min_ndurper
           FROM durperiodoprod
          WHERE sproduc = v_sproduc
            AND ffin IS NULL;

         SELECT frevisio
           INTO v_frevisio
           FROM seguros_aho
          WHERE sseguro = psseguro;

         IF (v_nduraci -(pndurper +(TO_CHAR(v_frevisio, 'yyyy') - TO_CHAR(v_fefecto, 'yyyy')))) >
                                                                                  v_min_ndurper
            OR(v_nduraci
               -(pndurper +(TO_CHAR(v_frevisio, 'yyyy') - TO_CHAR(v_fefecto, 'yyyy')))) = 0 THEN
            RETURN 0;
         ELSE
            IF tipdur = 4 THEN   --JRH IMP Por el momentovSi es vitalicio el contrato no importa la validaci�n anterior
               RETURN 0;
            ELSE
               RETURN 180198;   -- Duraci�n no permitida en el producto
            END IF;
         END IF;
      ELSE
         SELECT sproduc
           INTO v_sproduc
           FROM seguros
          WHERE sseguro = psseguro;

         num_err := pac_val_comu.f_valida_durper(v_sproduc, pndurper, TRUNC(f_sysdate));

         IF num_err <> 0 THEN
            RETURN num_err;
         END IF;

         RETURN 0;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_duracion_renova', NULL,
                     'parametros: psseguro =' || psseguro || ' pndurper = ' || pndurper,
                     SQLERRM);
         RETURN 108190;   -- Error general
   END f_valida_duracion_renova;

   FUNCTION f_valida_agente(pcagente IN NUMBER)
      RETURN NUMBER IS
      /*********************************************************************************************************************************
         11-1-2007.  CSI
        Vida Ahorro
        Funci�n que valida que el c�digo de la oficina est� informado y que la oficina est� vigente.
         Se le pasa como par�metro el c�digo del agente.
        Valida: el c�digo del agente no puede ser nulo
                 el c�digo del agente debe estar vigente

         La funci�n retorna:
           0.- Si todo es correcto
          codigo error: - Si hay error o no cumple alguna validaci�n
      ********************************************************************************************************************************/
      num_err        NUMBER;
      v_correcto     NUMBER;
      dummy          NUMBER;
   BEGIN
      IF pcagente IS NULL THEN
         RETURN 180252;   -- Es obligatorio introducir la oficina
      ELSE
         num_err := pac_redcomercial.agente_valido(pcagente, 1, f_sysdate, NULL, v_correcto);

         IF v_correcto <> 0 THEN   -- 0 = Agente valido
            RETURN 108010;   -- Agente ya no vigente
         END IF;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_agente', NULL,
                     'parametros: pcagente =' || pcagente, SQLERRM);
         RETURN 108190;   -- error general
   END f_valida_agente;

   FUNCTION f_valida_beneficiario(psproduc IN NUMBER, psclaben IN NUMBER, ptclaben IN VARCHAR2)
      RETURN NUMBER IS
      /*********************************************************************************************************************************
         11-1-2007.  CSI
        Vida Ahorro
        Funci�n que valida que el c�digo de la oficina est� informado y que la oficina est� vigente.
         Se le pasa como par�metro el c�digo del agente.
        Valida: el c�digo del agente no puede ser nulo
                 el c�digo del agente debe estar vigente

         La funci�n retorna:
           0.- Si todo es correcto
          codigo error: - Si hay error o no cumple alguna validaci�n
      ********************************************************************************************************************************/
      num_err        NUMBER;
      v_cont         NUMBER;
   BEGIN
      IF psclaben IS NULL THEN
         IF ptclaben IS NULL THEN
            RETURN 120082;   -- Falta informar el beneficiario
         END IF;
      ELSE
         BEGIN
            SELECT COUNT(*)
              INTO v_cont
              FROM claubenpro
             WHERE sproduc = psproduc
               AND sclaben = psclaben;

            IF v_cont = 0 THEN
               RETURN 151867;   -- El producto no tiene cl�usulas de beneficiario
            END IF;
         EXCEPTION
            WHEN OTHERS THEN
               RETURN 151867;   -- El producto no tiene cl�usulas de beneficiario
         END;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_beneficiario', NULL,
                     'parametros: psproduc =' || psproduc || '  psclaben = ' || psclaben
                     || '  ptclaben = ' || ptclaben,
                     SQLERRM);
         RETURN 108190;   -- error general
   END f_valida_beneficiario;

   -- MSR 7/6/2007
   -- Torna el literal d'av�s corresponent a
   -- Par�metres entrada:
   --    psSeguro : N�mero de p�lissa                (obligatori)
   -- Torna :
   --    0 si oficina terminalista = oficina del contrate
   --    altrament el literal amb el missatge a mostrar
   --
   FUNCTION f_avisos(psseguro IN seguros.sseguro%TYPE)
      RETURN literales.slitera%TYPE IS
   BEGIN
      RETURN(CASE pac_avisos.f_oficinagestion(psseguro)
                WHEN 1 THEN 0
                ELSE 180353
             END);
   END;

   -- MSR 20/9/2007
   -- Torna si la una p�lissa te una clasula de no penalitzaci� al seu darrer moviment
   -- Par�metres entrada:
   --    psSeguro : Identificador de p�lissa                (obligatori)
   -- Torna :
   --    1 si te clausula de no penalitzaci�
   --    0 si no te clausula de no penalitzaci�
   --
   FUNCTION f_clausula_no_penalizacion(psseguro IN seguros.sseguro%TYPE)
      RETURN penaliseg.niniran%TYPE IS
      v              penaliseg.niniran%TYPE;
   BEGIN
      SELECT NVL(MIN(z.niniran), 0)
        INTO v
        FROM penaliseg z
       WHERE z.nmovimi = (SELECT MAX(ps.nmovimi)
                            FROM penaliseg ps
                           WHERE ps.sseguro = psseguro)
         AND z.sseguro = psseguro
         AND z.ppenali = 0
         AND z.niniran >= 1;

      RETURN v;
   END;

   FUNCTION f_valida_persona_fallecida(psperson IN NUMBER)
      RETURN NUMBER IS
      /*********************************************************************************************************************************
         25-9-2007.  CSI
        Vida Ahorro
        Funci�n que valida si una persona est� fallecida o no.
         Se le pasa como par�metro el c�digo de la persona.

         La funci�n retorna:
           0.- Si todo es correcto (la persona no est� fallecida)
          codigo error: - Si hay error o no cumple alguna validaci�n (si la persona est� fallecida)
      ********************************************************************************************************************************/
      v_cestado      NUMBER;
   BEGIN
      SELECT NVL(cestado, 0)
        INTO v_cestado
        FROM personas
       WHERE sperson = psperson;

      IF v_cestado <> 2 THEN
         RETURN 0;   -- Persona NO Fallecida
      ELSE
         RETURN 101253;   -- Persona fallecida
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.f_valida_persona_fallecida', NULL,
                     'parametros: psperson =' || psperson, SQLERRM);
         RETURN 108190;   -- error general
   END f_valida_persona_fallecida;

   --
   -- La funci� retorna 0 si tot �s correcte
   --                  codi error si no es compleix alguna validaci�
   --  Informar psPerson �nicamente cuando se haya realizado la b�squeda por asegurado.
   --
   FUNCTION f_valida_permite_impr_libreta(
      psseguro seguros.sseguro%TYPE,
      psperson IN personas.sperson%TYPE)
      RETURN NUMBER IS
      v_sproduc      NUMBER;
      v_error        NUMBER;
   BEGIN
      v_error := 0;

      FOR rseguros IN (SELECT csituac, cagrpro
                         FROM seguros
                        WHERE sseguro = psseguro) LOOP
         IF rseguros.csituac NOT IN(0, 1, 2, 3, 5, 6, 11) THEN
            v_error := 180436;   -- La p�lissa no est� en situaci� d'imprimir.
         END IF;

         BEGIN
            SELECT sproduc
              INTO v_sproduc
              FROM seguros
             WHERE sseguro = psseguro;
         EXCEPTION
            WHEN OTHERS THEN
               v_error := 101919;   -- Error al leer datos de la tabla SEGUROS
         END;

         IF NVL(f_parproductos_v(v_sproduc, 'IMP_LIBRETA'), 0) = 0 THEN   -- 0 = No permite imprimir libreta, 1 = S� permite imprimir libreta
            v_error := 180564;   -- El producto no tiene asociada libreta
         END IF;
      END LOOP;

      IF v_error = 0
         AND psperson IS NOT NULL THEN
         FOR rasegurados IN (SELECT ffecfin
                               FROM asegurados
                              WHERE sperson = psperson) LOOP
            IF rasegurados.ffecfin IS NOT NULL THEN
               v_error := 180438;   --L'assegurat ha estat donat de baixa de la p�lissa.
            END IF;
         END LOOP;
      END IF;

      RETURN v_error;
   END f_valida_permite_impr_libreta;

   /********************************************************************************
      Funci�n que valida si ha de imprimirse el cuestionario de salud.
      param   in  ppulsado: codigo de si se ha pulsado el boton
      param   in  pmodo: modo 'ALT','SIM' o 'SUP'
      param   in  psseguro: codigo seguro
      param   in  pnriesgo: codigo del riesgo
      Devolviendo 0 si no hace falta imprimirlo � 1 si hay que imprimirlo
   *********************************************************************************/
   FUNCTION f_valida_cuest_salud(
      ppulsado IN NUMBER,
      pmodo IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER)
      RETURN NUMBER IS
      v_cap_ant      NUMBER;
      v_cap_act      NUMBER;
   BEGIN
      -- Bug 9051 - 18/02/2009 - AMC
      IF ppulsado = 1 THEN
         RETURN 0;
      ELSE
         IF pmodo = 'SIM' THEN
            RETURN 0;
         ELSIF pmodo = 'ALT' THEN
            RETURN 1;
         ELSIF pmodo = 'SUP' THEN
            SELECT SUM(icapital)
              INTO v_cap_ant
              FROM garanseg
             WHERE sseguro = psseguro
               AND nriesgo = pnriesgo
               AND ffinefe IS NULL;

            SELECT SUM(g.icapital)
              INTO v_cap_act
              FROM estgaranseg g, estseguros s
             WHERE g.sseguro = s.sseguro
               AND s.ssegpol = psseguro
               AND g.nriesgo = pnriesgo;

            IF v_cap_ant < v_cap_act THEN
               RETURN 1;
            ELSE
               RETURN 0;
            END IF;
         END IF;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_val_comu.F_Valida_Cuest_Salud', 1,
                     'parametros: ppulsado =' || ppulsado || ' pmodo = ' || pmodo
                     || ' psseguro =' || psseguro || ' pnriesgo =' || pnriesgo,
                     SQLERRM);
         RETURN 108190;   -- error general
   END f_valida_cuest_salud;
END pac_val_comu;

/

  GRANT EXECUTE ON "AXIS"."PAC_VAL_COMU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_VAL_COMU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_VAL_COMU" TO "PROGRAMADORESCSI";
