--------------------------------------------------------
--  DDL for Package Body PAC_MD_PRODUCCION_AHO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_MD_PRODUCCION_AHO" IS
/******************************************************************************
   NOMBRE:       PAC_MD_PRODUCCION_AHO
   PROP�SITO: Funciones para contraci�n  de productos financieros

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/03/2008   JRH                1. Creaci�n del package.
   2.0        22/04/2009   APD             Bug 9803 - el valor del pmodo debe ser 1 (Alta); 2 (Renovacion)
******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

   FUNCTION f_grabar_inttec2(
      psproduc IN NUMBER,
      psseguro IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      pinttec IN NUMBER DEFAULT NULL,
      ptablas IN VARCHAR2 DEFAULT 'EST',
      pvtramoini IN NUMBER DEFAULT NULL,
      pvtramofin IN NUMBER DEFAULT NULL,
      mensajes IN OUT t_iax_mensajes)   --JRH 09/2007 Tarea 2674: Intereses para LRC.A�adimos el tramo que queremos insertar este inter�s.
      RETURN NUMBER IS
/********************************************************************************************************************
   Funci�n que graba el inter�s t�cnico de la p�liza en ESTINTERTECSEG siempre y cuando haya inter�s t�cnico
   definido a nivel de producto.

   Si el par�metro PINTTEC es NULO, entonces se busca el inter�s parametrizado en el producto
********************************************************************************************************************/
      v_pinttec      NUMBER;
      v_pninttec     NUMBER;
      v_codint       NUMBER;
      num_err        NUMBER;
      v_tipo         NUMBER;
      vparam         VARCHAR2(500)
                       := 'par�metros - psproduc: ' || psproduc || ' - psseguro: ' || psseguro;
      vobject        VARCHAR2(200) := 'PAC_MD_GRABARDATOS.f_grabar_inttec2';
      vpasexec       NUMBER := 0;
   BEGIN
      -- Miramos si el producto tienen definido un cuadro de inter�s t�cnico
      num_err := pac_inttec.f_existe_intertecprod(psproduc);

/*
     IF nvl(f_parproductos_v(psproduc, 'TRAMOINTTEC'), 0) = 3 THEN  -- --JRH 09/2007 Tarea 2674: Tipo LRC Duraci�n-Anualidad
               IF ((pvTramoIni IS NULL) OR (pvTramoFin IS NULL)) THEN --Si es del tipo LRC (periodo con varios anualidades a grabar) Estos datos deben estar informados.
                       RAISE e_param_error;
               END IF;
     end if;
*/
      IF num_err = 1 THEN   -- el producto s� que tiene definido intereses t�cnico
          -- Si el pinttec es NULO miramos buscamos el inter�s parametrizado en el producto
         --v_tipo := f_es_renova
         IF pinttec IS NULL THEN   --Si no informamos el inter�s lo buscamos seg�n la parametrizaci�n del producto.
            v_tipo := f_es_renova(psseguro, pfefecto);

            --Bug 9803 - APD - 22/04/2009 -- el valor del v_tipo debe ser 1 (Alta); 2 (Renovacion)
            IF v_tipo = 0 THEN   -- es renovacion
               v_tipo := 2;   -- 2 = modo renovacion
            ELSE
               v_tipo := 1;   -- 1 = modo alta
            END IF;

            --Bug 9803 - APD - 22/04/2009 -- Fin
            num_err := pac_inttec.f_int_seguro_alta_renova(ptablas, psseguro, v_tipo, pfefecto,
                                                           v_pinttec, v_pninttec, pvtramoini);   --JRH 09/2007 Tarea 2674: Intereses para LRC.A�adimos el a�o (informado en el par�metro tramo) del que queremos buscar el inter�s en los productos LRC.

            IF num_err <> 0 THEN
               pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, num_err);
               RETURN 1;
            END IF;
         ELSE
            v_pinttec := pinttec;
         END IF;

         -- Insertamos en ESTINTERTECSEG todo el tramo con el inter�s que tenemos.
         num_err := pk_nueva_produccion.f_ins_intertecseg(ptablas, psseguro, pnmovimi,
                                                          pfefecto, v_pinttec, v_pninttec,
                                                          pvtramoini, pvtramofin);   --JRH 09/2007 Tarea 2674: En esta funci�n henmos insertado tambi�n los tramos ndesde nhasta.

         IF num_err <> 0 THEN
            pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, num_err);
            RETURN 1;
         END IF;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_grabar_inttec2;

