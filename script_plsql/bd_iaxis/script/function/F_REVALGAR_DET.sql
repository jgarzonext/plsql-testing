--------------------------------------------------------
--  DDL for Function F_REVALGAR_DET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_REVALGAR_DET" (
   psseguro IN NUMBER,
   pcmanual IN NUMBER,
   pcgarant IN NUMBER,
   pcactivi IN NUMBER,
   pcramo IN NUMBER,
   pcmodali IN NUMBER,
   pctipseg IN NUMBER,
   pccolect IN NUMBER,
   picapital IN NUMBER,
   piprianu IN NUMBER,
   pcrevali IN NUMBER,
   pirevali IN NUMBER,
   pprevali IN NUMBER,
   pmes IN NUMBER,
   pany IN NUMBER,
   prevcap OUT NUMBER,
   prevprima OUT NUMBER,
   pfactor OUT NUMBER,
   pnriesgo IN NUMBER DEFAULT 1,
   pndetgar IN NUMBER DEFAULT NULL)
   RETURN NUMBER AUTHID CURRENT_USER IS
/***********************************************************************
   F_REVALGAR : Retorna el capital revalorizado.
   ALLIBCTR - Gesti�n de datos referentes a los seguros
   Modificaci�: Se a�ade otro caso de revalorizaci�n y se
                distingue si la tarifa es manual. Si es as� se revaloriza
                tambi�n la prima.
   Modificaci�: Se a�ade el caso de revalorizaci�n de prima y de capital
   Modificaci�: Se a�ade el caso pcmanual=3
   Modificaci�: Se a�ade el tipo crevali = 5. Ser� revalorizaci�n seg�n
                el IPC anual (no el mensual)
   Modificaci�: Se a�ade el caso pcmanual = 4.(autom�tico. Revaloriza prima)
   Modificaci�: Se controla que retorne el mismo capital que entra en los casos
                que el pcmanual sea 1 � 4, hasta ahora retornaba NULL.
    -- Bug 9524: APR - Renovaci�n de cartera: se a�aden los tipos crevali 8 y 9
        que implican revalorizaci�n de prima y crevali = 7 (adaptaci�n fiscal)
        Se tiene en cuenta el m�ximo de prima en el caso de crevali 8 y 9
        Se a�ade el par�metro pnriesgo para poder pasarlo a la funci�n f_adaptacion_fiscal
***********************************************************************/
   ppicapital     NUMBER(13, 2);   --   GARANSEG.ICAPITAL%TYPE;
   ppipc          NUMBER;
   ppipc_ant      NUMBER;
   ppsalida       NUMBER;
   procrevali     NUMBER;
   proprevali     NUMBER;
   proirevali     NUMBER;
   num_err        NUMBER;
   v_modo         NUMBER;

-- Bug 9794 - YIL - 21/04/2009 - Se da de alta una nueva funci�n f_adaptacion_fiscal para controlar la prima m�xima
--                               seg�n la fiscalidad establecida (LIMITES_AHORRO)
   FUNCTION f_adaptacion_fiscal(
      psseguro IN NUMBER,
      pcgarant IN NUMBER,
      pmes IN NUMBER,
      pany IN NUMBER,
      pprimarev OUT NUMBER,
      pndetgar IN NUMBER DEFAULT NULL)
      RETURN NUMBER IS
