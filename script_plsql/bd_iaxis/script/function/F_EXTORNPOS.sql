--------------------------------------------------------
--  DDL for Function F_EXTORNPOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_EXTORNPOS" (
   pnrecibo IN NUMBER,
   pmodo IN VARCHAR2,
   psproces IN NUMBER,
   ptipomovimiento IN NUMBER DEFAULT NULL)
   RETURN NUMBER AUTHID CURRENT_USER IS
/********************************************************************************************
--
-- CANVIA EL SIGNE DE TOTS ELS IMPORTS,
-- EN CAS DE QU� EL REBUT SIGUI UN EXTORN.
--
   24/5/2004 YIL. Se mira si hay que aplicar penalizaci�n en un extorno. Se mira con la funci�n
                  f_penalizacion y s�lo se palica si la penalizaci�n es tipo porcentaje.

   24/5/2004 YIL. Si est� informado el par�metro EXTORN_SIN_COMISIO se borrar�n los registros
                  de comisiones.
   Ver        Fecha        Autor             Descripci�n
      ---------  ----------  -------  -------------------------------------
      1.0        XX/XX/XXXX   XXX     1. Creaci�n de la funci�n.
      2.0        08/12/2011   JRH     2. 0020163: LCOL_T004-Completar parametrizaci�n de los productos de Vida Individual (2� parte)
      3.0        12/12/2011   JMP     3. 0018423: LCOL705 - Multimoneda
*********************************************************************************************/
   v_sproduc      NUMBER;
   v_tipus        NUMBER;
   npenalizacion  NUMBER;
   v_sseguro      NUMBER;
   v_fefecto      DATE;
   num_err        NUMBER;
   -- BUG 20163-  12/2011 - JRH  -  0020163: LCOL_T004-Completar parametrizaci�n de los productos de Vida Individual (2� parte)
   vcramo         productos.cramo%TYPE;
   vcmodali       productos.cmodali%TYPE;
   vctipseg       productos.ctipseg%TYPE;
   vccolect       productos.ccolect%TYPE;
   vcactivi       seguros.cactivi%TYPE;
   v_sup_pm_gar   NUMBER;
   vcrespue       NUMBER;
-- Fi BUG 20163-  12/2011 - JRH
   v_cempres      seguros.cempres%TYPE;
   v_cmonpol      monedas.cmoneda%TYPE;
   -- BUG 18423 - 27/12/2011 - JLB - LCOL000 - Multimoneda
   v_cmoneda      monedas.cmoneda%TYPE;