/********************************************************************************************************************
   Funci�n que graba el inter�s t�cnico de la p�liza en ESTINTERTECSEG siempre y cuando haya inter�s t�cnico
   definido a nivel de producto.

   En el caso de que se informe el importe se han a�adido los tramos para el caso de LRC (periodo anualidad) a los que se refiere el importe.

     Para ramos tipo LRC en el caso de que no se informe el importe se daran de alta en las tablas de intereses a nivel de p�liza
     los intereses correspondientes a todas las anualidades del periodo seleccionado (parametrizados a nivel de producto).

   En el resto de casos si el par�metro PINTTEC es NULO, entonces se busca el inter�s parametrizado en el producto

    param in psproduc  : N�mero de producto
    param in psseguro  : N�mero de p�liza
    param in pfefecto  : Fecha efecto
    param in PNMOVIMI  : N�mero de suplemento
    param in pinttec  : Inter�s (default null)
    param in ptablas  : Tablas (default 'EST')
    param in pvTramoIni  : De momento no informar (Tramos de LRC) (default null)
    param in pvTramoFin  : De momento no informar (Tramos de LRC) (default null)


       param out           : mensajes de error
       return              : 0 todo correcto
                             1 ha habido un error
********************************************************************************************************************/
   FUNCTION f_grabar_inttec(
      psproduc IN NUMBER,
      psseguro IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      pinttec IN NUMBER DEFAULT NULL,
      ptablas IN VARCHAR2 DEFAULT 'EST',
      pvtramoini IN NUMBER DEFAULT NULL,
      pvtramofin IN NUMBER DEFAULT NULL,
      mensajes IN OUT t_iax_mensajes)   --JRH 09/2007 Tarea 2674: Intereses para LRC.A�adimos el tramo que queremos insertar este inter�s.
      RETURN NUMBER IS
      v_pinttec      NUMBER;
      v_codint       NUMBER;
      num_err        NUMBER;
      v_tipo         NUMBER;
      errores        EXCEPTION;   --JRH
      anyopol        NUMBER := 0;   --JRH Para LRC

      --Buscamos los tramos correspondientes al producto tipo LRC con su inter�s para el per�odo contratado y los
      --insertamos en la tabla de intereses por p�liza.
        /*CURSOR TramosLRC (psproduc IN Number,pctipo IN NUMBER,pfecha IN Date,durac in Number)  IS
        select id.ndesde,id.nhasta,id.ninttec
      from   intertecprod ip, intertecmov im, intertecmovdet id
      where  ip.sproduc = psproduc
      and    ip.ncodint = im.ncodint
      and    im.ctipo = pctipo
      and    im.finicio <= pfecha
      and    (im.ffin >= pfecha or im.ffin is null)
      and    im.ncodint = id.ncodint
      and    im.finicio = id.finicio
      --and    substr(TO_CHAR(id.ndesde),1,1)=durac --JRH IMP, esta es la duraci�n?
      and    substr(TO_CHAR(id.ndesde),1,length(id.ndesde)-3)=durac --formato dur+ 000(anual.)
      and    im.ctipo = id.ctipo;*/

      --Hasta ahora en LRC se insertaban todos los registros para una duraci�n. Por el momento ahora s�lo
      --grabaremos un registro del tipo TIR. S�lo obtendremos un registro, con lo que queda todo el tratamiento de inter�s a
      --nivel de p�liza igual que hasta antes del tratamiento incial del producto LRC.  Como s�lo obtenemos
      --un registro grabaremos 0 en los tramos.
      CURSOR tramoslrc(psproduc IN NUMBER, pctipo IN NUMBER, pfecha IN DATE, tramo IN NUMBER) IS
         SELECT 0 ndesde, 0 nhasta, ID.ninttec
           FROM intertecprod ip, intertecmov im, intertecmovdet ID
          WHERE ip.sproduc = psproduc
            AND ip.ncodint = im.ncodint
            AND im.ctipo = pctipo
            AND im.finicio <= pfecha
            AND(im.ffin >= pfecha
                OR im.ffin IS NULL)
            AND im.ncodint = ID.ncodint
            AND im.finicio = ID.finicio
            --and    substr(TO_CHAR(id.ndesde),1,1)=durac --JRH IMP, esta es la duraci�n?
            AND ID.ndesde = tramo   --formato dur+ 000(anual.)
            AND im.ctipo = ID.ctipo;

      pnduraci       NUMBER;
      ptipo          VARCHAR2(5);
      formpagren     NUMBER;
      num            NUMBER := 0;
      vparam         VARCHAR2(500)
                        := 'par�metros - psproduc: ' || psproduc || ' - psseguro: ' || psseguro;
      vobject        VARCHAR2(200) := 'PAC_MD_GRABARDATOS.f_grabar_inttec2';
      vpasexec       NUMBER := 0;
   BEGIN
      IF pnmovimi = 1 THEN
         ptipo := 3;   --Altas
      ELSIF pnmovimi = 2 THEN
         ptipo := 4;
      ELSE   --Renovaciones
         ptipo := 4;   -- Otros valores se consideran Renovaciones
      END IF;

      vpasexec := 1;

      IF pinttec IS NOT NULL THEN   --Si el importe est� informado grabamos el valor de ese tramo directamente
         num_err := f_grabar_inttec2(psproduc, psseguro, pfefecto, pnmovimi, pinttec, ptablas,
                                     pvtramoini, pvtramofin, mensajes);

         IF num_err <> 0 THEN
            pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, num_err);
            RETURN 1;
         END IF;
      ELSE
         IF NVL(f_parproductos_v(psproduc, 'TRAMOINTTEC'), 0) = 3 THEN   -- --JRH 09/2007 Tarea 2674: Tipo LRC Duraci�n-Anualidad
            --  YA NOJRH Para este tipo de ramos hemos de guardar el inter�s para cada a�o seg�n la duraci�n (y la parametrizaci�n del producto)
            --  YA No JRH IMP Es un 3 la NP?
            pnduraci := pac_calc_comu.ff_get_duracion(ptablas, psseguro);
            vpasexec := 2;
            formpagren := 12;   --pac_calc_rentas.ff_get_formapagoren(ptablas, psseguro);
            vpasexec := 3;

            IF formpagren IS NULL THEN
               pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, 180602);
               RETURN 1;
            END IF;

             --Hasta ahora en LRC se insertaban todos los registros para una duraci�n. Por el momento ahora s�lo
            --grabaremos un registro del tipo TIR. S�lo obtendremos un registro, con lo que queda todo el tratamiento de inter�s a
            --nivel de p�liza igual que hasta antes del tratamiento incial del producto LRC.  Como s�lo obtenemos
            --un registro grabaremos 0 en los tramos.
            vpasexec := 4;
            --El formato del tramo es duraci�n + anualidad + forma pago renta (formato: daaaff)
            --En formpagren tenemos la forma de pago de la renta
            --De momento para el TIR siempre tenemos la anualidad 1 y las dem�s valen igual
            pnduraci := pnduraci || '001' || LPAD(formpagren, 2, '0');

            --Para este caso buscamos el TIR (tipo 6)
            FOR reg IN tramoslrc(psproduc, 6, pfefecto, pnduraci) LOOP   -- Grabamos todos los tramos periodo / anualidad (con el cambio del LRC a 01/11/2007 solo obtenemos un registro con el valor del TIR).
               num := num + 1;
               vpasexec := 5;   -- Pasamos ya inter�s, pero preferimos que lo vuelva a hacer la funci�n f_grabar_inttec2 y comprobar que lo hace bien.
               num_err := f_grabar_inttec2(psproduc, psseguro, pfefecto, pnmovimi,
                                           reg.ninttec, ptablas, reg.ndesde, reg.nhasta,
                                           mensajes);

               IF num_err <> 0 THEN
                  pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, num_err);
                  RETURN 1;
               END IF;
            END LOOP;

            vpasexec := 6;

            IF num = 0 THEN
               pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, 104742);
               RETURN 1;
            END IF;
         ELSE