/***********************************************************************
    F_adaptacion fiscal: calcula la nueva prima seg�n el l�mite fiscal
       -- de prima establecido

    revisar los returns
    poner p_tab_error

***********************************************************************/
      v_sproduc      productos.sproduc%TYPE;
      v_limite       limites_ahorro.iaportanual%TYPE;
      v_tot_prima    garanseg.iprianu%TYPE;
      v_factor       NUMBER;
      v_fecha        DATE;
      num_err        NUMBER;
      importe        NUMBER;
      imp_restar     NUMBER;
      v_param        VARCHAR2(1000)
         := 'sseguro =' || psseguro || ' pcgarant =' || pcgarant || ' pmes =' || pmes
            || ' pany =' || pany;
      v_traza        NUMBER;
      -- Bug 10350 - 13/07/2009 - RSC - Detalle garant�as (Tarificaci�n)
      v_fecha2       DATE;
      v_limite2      limites_ahorro.iaportanual%TYPE;
      -- Fin bug 10350

      -- Bug 10759 - RSC - 21/07/2009 - APR - Revalorizaci�n tipo Adaptaci�n Fiscal 'proporcional'
      v_prima        garanseg.iprianu%TYPE;
      v_maximo_fiscal pregunseg.crespue%TYPE;
      imp_restar1    NUMBER;
      imp_restar2    NUMBER;
      importe1       NUMBER;
      importe2       NUMBER;
   -- Fin Bug 10759
   BEGIN
      v_traza := 1;

      BEGIN
         SELECT sproduc
           INTO v_sproduc
           FROM seguros
          WHERE sseguro = psseguro;
      EXCEPTION
         WHEN OTHERS THEN
            p_tab_error(f_sysdate, f_user, 'F_REVALGAR.F_ADAPTACION_FISCAL', v_traza, v_param,
                        SQLERRM);
            RETURN 101919;   -- ERROR AL LEER DATOS DE LA TABLA SEGUROS
      END;

      -- Primero debemos mirar el l�mite de prima establecido para ese a�o
      v_fecha := TRUNC(TO_DATE(LPAD(pmes, 2, '0') || pany, 'MMYYYY'));
      v_traza := 2;
      v_limite :=
         pac_limites_ahorro.ff_iaportanual
            (NVL
                (pac_parametros.f_parproducto_n(v_sproduc, 'TIPO_LIMITE_PRIMA'),   /*-- BUG 10231 - 27/05/2009 - ETM -L�mite de aportaciones en productos fiscales--TIPO_LIMITE */
                 0),
             v_fecha);
      -- Bug 10350 - 13/07/2009 - RSC - Detalle garant�as (Tarificaci�n)
      -- Primero debemos mirar el l�mite de prima establecido para ese a�o
      v_fecha2 := TRUNC(TO_DATE(LPAD(pmes, 2, '0') ||(pany - 1), 'MMYYYY'));
      v_traza := 22;
      v_limite2 :=
         pac_limites_ahorro.ff_iaportanual
            (NVL
                (pac_parametros.f_parproducto_n(v_sproduc, 'TIPO_LIMITE_PRIMA'),   /*-- BUG 10231 - 27/05/2009 - ETM -L�mite de aportaciones en productos fiscales--TIPO_LIMITE */
                 0),
             v_fecha2);

      -- Fin Bug 10350

      -- Bug 10759 - RSC - 21/07/2009 - APR - Revalorizaci�n tipo Adaptaci�n Fiscal 'proporcional'
      -- Revisar la utilizaci�n de esta pregunta. Debe ser generico!!! ???
      BEGIN
         SELECT crespue
           INTO v_maximo_fiscal
           FROM pregunseg
          WHERE sseguro = psseguro
            AND nriesgo = pnriesgo
            AND cpregun = 9002   -- Pregunta fija
            AND nmovimi = (SELECT MAX(nmovimi)
                             FROM pregunseg p2
                            WHERE p2.sseguro = pregunseg.sseguro
                              AND p2.nriesgo = pregunseg.nriesgo
                              AND p2.cpregun = pregunseg.cpregun);
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            v_maximo_fiscal := 1;   -- Por defecto m�ximo fiscal
      END;

      IF v_maximo_fiscal = 1 THEN
         -- Fin Bug 10759
         IF (v_limite - v_limite2) IS NOT NULL THEN
            v_traza := 3;
            -- El l�mite establecido es con impuestos, tasas y forfait. Hay que descontarlo
            -- Se hace en el pac_porpio para que cada instalaci�n reste sus impuestos, tasas, etc...
            -- Bug 10350 - RSC - 13/07/2009 - Detalle de garant�as (Tarificaci�n)
            -- Para revalorizaciones no se tiene en cuenta el Forfait (Par�metro 0)
            num_err := pac_propio.f_restar_limite_anual(NULL, psseguro, pcgarant,
                                                        (v_limite - v_limite2), v_fecha,
                                                        imp_restar, 0);

            -- Bug 10350
            IF num_err <> 0 THEN
               RETURN num_err;
            ELSE
               importe := (v_limite - v_limite2) - NVL(imp_restar, 0);
               -- Segundo: averiguar el peso de la prima de nuestra garant�a sobre el total de prima de las garant�as que
               -- aplican l�mite
               v_traza := 4;

               BEGIN
                  SELECT SUM(g.iprianu)
                    INTO v_tot_prima
                    FROM garanseg g, garanpro gp, seguros s
                   WHERE g.sseguro = s.sseguro
                     AND s.sseguro = psseguro
                     AND s.sproduc = gp.sproduc
                     AND g.cgarant = gp.cgarant
                     AND s.cactivi = gp.cactivi
                     AND g.ffinefe IS NULL
                     AND g.nriesgo = pnriesgo
                     AND gp.cbasica = 1;

                  -- Bug 10350 - 17/07/2009 - RSC - Detalle de garant�as (Tarificaci�n)
                  IF v_tot_prima = 0 THEN
                     pprimarev := NULL;
                     RETURN 0;
                  END IF;

                  -- Fin Bug 10350

                  -- Bug 10350 - 19/06/2009 - RSC - Detalle de garant�as (tarificaci�n)
                  -- Reajuste de SELECT
                  SELECT NVL(d.iprianu, g.iprianu) / v_tot_prima
                    INTO v_factor
                    FROM garanseg g, detgaranseg d
                   WHERE g.sseguro = psseguro
                     AND g.cgarant = pcgarant
                     AND g.nriesgo = pnriesgo
                     AND g.sseguro = d.sseguro(+)
                     AND g.cgarant = d.cgarant(+)
                     AND g.nriesgo = d.nriesgo(+)
                     AND g.nmovimi = d.nmovimi(+)
                     AND g.finiefe = d.finiefe(+)
                     AND(d.ndetgar = pndetgar
                         OR d.ndetgar IS NULL
                         OR pndetgar IS NULL)
                     AND g.ffinefe IS NULL;
               -- Fin Bug 10350
               EXCEPTION
                  WHEN OTHERS THEN
                     p_tab_error(f_sysdate, f_user, 'F_REVALGAR.F_ADAPTACION_FISCAL', v_traza,
                                 v_param, SQLERRM);
                     RETURN 140999;   -- Error no controlado
               END;

               -- La nueva prima se calcula aplicando el factor al nuevo l�mite anual
               pprimarev := f_round(importe * v_factor);
            END IF;
         ELSE
            pprimarev := NULL;   -- no hay prima l�mite
         END IF;

         -- Bug 10350 - RSC - 06/08/2009 - Detalle de garant�a (Tarificaci�n)
         pfactor := v_limite / v_limite2;

         IF pfactor <= 1 THEN
            pfactor := 0;
         END IF;
      -- Fin Bug 10350

      -- Bug 10759 - RSC - 21/07/2009 - APR - Revalorizaci�n tipo Adaptaci�n Fiscal 'proporcional'
      ELSE
         IF v_limite2 IS NOT NULL
            AND v_limite IS NOT NULL THEN
            -- El l�mite establecido es con impuestos, tasas y forfait. Hay que descontarlo
            -- Se hace en el pac_porpio para que cada instalaci�n reste sus impuestos, tasas, etc...
            num_err := pac_propio.f_restar_limite_anual(NULL, psseguro, pcgarant, v_limite,
                                                        v_fecha, imp_restar1);

            IF num_err <> 0 THEN
               RETURN num_err;
            ELSE
               importe1 := v_limite - NVL(imp_restar1, 0);
               -- El l�mite establecido es con impuestos, tasas y forfait. Hay que descontarlo
                -- Se hace en el pac_porpio para que cada instalaci�n reste sus impuestos, tasas, etc...
               num_err := pac_propio.f_restar_limite_anual(NULL, psseguro, pcgarant,
                                                           v_limite2, v_fecha2, imp_restar2);

               IF num_err <> 0 THEN
                  RETURN num_err;
               END IF;

               importe2 := v_limite2 - NVL(imp_restar2, 0);
            END IF;

            v_factor := 1 /(importe2 / importe1);

            SELECT NVL(d.iprianu, g.iprianu)
              INTO v_prima
              FROM garanseg g, detgaranseg d
             WHERE g.sseguro = psseguro
               AND g.cgarant = pcgarant
               AND g.nriesgo = pnriesgo
               AND g.sseguro = d.sseguro(+)
               AND g.cgarant = d.cgarant(+)
               AND g.nriesgo = d.nriesgo(+)
               AND g.nmovimi = d.nmovimi(+)
               AND g.finiefe = d.finiefe(+)
               AND(d.ndetgar = pndetgar
                   OR d.ndetgar IS NULL
                   OR pndetgar IS NULL)
               AND g.ffinefe IS NULL;

            -- La nueva prima se calcula aplicando el factor de crecimiento proporcional
            -- a la prima
            pprimarev := f_round(v_prima * v_factor);
            pprimarev := pprimarev - v_prima;   -- Retornamos el incremento
                                                -- no la prima entera !
         ELSE
            pprimarev := NULL;
         END IF;

         -- Bug 10350 - RSC - 06/08/2009 - Detalle de garant�a (Tarificaci�n)
         pfactor := 1 /(importe2 / importe1);

         IF pfactor <= 1 THEN
            pfactor := 0;
         END IF;
      -- Fin Bug 10350
      END IF;

      -- Fin Bug 10759
      RETURN 0;
   END f_adaptacion_fiscal;

   FUNCTION f_revalorizar(
      pentrada IN NUMBER,
      codi_revali IN NUMBER,
      por_revali IN NUMBER,
      imp_revali IN NUMBER,
      psalida OUT NUMBER,
      pmodo IN NUMBER,
      pndetgar IN NUMBER DEFAULT NULL)
      RETURN NUMBER IS