BEGIN
   -- Bug 19096 - RSC - 03/08/2011 - LCOL - Parametrizaci�n b�sica producto Vida Individual Pagos Permanentes (Afegim 'RRIE')
   IF pmodo IN('R', 'A', 'ANP', 'RRIE') THEN
      BEGIN
         -- BUG 20163-  12/2011 - JRH  -  0020163: LCOL_T004-Completar parametrizaci�n de los productos de Vida Individual (2� parte)
           -- miramos si hay que aplicar penalizacion
         SELECT s.sproduc, s.sseguro, r.fefecto, s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                s.cactivi, s.cempres,
                                     -- BUG 18423 - 27/12/2011 - JLB - LCOL000 - Multimoneda
                                     pac_monedas.f_moneda_producto(sproduc)
           INTO v_sproduc, v_sseguro, v_fefecto, vcramo, vcmodali, vctipseg, vccolect,
                vcactivi, v_cempres,
                                    -- BUG 18423 - 27/12/2011 - JLB - LCOL000 - Multimoneda
                                    v_cmoneda
           FROM seguros s, recibos r
          WHERE s.sseguro = r.sseguro
            AND r.nrecibo = pnrecibo;

         -- BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda
         IF NVL(pac_parametros.f_parempresa_n(v_cempres, 'MULTIMONEDA'), 0) = 1 THEN
            v_cmonpol := pac_oper_monedas.f_monpol(v_sseguro);
         END IF;

         -- FIN BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda

         -- Fi BUG 20163-  12/2011 - JRH
         num_err := f_penalizacion(7, 0, v_sproduc, v_sseguro, v_fefecto, npenalizacion,
                                   v_tipus);

         IF num_err <> 0 THEN
            RETURN num_err;
         ELSE
            IF NVL(npenalizacion, 0) <> 0
               AND v_tipus = 2 THEN   --(s�lo lo aplicamos si es tpo porcentaje)
               -- BUG 20163-  12/2011 - JRH  -  0020163: LCOL_T004-Completar parametrizaci�n de los productos de Vida Individual (2� parte)
               FOR reg IN (SELECT detrecibos.ROWID, detrecibos.*
                             FROM detrecibos
                            WHERE nrecibo = pnrecibo) LOOP
                  v_sup_pm_gar := NVL(f_pargaranpro_v(vcramo, vcmodali, vctipseg, vccolect,
                                                      vcactivi, reg.cgarant, 'REC_SUP_PM_GAR'),
                                      1);
                  num_err := pac_preguntas.f_get_pregungaranseg(v_sseguro, reg.cgarant,
                                                                NVL(reg.nriesgo, 1), 4045,
                                                                'SEG', vcrespue);

                  IF num_err NOT IN(0, 120135) THEN
                     RETURN 110420;
                  END IF;

                  IF v_sup_pm_gar = 1
                     OR(v_sup_pm_gar = 2
                        AND NVL(vcrespue, 0) = 1) THEN
                     UPDATE detrecibos
                        SET iconcep = f_round(iconcep *(1 - npenalizacion / 100), v_cmoneda),   -- BUG 18423 - 27/12/2011 - JLB - LCOL000 - Multimoneda
                            -- BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda
                            iconcep_monpol = f_round(iconcep_monpol *(1 - npenalizacion / 100),
                                                     v_cmonpol)
                      -- FIN BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda
                     WHERE  ROWID = reg.ROWID;
                  --JRH IMP Es esta la pk? NRECIBO, CCONCEP, CGARANT, NRIESGO
                  END IF;
               END LOOP;
            -- Fi BUG 20163-  12/2011 - JRH
            END IF;
         END IF;

         UPDATE detrecibos
            SET iconcep =(0 - iconcep),
                -- BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda
                iconcep_monpol =(0 - iconcep_monpol)
          -- FIN BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda
         WHERE  nrecibo = pnrecibo;

         -- Miramos si se aplica comisi�n en extornos
         IF NVL(f_parproductos_v(v_sproduc, 'EXTORN_SIN_COMISIO'), 0) = 1 THEN
            FOR reg IN (SELECT detrecibos.ROWID, detrecibos.*
                          FROM detrecibos
                         WHERE nrecibo = pnrecibo) LOOP
               v_sup_pm_gar := NVL(f_pargaranpro_v(vcramo, vcmodali, vctipseg, vccolect,
                                                   vcactivi, reg.cgarant, 'REC_SUP_PM_GAR'),
                                   1);
               num_err := pac_preguntas.f_get_pregungaranseg(v_sseguro, reg.cgarant,
                                                             NVL(reg.nriesgo, 1), 4045, 'SEG',
                                                             vcrespue);

               IF num_err NOT IN(0, 120135) THEN
                  RETURN 110420;
               END IF;

               IF v_sup_pm_gar = 1
                  OR(v_sup_pm_gar = 2
                     AND NVL(vcrespue, 0) = 1) THEN
                  IF ptipomovimiento <> 1 THEN   -- Los recibos de diferencia de prima se estaba borrando la comisi�n al extornar!
                     DELETE FROM detrecibos
                           WHERE nrecibo = pnrecibo
                             AND cconcep IN(11, 12, 15, 16, 17, 18, 19, 20, 22, 23, 24, 25, 61,
                                            62, 65, 66)
                             AND cgarant = reg.cgarant
                             AND nriesgo = reg.nriesgo;
                  END IF;
               END IF;
            END LOOP;
         END IF;
      EXCEPTION
         WHEN OTHERS THEN
            p_tab_error(f_sysdate, f_user, 'F_extornpos', NULL, 'nrecibo' || pnrecibo,
                        SQLERRM);
            RETURN 104377;   -- ERROR AL MODIFICAR LA TAULA DETRECIBOS
      END;

      RETURN 0;
   ELSIF pmodo = 'P'
         OR pmodo = 'N'
         OR pmodo = 'PRIE' THEN
      IF psproces IS NOT NULL THEN
         BEGIN
            -- miramos si hay que aplicar penalizacion
            SELECT s.sproduc, s.sseguro, r.fefecto, s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                   s.cactivi, s.cempres
              INTO v_sproduc, v_sseguro, v_fefecto, vcramo, vcmodali, vctipseg, vccolect,
                   vcactivi, v_cempres
              FROM seguros s, reciboscar r
             WHERE s.sseguro = r.sseguro
               AND r.nrecibo = pnrecibo
               AND r.sproces = psproces;

            -- BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda
            IF NVL(pac_parametros.f_parempresa_n(v_cempres, 'MULTIMONEDA'), 0) = 1 THEN
               v_cmonpol := pac_oper_monedas.f_monpol(v_sseguro);
            END IF;

            -- FIN BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda
            num_err := f_penalizacion(7, 0, v_sproduc, v_sseguro, v_fefecto, npenalizacion,
                                      v_tipus);

            IF num_err <> 0 THEN
               RETURN num_err;
            ELSE
               IF NVL(npenalizacion, 0) <> 0
                  AND v_tipus = 2 THEN   --(s�lo lo aplicamos si es tpo porcentaje)
                  UPDATE detreciboscar
                     SET iconcep = f_round(iconcep *(1 - npenalizacion / 100), v_cmoneda),   -- BUG 18423 - 27/12/2011 - JLB - LCOL000 - Multimoneda
                         -- BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda
                         iconcep_monpol = f_round(iconcep_monpol *(1 - npenalizacion / 100),
                                                  v_cmonpol)
                   -- FIN BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda
                  WHERE  nrecibo = pnrecibo
                     AND sproces = psproces;
                      /*  JRH IMP Preguntar si hacerlo, de momento no lo ponemos, en cartera en principio no tiene que hacerse lo de la provisi�n
                     -- BUG 20163-  12/2011 - JRH  -  0020163: LCOL_T004-Completar parametrizaci�n de los productos de Vida Individual (2� parte)
                  FOR reg IN (SELECT *
                                FROM detreciboscar
                               WHERE nrecibo = pnrecibo AND sproces = psproces) LOOP
                     v_sup_pm_gar := NVL(f_pargaranpro_v(vcramo, vcmodali, vctipseg, vccolect,
                                                         vcactivi, reg.cgarant, 'REC_SUP_PM_GAR'),
                                         1);
                     num_err := pac_preguntas.f_get_pregungaranseg(v_sseguro, reg.cgarant,
                                                                   NVL(reg.nriesgo, 1), 4045,
                                                                   'SEG', vcrespue);

                    IF num_err  not in (0,120135) THEN
                        RETURN 110420;
                     END IF;

                     IF v_sup_pm_gar = 1
                        OR(v_sup_pm_gar = 2
                           AND NVL(vcrespue, 0) = 1) THEN
                        UPDATE detrecibos
                           SET iconcep = f_round(iconcep *(1 - npenalizacion / 100))
                         WHERE nrecibo = reg.ROWID;
                     END IF;
                  END LOOP;
               -- Fi BUG 20163-  12/2011 - JRH
                        */
               END IF;
            END IF;

            UPDATE detreciboscar
               SET iconcep =(0 - iconcep),
                   -- BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda
                   iconcep_monpol =(0 - iconcep_monpol)
             -- FIN BUG 18423 - 12/12/2011 - JMP - LCOL705 - Multimoneda
            WHERE  nrecibo = pnrecibo
               AND sproces = psproces;

            -- Miramos si se aplica comisi�n en extornos
            IF NVL(f_parproductos_v(v_sproduc, 'EXTORN_SIN_COMISIO'), 0) = 1 THEN
               FOR reg IN (SELECT *
                             FROM detreciboscar
                            WHERE nrecibo = pnrecibo
                              AND sproces = psproces) LOOP
                  v_sup_pm_gar := NVL(f_pargaranpro_v(vcramo, vcmodali, vctipseg, vccolect,
                                                      vcactivi, reg.cgarant, 'REC_SUP_PM_GAR'),
                                      1);
                  num_err := pac_preguntas.f_get_pregungaranseg(v_sseguro, reg.cgarant,
                                                                NVL(reg.nriesgo, 1), 4045,
                                                                'SEG', vcrespue);

                  IF num_err NOT IN(0, 120135) THEN
                     RETURN 110420;
                  END IF;

                  IF v_sup_pm_gar = 1
                     OR(v_sup_pm_gar = 2
                        AND NVL(vcrespue, 0) = 1) THEN
                     IF ptipomovimiento <> 1 THEN   -- Los recibos de diferencia de prima se estaba borrando la comisi�n al extornar!
                        DELETE FROM detreciboscar
                              WHERE nrecibo = pnrecibo
                                AND sproces = psproces
                                AND cconcep IN(11, 12, 15, 16, 17, 18, 19, 20, 22, 23, 24, 25,
                                               61, 62, 65, 66)
                                AND cgarant = reg.cgarant
                                AND nriesgo = reg.nriesgo;
                     END IF;
                  END IF;
               END LOOP;
            END IF;
         EXCEPTION
            WHEN OTHERS THEN
               p_tab_error(f_sysdate, f_user, 'F_extornpos', NULL,
                           'nrecibo' || pnrecibo || ' modo = P', SQLERRM);
               RETURN 104378;   -- ERROR AL MODIFICAR LA TAULA DETRECIBOScar
         END;

         RETURN 0;
      ELSE
         RETURN 101901;   -- PAS DE PAR�METRES INCORRECTE A LA FUNCI�
      END IF;
   ELSE
      RETURN 101901;   -- PAS DE PAR�METRES INCORRECTE A LA FUNCI�
   END IF;
END;

/

  GRANT EXECUTE ON "AXIS"."F_EXTORNPOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_EXTORNPOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_EXTORNPOS" TO "PROGRAMADORESCSI";