--JRH Si no hacemos lo de siempre (un s�lo valor de inter�s)
 ------------------------------------------------------------------------------------------------------------
   -- Grabamos el inter�s t�cnico en INTERTECSEG
  --------------------------------------------------------------------------------------------------------------
            vpasexec := 7;
            num_err := f_grabar_inttec2(psproduc, psseguro, pfefecto, pnmovimi, NULL, ptablas,
                                        0, 0, mensajes);

            IF num_err <> 0 THEN
               pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, num_err);
               RETURN 1;
            END IF;
         END IF;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_grabar_inttec;

/********************************************************************************************************************
   Funci�n que graba la penalizaci�n para cada anualidad de la p�liza en ESTPENALISEG,
   siempre y cuando haya penalizaci�n definida a nivel de producto

   pmodo = 1   modo alta
           2  modo renovaci�n

    param in psproduc  : N�mero de producto
    param in psseguro  : N�mero de p�liza
    param in pfefecto  : Fecha efecto
    param in PNMOVIMI  : N�mero de suplemento
    param in pinttec  : Inter�s (default null)
    param in ptablas  : Tablas (default 'EST')
    param in pvTramoIni  : De momento no informar (Tramos de LRC) (default null)
    param in pvTramoFin  : De momento no informar (Tramos de LRC) (default null)

 ********************************************************************************************************************/
   FUNCTION f_grabar_penalizacion(
      pmodo IN NUMBER,
      psproduc IN NUMBER,
      psseguro IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER DEFAULT 1,
      ptablas IN VARCHAR2 DEFAULT 'EST',
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER IS
      CURSOR c_tipmov(psproduc IN NUMBER, pfecha IN DATE) IS
         SELECT ctipmov, niniran, nfinran
           FROM detprodtraresc d, prodtraresc p
          WHERE d.sidresc = p.sidresc
            AND p.sproduc = psproduc
            AND p.finicio <= pfecha
            AND(p.ffin > pfecha
                OR p.ffin IS NULL);

      num_err        NUMBER;
      duracion       NUMBER;
      xpenali        NUMBER;
      xtippenali     NUMBER;
      xipenali       NUMBER;
      xppenali       NUMBER;
      error          EXCEPTION;
      vparam         VARCHAR2(500)
                        := 'par�metros - psproduc: ' || psproduc || ' - psseguro: ' || psseguro;
      vobject        VARCHAR2(200) := 'PAC_MD_GRABARDATOS.f_grabar_penalizacion';
      vpasexec       NUMBER := 0;
   BEGIN
      vpasexec := 0;

      -- Miramos si el producto tienen definido por par�metro que grabar� en la tabla PENALISEG
      IF NVL(f_parproductos_v(psproduc, 'CONS_PENALI'), 0) = 1 THEN
         --- Primero borramos los registros que ya pudieran estar grabados proque siempre se recalculan
         IF ptablas = 'EST' THEN
            DELETE FROM estpenaliseg
                  WHERE sseguro = psseguro;
         END IF;

         -- Para cada anualidad hasta la duraci�n de la p�liza grabamos la penalizaci�n parametrizada en el producto
         -- Averiguamos entonces la duraci�n de la p�liza o del periodo de inter�s garantizado
         duracion := pac_calc_comu.ff_get_duracion(ptablas, psseguro);

         IF duracion IS NULL THEN
            RAISE e_param_error;
         END IF;

         vpasexec := 1;

/*
      IF NVL(f_parproductos_v(psproduc, 'DURPER'),0) = 1 THEN
         -- Buscamos en ESTSEGUROS_AHO la duraci�n periodo
         IF ptablas = 'EST' THEN
             BEGIN
                SELECT ndurper
                INTO duracion
                FROM ESTSEGUROS_AHO
                WHERE sseguro = psseguro;
             EXCEPTION
                WHEN OTHERS THEN
                   RAISE error;
             END;
         ELSE
             BEGIN
                SELECT ndurper
                INTO duracion
                FROM SEGUROS_AHO
                WHERE sseguro = psseguro;
             EXCEPTION
                WHEN OTHERS THEN
                   RAISE error;
             END;
         END IF;
      ELSE
          -- buscamos la duraci�n de la p�liza
          IF ptablas = 'EST' THEN
              BEGIN
                 SELECT nduraci
                 INTO duracion
                    FROM ESTSEGUROS
                 WHERE sseguro = psseguro;
              EXCEPTION
                 WHEN OTHERS THEN
                    RAISE error;
              END;
          ELSE
              BEGIN
                 SELECT nduraci
                 INTO duracion
                    FROM SEGUROS
                 WHERE sseguro = psseguro;
              EXCEPTION
                 WHEN OTHERS THEN
                    RAISE error;
              END;
          END IF;
      END IF;
      vpasexec :=2;
*/    -- Para cada anualidad hasta la duraci�n miramos la penalizaci�n parametrizada en el producto
         FOR reg IN c_tipmov(psproduc, pfefecto) LOOP
            IF reg.niniran < duracion THEN
               num_err := f_penalizacion(reg.ctipmov, reg.nfinran, psproduc, psseguro,
                                         pfefecto, xpenali, xtippenali, ptablas, 2);

               IF xtippenali = 1 THEN   -- importe
                  xipenali := xpenali;
                  xppenali := NULL;
               ELSIF xtippenali = 2 THEN   -- porcentaje
                  xppenali := xpenali;
                  xipenali := NULL;
               END IF;

               vpasexec := 3;

               -- Se graba la penalizaci�n
               IF ptablas = 'EST' THEN
                  BEGIN
                     vpasexec := 4;

                     INSERT INTO estpenaliseg
                                 (sseguro, nmovimi, ctipmov, niniran, nfinran,
                                  ipenali, ppenali, clave)
                          VALUES (psseguro, pnmovimi, reg.ctipmov, reg.niniran, reg.nfinran,
                                  xipenali, xppenali, NULL);
                  EXCEPTION
                     WHEN DUP_VAL_ON_INDEX THEN
                        vpasexec := 5;

                        UPDATE estpenaliseg
                           SET ipenali = xipenali,
                               ppenali = xppenali
                         WHERE sseguro = psseguro
                           AND nmovimi = pnmovimi
                           AND ctipmov = reg.ctipmov
                           AND niniran = reg.niniran;
                  END;
               ELSE
                  BEGIN
                     vpasexec := 6;

                     INSERT INTO penaliseg
                                 (sseguro, nmovimi, ctipmov, niniran, nfinran,
                                  ipenali, ppenali, clave)
                          VALUES (psseguro, pnmovimi, reg.ctipmov, reg.niniran, reg.nfinran,
                                  xipenali, xppenali, NULL);
                  EXCEPTION
                     WHEN DUP_VAL_ON_INDEX THEN
                        UPDATE penaliseg
                           SET ipenali = xipenali,
                               ppenali = xppenali
                         WHERE sseguro = psseguro
                           AND nmovimi = pnmovimi
                           AND ctipmov = reg.ctipmov
                           AND niniran = reg.niniran;
                  END;
               END IF;
            END IF;
         END LOOP;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_grabar_penalizacion;
END pac_md_produccion_aho;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_PRODUCCION_AHO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_PRODUCCION_AHO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_PRODUCCION_AHO" TO "PROGRAMADORESCSI";