-- Bug 9794 - YIL - 21/04/2009 - Se a�ade el par�metro pmodo para poder diferenciar si estamos revalorizando prima o capital
--       1.- capital
--       2.- prima
-- Se a�aden los nuevos tipos de revalorizaci�n crevali 7, 8 y 9
-- F_revalorizar: se controla el m�ximo de prima s�lo si se entra en modo revalorizaci�n prima,
--        y no si entra en modo revalorizaci�n de capital
      cap_max        garanpro.icaprev%TYPE;   --       cap_max        NUMBER; --- BUG 25803: DECIMALES Y OTROS CAMPOS ---
      prima_max      NUMBER;
      v_tipo         NUMBER(1);   -- BUG 0021638 - 08/03/2012 - JMF
   BEGIN
      IF pmodo = 1 THEN   -- revaloriza capital
         -- Selecciono el capital m�ximo que puede alcanzar la garant�a.
         BEGIN
            SELECT icaprev
              INTO cap_max
              FROM garanpro
             WHERE cramo = pcramo
               AND cmodali = pcmodali
               AND ctipseg = pctipseg
               AND ccolect = pccolect
               AND cactivi = pcactivi
               AND cgarant = pcgarant;
         EXCEPTION
            WHEN NO_DATA_FOUND THEN
               BEGIN
                  SELECT icaprev
                    INTO cap_max
                    FROM garanpro
                   WHERE cramo = pcramo
                     AND cmodali = pcmodali
                     AND ctipseg = pctipseg
                     AND ccolect = pccolect
                     AND cactivi = 0
                     AND cgarant = pcgarant;
               EXCEPTION
                  WHEN OTHERS THEN
                     cap_max := 0;
               END;
            WHEN OTHERS THEN
               cap_max := 0;
         END;
      ELSIF pmodo = 2 THEN
         -- buscamos el m�ximo de prima seg�n la adaptaci�n fiscal
         num_err := f_adaptacion_fiscal(psseguro, pcgarant, pmes, pany, prima_max, pndetgar);

         IF num_err <> 0 THEN
            RETURN num_err;
         END IF;
      END IF;

      /********************************
      0-No revalorizaci�n
      1-Revalorizaci�n lineal
      2-Revalorizaci�n geom�trica
      3-I.P.C. mensual
      4-La del producto
      5-I.P.C. anual
      6-Lineal porcentaje
      7-Adaptaci�n fiscal
      8-IPC Mensual (Revaloriza prima)
      9-IPC Anual (Revaloriza prima)
      10-Revalorizaci�n Semigeom�trica
      11-Revalirizaci�n Lineal Calculada
      12-IPCV
      13-BEC
      14-IPC mensual por factor
      ********************************/
      IF codi_revali = 0 THEN
         ppsalida := pentrada;
         pfactor := 0;   --no hay revalorizaci�n
      ELSIF codi_revali = 1 THEN
         ppsalida := pentrada + imp_revali;
         pfactor := ((ppsalida / pentrada) - 1) * 100;
      ELSIF codi_revali = 2 THEN
         ppsalida := pentrada *(1 + por_revali / 100);
         pfactor := por_revali;   --el prevali
      ELSIF codi_revali IN(3, 8) THEN
         -- BUG 0021638 - 08/03/2012 - JMF
         ppipc := f_ipc(pmes, pany, 1, 1);

         IF ppipc IS NULL THEN
            RETURN 101847;
         END IF;

         -- BUG 0021638 - 08/03/2012 - JMF
         ppipc_ant := f_ipc(pmes, pany - 1, 1, 1);

         IF ppipc_ant IS NULL THEN
            RETURN 101847;
         END IF;

         ppsalida := pentrada *(ppipc / ppipc_ant);
         -- Bug 10350 - RSC - 06/08/2009 - Detalle de garant�a (Tarificaci�n)
         -- Antes: pfactor := ppipc;   --ipc del a�o y del mes
         pfactor := ppipc / ppipc_ant;

         IF pfactor <= 1 THEN
            pfactor := 0;
         END IF;
      -- Fin Bug 10350
      ELSIF codi_revali IN(5, 9) THEN   -- seg�n IPC anual
         -- BUG 0021638 - 08/03/2012 - JMF
         ppipc := f_ipc(0, pany, 1, 1);

         IF ppipc IS NULL THEN
            RETURN 101847;
         END IF;

         ppsalida := pentrada *(1 + ppipc / 100);
         pfactor := ppipc;   --ipc del a�o
      ELSIF codi_revali IN(12, 13, 14) THEN
         -- BUG 0021638 - 08/03/2012 - JMF
         -- 12-IPCV
         -- 13-BEC
         -- 14-IPC mensual por factor
         IF codi_revali = 14 THEN
            v_tipo := 1;
         ELSIF codi_revali = 13 THEN
            v_tipo := 2;
         ELSIF codi_revali = 12 THEN
            v_tipo := 3;
         ELSE
            v_tipo := 0;
         END IF;

         ppipc := f_ipc(pmes, pany, v_tipo, 2);

         IF ppipc IS NULL THEN
            RETURN 101847;
         END IF;

         ppsalida := pentrada *(1 + ppipc);
         pfactor := ppipc;
      END IF;

      -- Bug 10350 - RSC - 05/08/2009 - Detalle de garant�a (Tarificaci�n)
      -- Cogemos la parte revalorizada
      ppsalida := ppsalida - pentrada;

      -- Fin Bug 10350
      IF pmodo = 1 THEN   -- revalorizacion de capital
         IF NVL(cap_max, 0) = 0 THEN
            psalida := f_round(NVL(ppsalida, 0));
         ELSIF f_round(NVL(ppsalida, 0)) > NVL(cap_max, 0) THEN
            IF codi_revali <> 0 THEN
               psalida := cap_max;
            ELSE
               psalida := f_round(NVL(ppsalida, 0));
            END IF;
         ELSE
            psalida := f_round(NVL(ppsalida, 0));
         END IF;
      ELSE
         IF NVL(prima_max, 0) = 0 THEN
            psalida := f_round(NVL(ppsalida, 0));
         ELSIF f_round(NVL(ppsalida, 0)) > NVL(prima_max, 0) THEN
            IF codi_revali <> 0 THEN
               psalida := prima_max;
            ELSE
               psalida := f_round(NVL(ppsalida, 0));
            END IF;
         ELSE
            psalida := f_round(NVL(ppsalida, 0));
         END IF;
      END IF;

      RETURN 0;
   END f_revalorizar;
------CUERPO DE LA FUNCION-----------
-------------------------------------
BEGIN
   --revalorizaci�n de capital
   IF pcmanual IN(0, 2, 3)
      AND pcrevali NOT IN(7, 8, 9) THEN
      IF pcrevali <> 4 THEN
         num_err := f_revalorizar(picapital, pcrevali, pprevali, pirevali, prevcap, 1,
                                  pndetgar);

         IF num_err <> 0 THEN
            RETURN num_err;
         END IF;
      ELSIF pcrevali = 4 THEN
         BEGIN
            SELECT garanpro.crevali, garanpro.prevali, garanpro.irevali
              INTO procrevali, proprevali, proirevali
              FROM garanpro, productos, seguros
             WHERE seguros.sseguro = psseguro
               AND productos.cramo = seguros.cramo
               AND productos.cmodali = seguros.cmodali
               AND productos.ctipseg = seguros.ctipseg
               AND productos.ccolect = seguros.ccolect
               AND garanpro.cramo = productos.cramo
               AND garanpro.cmodali = productos.cmodali
               AND garanpro.ctipseg = productos.ctipseg
               AND garanpro.ccolect = productos.ccolect
               AND garanpro.cgarant = pcgarant
               AND garanpro.cactivi = pcactivi;
         EXCEPTION
            WHEN NO_DATA_FOUND THEN
               BEGIN
                  SELECT garanpro.crevali, garanpro.prevali, garanpro.irevali
                    INTO procrevali, proprevali, proirevali
                    FROM garanpro, productos, seguros
                   WHERE seguros.sseguro = psseguro
                     AND productos.cramo = seguros.cramo
                     AND productos.cmodali = seguros.cmodali
                     AND productos.ctipseg = seguros.ctipseg
                     AND productos.ccolect = seguros.ccolect
                     AND garanpro.cramo = productos.cramo
                     AND garanpro.cmodali = productos.cmodali
                     AND garanpro.ctipseg = productos.ctipseg
                     AND garanpro.ccolect = productos.ccolect
                     AND garanpro.cgarant = pcgarant
                     AND garanpro.cactivi = 0;
               EXCEPTION
                  WHEN OTHERS THEN
                     RETURN 103275;
               END;
            WHEN OTHERS THEN
               RETURN 103275;
         END;

         num_err := f_revalorizar(picapital, procrevali, proprevali, proirevali, prevcap, 1,
                                  pndetgar);

         IF num_err <> 0 THEN
            RETURN num_err;
         END IF;
      END IF;
   ELSE
      prevcap := picapital;
   END IF;

   --revalorizaci�n de prima.
   IF pcmanual IN(1, 2, 3, 4)
      OR(pcmanual = 0
         AND pcrevali IN(7, 8, 9)) THEN
      IF pcrevali <> 4 THEN
         --num_err := f_revalorizar(piprianu, pcrevali, pprevali, pirevali, prevprima);
         IF pcrevali = 7 THEN   -- adaptacion fiscal de prima
            num_err := f_adaptacion_fiscal(psseguro, pcgarant, pmes, pany, prevprima,
                                           pndetgar);
         ELSE
            IF pcrevali IN(8, 9) THEN   -- para que calcule el m�ximo de prima seg�n adaptaci�n fiscal
               v_modo := 2;
            ELSE
               v_modo := 0;   -- para que NO calcule el m�ximo de prima seg�n adaptaci�n fiscal
            END IF;

            num_err := f_revalorizar(piprianu, pcrevali, pprevali, pirevali, prevprima, v_modo,
                                     pndetgar);
         END IF;

         IF num_err <> 0 THEN
            RETURN num_err;
         END IF;
      ELSIF pcrevali = 4 THEN
         BEGIN
            SELECT garanpro.crevali, garanpro.prevali, garanpro.irevali
              INTO procrevali, proprevali, proirevali
              FROM garanpro, productos, seguros
             WHERE seguros.sseguro = psseguro
               AND productos.cramo = seguros.cramo
               AND productos.cmodali = seguros.cmodali
               AND productos.ctipseg = seguros.ctipseg
               AND productos.ccolect = seguros.ccolect
               AND garanpro.cramo = productos.cramo
               AND garanpro.cmodali = productos.cmodali
               AND garanpro.ctipseg = productos.ctipseg
               AND garanpro.ccolect = productos.ccolect
               AND garanpro.cgarant = pcgarant
               AND garanpro.cactivi = pcactivi;
         EXCEPTION
            WHEN NO_DATA_FOUND THEN
               BEGIN
                  SELECT garanpro.crevali, garanpro.prevali, garanpro.irevali
                    INTO procrevali, proprevali, proirevali
                    FROM garanpro, productos, seguros
                   WHERE seguros.sseguro = psseguro
                     AND productos.cramo = seguros.cramo
                     AND productos.cmodali = seguros.cmodali
                     AND productos.ctipseg = seguros.ctipseg
                     AND productos.ccolect = seguros.ccolect
                     AND garanpro.cramo = productos.cramo
                     AND garanpro.cmodali = productos.cmodali
                     AND garanpro.ctipseg = productos.ctipseg
                     AND garanpro.ccolect = productos.ccolect
                     AND garanpro.cgarant = pcgarant
                     AND garanpro.cactivi = 0;
               EXCEPTION
                  WHEN OTHERS THEN
                     RETURN 103275;
               END;
            WHEN OTHERS THEN
               RETURN 103275;
         END;

         --num_err := f_revalorizar(piprianu,procrevali,proprevali,proirevali,prevprima);
         IF pcrevali = 7 THEN   -- adaptacion fiscal
            num_err := f_adaptacion_fiscal(psseguro, pcgarant, pmes, pany, prevprima,
                                           pndetgar);
         ELSE
            IF pcrevali IN(8, 9) THEN   -- para que calcule el m�ximo de prima seg�n adaptaci�n fiscal
               v_modo := 2;
            ELSE
               v_modo := 0;   -- para que NO calcule el m�ximo de prima seg�n adaptaci�n fiscal
            END IF;

            num_err := f_revalorizar(piprianu, pcrevali, pprevali, pirevali, prevprima, v_modo,
                                     pndetgar);
         END IF;

         IF num_err <> 0 THEN
            RETURN num_err;
         END IF;
      END IF;
   END IF;

   RETURN 0;
END f_revalgar_det;

/

  GRANT EXECUTE ON "AXIS"."F_REVALGAR_DET" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_REVALGAR_DET" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_REVALGAR_DET" TO "PROGRAMADORESCSI";
