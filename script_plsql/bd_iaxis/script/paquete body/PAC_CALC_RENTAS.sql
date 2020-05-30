--------------------------------------------------------
--  DDL for Package Body PAC_CALC_RENTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_CALC_RENTAS" AS
/******************************************************************************
      NOMBRE:     PAC_CALC_RENTAS
      PROP�SITO:  Funciones contrataci�n rentas

      REVISIONES:
      Ver        Fecha        Autor        Descripci�n
      ---------  ----------  -----------  ------------------------------------
      1.0        XX/XX/XXXX   XXX          1. Creaci�n del package.
      1.1        30/01/2009   JRH          2. Bug-9173 Rentas Enea
      2.0        14/05/2009   APD          3. Bug-10112 : Se elimina la parte
                                             del c�digo que hace un IF hipoteca_invesa...
      3.0        20/06/2009   JRH          4. Bug-10336 : CRE - Simular producto de rentas a partir del importe de renta y no de la prima
      4.0        24/03/2010   JRH          5. 0012136: CEM - RVI - Verificaci�n productos RVI
      5.0        02/07/2010   JRH          6. 0015167: CIV401 - Incidencias en el productos de Renta Vitalicia
   ******************************************************************************/
   FUNCTION ff_get_formapagoren(ptablas IN VARCHAR2, psseguro IN NUMBER)
      RETURN NUMBER IS
      v_forpago      NUMBER;
      v_sproduc      NUMBER;
   BEGIN
      IF ptablas = 'EST' THEN
         SELECT cforpag
           INTO v_forpago
           FROM estseguros_ren
          WHERE sseguro = psseguro;
      ELSIF ptablas = 'SOL' THEN
         SELECT cforpag
           INTO v_forpago
           FROM solseguros_ren
          WHERE ssolicit = psseguro;
      --JRH IMP Esta mal es ssolicit WHERE sseguro = psseguro;
      ELSE
         SELECT cforpag
           INTO v_forpago
           FROM seguros_ren
          WHERE sseguro = psseguro;
      END IF;

      RETURN v_forpago;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'Pac_Calc_Rentas.ff_get_formapagoren', NULL,
                     'parametros: ptablas= ' || ptablas || ' ; psseguro = ' || psseguro,
                     SQLERRM);
         RETURN NULL;
   END ff_get_formapagoren;

   FUNCTION f_get_capitales_rentas(
      psproduc IN NUMBER,
      psseguro IN NUMBER,
      fecefecto IN DATE,
      tramolrc IN NUMBER,
      priesgo IN NUMBER DEFAULT 1,
      pnmovimi IN NUMBER DEFAULT 1,
      rentabruta OUT NUMBER,
      rentamin OUT NUMBER,
      capfall OUT NUMBER,
      intgarant OUT NUMBER,
      tablas VARCHAR2 DEFAULT 'EST')
      RETURN NUMBER IS
      /********************************************************************************************************************************
         El objetivo es devolver el resultado de los c�lculos de:
             Renta bruta
             Renta m�nima
             Inter�s garantizado
             Capital de fallecimiento

            La funci�n retorna:
               0 - si ha ido bien
              codigo error - si hay alg�n error.
      *********************************************************************************************************************************/
      v_nriesgo      NUMBER;
      v_nmovimi      NUMBER;
      duracion       NUMBER;
      vtramolrc      NUMBER;
      origen         NUMBER;
      fecproxpago    DATE;
   BEGIN
      -- Inicializamos variables
      v_nriesgo := priesgo;
      v_nmovimi := pnmovimi;
      --vtramoLRC:=nvl(tramoLRC,0);
      vtramolrc := 0;   --JRH Ahora a 30/10/2007 el inter�s LRC se guarda con tramo 0. S�lo tendremos un registro por poliza/nmov.
      -- Se busca la duraci�n del per�odo o la duraci�n de la p�liza en funcion del parproducto 'DURPER'
      duracion := pac_calc_comu.ff_get_duracion(tablas, psseguro);

      IF duracion IS NULL THEN
         NULL;   -- JRH IMP , de momento no hace falta (puede ser vitalicia) RETURN 104506;  -- Error al obtener la duraci�n del seguro.
      END IF;

      --Buscamos renta bruta
      --rentabruta := pac_calc_comu.ff_capital_gar_tipo('EST', psseguro, v_nriesgo, 5, v_nmovimi);
      IF tablas = 'SOL' THEN
         origen := 0;
      ELSIF tablas = 'EST' THEN
         origen := 1;
      ELSE
         origen := 2;
      END IF;

      IF NVL(f_parproductos_v(psproduc, 'PLAN_RENTAS'), 0) = 0
         OR origen <> 2 THEN   --Si no tiene plan de rentas las garantias deben tener informadas las rentas
         rentabruta := pac_calc_comu.ff_capital_gar_tipo(tablas, psseguro, v_nriesgo, 8,
                                                         v_nmovimi);
      ELSE
         SELECT fppren
           INTO fecproxpago
           FROM seguros_ren
          WHERE sseguro = psseguro;

         rentabruta := pk_rentas.f_buscarentabruta(1, psseguro,
                                                   TO_CHAR(fecproxpago, 'yyyymmdd'), origen,
                                                   'E');
      END IF;

      IF rentabruta IS NULL THEN
         RETURN 151395;   -- Error al obtener la renta
      END IF;

      --capfall := Pac_Provmat_Formul.ff_evolu(1, 2, psseguro, v_nmovimi, duracion);
      capfall := pac_calc_comu.ff_capital_gar_tipo(tablas, psseguro, v_nriesgo, 6, v_nmovimi);

      IF capfall IS NULL THEN
         capfall := 0;
      END IF;

      --Buscamos renta m�nima
      rentamin := pac_calc_comu.ff_capital_gar_tipo(tablas, psseguro, v_nriesgo, 9, v_nmovimi);

      IF rentamin IS NULL THEN
         RETURN 151395;   -- Error al obtener la duraci�n del seguro.
      END IF;

      --Buscamos el inter�s garantizado
      intgarant := pac_inttec.ff_int_seguro(tablas, psseguro, fecefecto, vtramolrc);   -- JRH Ponerle LRC

      IF intgarant IS NULL THEN
         RETURN 104742;   -- Error al obtener el inter�s.
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'Pac_Calc_Rentas.f_get_capitales_rentas', NULL,
                     'parametros: psseguro = ' || psseguro || '  psproduc = ' || psproduc,
                     SQLERRM);
         RETURN(108190);   -- Error general
   END f_get_capitales_rentas;

   FUNCTION f_get_duracion_renova(
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      psseguro IN NUMBER,
      pndurper OUT NUMBER)
      RETURN NUMBER IS
      /********************************************************************************************************************************
         Obtiene la nueva duraci�n por defecto permitida en la renovaci�n.
         Par�metros de entrada:
              . pnpoliza = N�mero de p�liza
              . pncertif = N�mero de certificado
              . psseguro = Identificador de la p�liza
         Par�metros de salida:
              . pndurper = Nueva duraci�n por defecto

            La funci�n retorna:
               0 - si ha ido bien
              codigo error - si hay alg�n error.
      *********************************************************************************************************************************/
      v_sseguro      NUMBER;
      v_sproduc      NUMBER;
      v_ndurper      NUMBER;
      v_max_ndurper  NUMBER;
   BEGIN
      IF psseguro IS NULL THEN
         IF pnpoliza IS NULL
            OR pncertif IS NULL THEN
            RETURN 140896;   -- Se tiene que informar la poliza
         ELSE
            v_sseguro := ff_buscasseguro(pnpoliza, pncertif);
         END IF;
      ELSE
         v_sseguro := psseguro;
      END IF;

      IF v_sseguro IS NULL THEN
         RETURN 111995;   -- Es obligatorio informar el n�mero de seguro
      END IF;

      BEGIN
         SELECT sproduc
           INTO v_sproduc
           FROM seguros
          WHERE sseguro = v_sseguro;
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            RETURN 140720;   -- Error al obtener el c�digo de producto
         WHEN OTHERS THEN
            RETURN 108190;   -- Error general
      END;

      SELECT NVL(sa.ndurper, s.nduraci)
        INTO v_ndurper
        FROM seguros_aho sa, seguros s
       WHERE sa.sseguro = s.sseguro
         AND sa.sseguro = v_sseguro;

      SELECT MAX(ndurper)
        INTO v_max_ndurper
        FROM durperiodoprod
       WHERE sproduc = v_sproduc
         AND ffin IS NULL;

      FOR dur IN v_ndurper .. v_max_ndurper LOOP
         IF pac_val_comu.f_valida_duracion_renova(v_sseguro, dur) = 0 THEN
            EXIT;
         ELSE
            v_ndurper := v_ndurper + 1;
         END IF;
      END LOOP;

      pndurper := v_ndurper;
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN 108190;   -- Error general
   END f_get_duracion_renova;

   FUNCTION f_get_datos_poliza_renova(
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      psseguro IN NUMBER,
      psperson1 OUT NUMBER,
      psperson2 OUT NUMBER,
      picapgar OUT NUMBER,
      pndurper OUT NUMBER,
      pcidioma OUT NUMBER)
      RETURN NUMBER IS
      /********************************************************************************************************************************
         Funci�n que recupera los datos de la p�liza necesarios para presentar en las pantallas de simulaci�n de la
         renovaci�n/revisi�n
         Par�metros de entrada:
              . pnpoliza = N�mero de p�liza
              . pncertif = N�mero de certificado
              . psseguro = Identificador de la p�liza
         Par�metros de salida:
              . psperson1 = Identificador del asegurado1
              . psperson2 = Identificador del asegurado2
              . picapgar = Capital garantizado al vencimiento
              . pndurper = Duraci�n de la p�liza
              . pcidioma = Idioma de la p�liza

            La funci�n retorna:
               0 - si ha ido bien
              codigo error - si hay alg�n error.
      *********************************************************************************************************************************/
      CURSOR c_asegurados(p_sseguro NUMBER) IS
         SELECT   sperson, norden
             FROM asegurados
            WHERE sseguro = p_sseguro
         ORDER BY norden;

      num_error      NUMBER;
      v_sseguro      NUMBER;
   BEGIN
      -- Se valida que los par�metros de entrada de la funci�n est�n informados:
      -- es obligatorio que est�n informados pnpoliza y pncertir o psseguro
      -- Si el psseguro es null y llega el pnpoliza y pncertif, se llama a la funcion ff_buscasseguro para
      -- obtener el psseguro
      IF psseguro IS NULL THEN
         IF pnpoliza IS NULL
            OR pncertif IS NULL THEN
            RETURN 140896;   -- Se tiene que informar la poliza
         ELSE
            v_sseguro := ff_buscasseguro(pnpoliza, pncertif);
         END IF;
      ELSE
         v_sseguro := psseguro;
      END IF;

      IF v_sseguro IS NULL THEN
         RETURN 111995;   -- Es obligatorio informar el n�mero de seguro
      END IF;

      -- Obtener los asegurados de la tabla ASEGURADOS (sperson1 y sperson2)
      FOR cur IN c_asegurados(v_sseguro) LOOP
         IF cur.norden = 1 THEN
            psperson1 := cur.sperson;
         ELSE
            psperson2 := cur.sperson;
         END IF;
      END LOOP;

      -- Obtener el capital garantizado al vencimiento actual de la p�liza
      picapgar := pac_provmat_formul.f_calcul_formulas_provi(v_sseguro, TRUNC(f_sysdate),
                                                             'ICGARAC');
      -- Obtener la nueva duraci�n por defecto permitida
      num_error := f_get_duracion_renova(pnpoliza, pncertif, v_sseguro, pndurper);

      IF num_error <> 0 THEN
         RETURN num_error;
      END IF;

      BEGIN
         -- Obtener el idioma de la p�liza
         SELECT cidioma
           INTO pcidioma
           FROM seguros
          WHERE sseguro = v_sseguro;
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            RETURN 101395;   -- Falta idioma del seguro
         WHEN OTHERS THEN
            RETURN 108190;   -- Error general
      END;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN 108190;   -- Error general
   END f_get_datos_poliza_renova;

   FUNCTION f_get_forpagprest_poliza(
      ptablas IN VARCHAR2 DEFAULT 'SEG',
      psseguro IN NUMBER,
      pcidioma_user IN NUMBER,
      ptfprest OUT VARCHAR2)
      RETURN NUMBER IS
      /********************************************************************************************************************************
         Funci�n que devuelve el c�digo y descripci�n de la forma de pago de la prestaci�n definido en la p�liza.
         Par�metros de entrada: . ptablas = Tablas ('EST' - temporales, 'SEG' - reales, 'SOL' - solicitudes)

         Par�metros de salida: . ptfprest = Descripci�n de la forma de pago de la prestaci�n
      *****************************************************************************************************************************/
      v_cfprest      NUMBER;
      v_descrip      VARCHAR2(100);
      num_err        NUMBER;
      error          EXCEPTION;
   BEGIN
      -- Se busca el c�digo de la forma de pago de la prestaci�n de la p�liza seg�n el par�metro ptablas
      IF ptablas = 'EST' THEN
         SELECT cfprest
           INTO v_cfprest
           FROM estseguros_aho
          WHERE sseguro = psseguro;
      ELSIF ptablas = 'SOL' THEN
         SELECT cfprest
           INTO v_cfprest
           FROM solseguros_aho
          WHERE ssolicit = psseguro;
      ELSE
         SELECT cfprest
           INTO v_cfprest
           FROM seguros_aho
          WHERE sseguro = psseguro;
      END IF;

      -- Se busca la descripci�n del c�digo
      num_err := f_desvalorfijo(205, pcidioma_user, v_cfprest, v_descrip);

      IF num_err <> 0 THEN
         RAISE error;
      END IF;

      ptfprest := v_descrip;
      RETURN v_cfprest;
   EXCEPTION
      WHEN error THEN
         RETURN NULL;
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'Pac_Calc_Rentas.f_get_forpagprest_poliza', NULL,
                     'parametros: ptablas = ' || ptablas || ' psseguro =' || psseguro
                     || '  pcidioma_user =' || pcidioma_user,
                     SQLERRM);
         RETURN NULL;
   END f_get_forpagprest_poliza;

   FUNCTION ff_get_aportacion_per(
      ptablas IN VARCHAR2 DEFAULT 'SEG',
      psseguro IN NUMBER,
      pfecha IN DATE DEFAULT f_sysdate)
      RETURN NUMBER IS
      /********************************************************************************************************************************
         Funci�n que devuelve el importe de la aportaci�n peri�dica de la p�liza a una fecha
         Par�metros de entrada: . ptablas = Tablas ('EST' - temporales, 'SEG' - reales, 'SOL' - solicitudes)
                                . pfecha = Fecha de c�lculo
      *****************************************************************************************************************************/
      v_nmovimi      NUMBER;
      v_capital      NUMBER;
      num_err        NUMBER;
      error          EXCEPTION;
   BEGIN
      -- Se busca en MOVSEGURO el movimiento vigente para la fecha de c�lculo (se trata la fecha truncada)
      IF ptablas = 'EST' THEN
         v_nmovimi := NULL;
      ELSIF ptablas = 'SOL' THEN
         v_nmovimi := 1;
      ELSE
         SELECT MAX(nmovimi)
           INTO v_nmovimi
           FROM movseguro
          WHERE sseguro = psseguro
            AND fefecto <= TRUNC(pfecha);
      END IF;

      -- Se busca el importe de la aportaci�n peri�dica
      v_capital := pac_calc_comu.ff_capital_gar_tipo(ptablas, psseguro, 1, 3, v_nmovimi, NULL);

      IF v_capital IS NULL THEN
         RAISE error;
      END IF;

      RETURN v_capital;
   EXCEPTION
      WHEN error THEN
         RETURN NULL;
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'Pac_Calc_Rentas.Ff_get_aportacion_per', NULL,
                     'parametros: ptablas = ' || ptablas || ' psseguro =' || psseguro
                     || '  pfecha =' || pfecha,
                     SQLERRM);
         RETURN NULL;
   END ff_get_aportacion_per;

/*************************************************************************
   Obtiene datos de las rentas para actualizar SEGUROS_REN despu�s de la tarificaci�n
   Param IN    psseguro : seguro
   Param IN psproduc : Producto
   Param IN    pfefecto : fecha efec
   Param IN    fecvto : Fecha vencimiento
   Param IN    nduraci : duraci�n
   Param OUT  fecultpago: Fecha ultimo pago renta
   Param OUT fecprimpago: Fecha primer pago renta
   Param OUT   importebruto: Importe renta
   Param OUT fecfinrenta : Fecha fin de la renta
   Param OUT fechaproxpago: fecha pr�ximo pago
   Param OUT fechainteres : Fecha de voigencia inter�s
   Param OUT  estadopago: Estado en que se generan los pagos
   Param OUT estadopagos : Estado 2 en que se generan los pagos
   Param OUT  durtramo : Duraci�n tramo interes
   Param OUT  capinirent: Capital inicial renta.
   Param OUT tipoint: Inter�s.
   Param OUT doscab : % Reversi�n.
   Param OUT capfallec : % Sobre capital de fallecimiento.
   Param OUT reserv : Importe incial de reserva.
   Param OUT fecrevi:  Fecha de Revisi�n
   Param IN   tablas : Tablas
   return n�mero de error 0 si ha ido bien
****************************************************************************************/
   FUNCTION f_obtener_datos_rentas_ini(
      psseguro IN NUMBER,
      psproduc IN NUMBER,
      fecefecto IN DATE,
      fecvto IN DATE,
      nduraci IN NUMBER,
      fecultpago OUT DATE,
      fecprimpago OUT DATE,
      importebruto OUT estseguros_ren.ibruren%TYPE,
      fecfinrenta OUT DATE,
      fechaproxpago OUT DATE,
      fechainteres OUT DATE,
      estadopago OUT estseguros_ren.cestmre%TYPE,
      estadopagos OUT estseguros_ren.cblopag%TYPE,
      durtramo OUT NUMBER,   -- BUG 0009173 - 03/2009 - JRH  - 0009173: CRE - Rentas Enea. NUMBER
      capinirent OUT estseguros_ren.icapren%TYPE,
      tipoint OUT estseguros_ren.ptipoint%TYPE,   --Interes subyacente LRC
      doscab OUT estseguros_ren.pdoscab%TYPE,   --JRH IMP
      capfallec OUT estseguros_ren.pcapfall%TYPE,
      reserv OUT estseguros_ren.ireserva%TYPE,
      fecrevi OUT DATE,
      tablas IN VARCHAR2 DEFAULT 'EST',
      pnmovimi in number default 1)
      RETURN NUMBER IS
      -- Variables Producto
      xcramo         NUMBER;
      xcmodali       NUMBER;
      xctipseg       NUMBER;
      xccolect       NUMBER;
      v_ctipgar      NUMBER;
      regprodren     producto_ren%ROWTYPE;
      actividad      NUMBER;
      impcapfallec   NUMBER;
      acceso         NUMBER;
      v_garant       NUMBER;
      num_err        NUMBER;
      vtraza         NUMBER := 0;
      clav           NUMBER;
      durccrhi       NUMBER;
   BEGIN
      SELECT cramo, cmodali, ctipseg, ccolect
        INTO xcramo, xcmodali, xctipseg, xccolect
        FROM productos
       WHERE sproduc = psproduc;

      SELECT *
        INTO regprodren
        FROM producto_ren
       WHERE sproduc = psproduc;

      vtraza := 1;

      --Primer pago
      IF regprodren.cpa1ren = 0 THEN
         fecprimpago := fecvto;
      ELSIF regprodren.cpa1ren = 1 THEN
         fecprimpago := fecvto + NVL(regprodren.npa1ren, 0);
      ELSIF regprodren.cpa1ren = 2 THEN
         fecprimpago := ADD_MONTHS(fecvto, NVL(regprodren.npa1ren, 0));
      ELSIF regprodren.cpa1ren = 3 THEN
         fecprimpago := ADD_MONTHS(fecvto,(NVL(regprodren.npa1ren, 0) * 12));
      ELSIF regprodren.cpa1ren = 4 THEN
         fecprimpago := fecefecto + NVL(regprodren.npa1ren, 0);
      ELSIF regprodren.cpa1ren = 5 THEN
         -- Bug 15167 - 02/07/2010 - JRH - 0015167: CIV401 - Quitamos el last_day
         fecprimpago :=(ADD_MONTHS(fecefecto, NVL(regprodren.npa1ren, 0)));
      -- Fi Bug 15167 - 02/07/2010 - JRH
      ELSIF regprodren.cpa1ren = 6 THEN
         fecprimpago := ADD_MONTHS(fecefecto,(NVL(regprodren.npa1ren, 0) * 12));
      ELSIF regprodren.cpa1ren = 7 THEN
         fecprimpago := fecefecto;
      -- Bug 12136 - 24/03/2010 - JRH - 0012136: CEM - RVI - Nuevo Tipo (dia uno del mes npa1ren siguiente)
      ELSIF regprodren.cpa1ren = 8 THEN
         fecprimpago := LAST_DAY(ADD_MONTHS(fecefecto, NVL(regprodren.npa1ren, 0) - 1)) + 1;
      -- Fi Bug 12136 - 24/03/2010 - JRH
      ELSIF regprodren.cpa1ren = 9 THEN
         -- Bug 15167 - 02/07/2010 - JRH - 0015167: CIV401 - Nuevo tipo
         fecprimpago := LAST_DAY(ADD_MONTHS(fecefecto, NVL(regprodren.npa1ren, 0)));
      -- Fi Bug 15167 - 02/07/2010 - JRH
      END IF;

      vtraza := 2;

      --�ltimo pago
      IF regprodren.cclaren = 0 THEN
         fecultpago := TO_DATE('31122999', 'ddmmyyyy');   --JRH IMP Por el momento en las vitalicias
      --JRH IMP ELSIF RegProdRen.cclaren = 1 THEN FecUltPago := ADD_MONTHS(FecPrimPago,(NVL(RegProdRen.nnumren,0)*12));
      ELSIF regprodren.cclaren = 1 THEN
         fecultpago := ADD_MONTHS(fecprimpago,(NVL(nduraci, 0) * 12));
      ELSIF regprodren.cclaren = 2 THEN
         fecultpago := ADD_MONTHS(fecprimpago, NVL(regprodren.nnumren, 0));
      END IF;

      vtraza := 3;
      --Pr�ximo pago
      fechaproxpago := fecprimpago;
      --Fecha inter�s garantizado
      fechainteres := fecefecto;
      --Valor renta inicial
      --jlb -- I - calculo de rentas segun movimiento
      --importebruto := pac_calc_comu.ff_capital_gar_tipo(tablas, psseguro, 1, 8, 1);
      importebruto := pac_calc_comu.ff_capital_gar_tipo(tablas, psseguro, 1, 8, pnmovimi);
      -- JLB - F

      -- Bug 10336 - 10/06/2009 - JRH  - Rentas irregulares
      IF importebruto IS NULL THEN   --JRH De
      	 --jlb -- I - calculo de rentas segun movimiento
         --importebruto := pac_calc_comu.ff_capital_gar_tipo(tablas, psseguro, 1, 11, 1);
         importebruto := pac_calc_comu.ff_capital_gar_tipo(tablas, psseguro, 1, 11, pnmovimi);
          --jlb -- F - calculo de rentas segun movimiento
      END IF;

      -- fi Bug 10336 - 10/06/2009 - JRH
      vtraza := 4;
      --Valor cap. fallecimiento

      --CapFallec:=pac_calc_comu.ff_capital_gar_tipo(tablas, psseguro, 1, 6, 1);
      --ImpCapFallec := Pac_Provmat_Formul.ff_evolu(1, 2, psseguro, v_nmovimi, duracion);
      --impcapfallec := pac_calc_comu.ff_capital_gar_tipo(tablas, psseguro, 1, 6, 1); -- BUG 24804/140175 MMS - 20130308 -- Comentar la l�nea
      --JRH IMP Es esto o la prima inicial.
       --jlb -- I - calculo de rentas segun movimiento
      --capinirent := pac_calc_comu.ff_capital_gar_tipo(tablas, psseguro, 1, 3, 1);
      capinirent := pac_calc_comu.ff_capital_gar_tipo(tablas, psseguro, 1, 3, pnmovimi);
       --jlb -- f - calculo de rentas segun movimiento
      vtraza := 5;
      estadopago := regprodren.cestmre;
      --JRH IMP De momento
      durtramo := nduraci;
      --JRH Interes subyacente
      v_garant := pac_calc_comu.f_cod_garantia(psproduc, 3, NULL, v_ctipgar);

      IF (v_garant IS NULL) THEN
         RETURN 180588;
      END IF;

      vtraza := 6;

      IF tablas = 'EST' THEN
         SELECT frevisio
           INTO fecrevi
           FROM estseguros_aho
          WHERE sseguro = psseguro;

         SELECT cactivi
           INTO actividad
           FROM estseguros
          WHERE sseguro = psseguro;

         acceso := 1;
      ELSIF tablas = 'SOL' THEN
         SELECT frevisio
           INTO fecrevi
           FROM solseguros_aho
          WHERE ssolicit = psseguro;

         SELECT cactivi
           INTO actividad
           FROM solseguros
          WHERE ssolicit = psseguro;

         acceso := 0;
      ELSE
         SELECT frevisio
           INTO fecrevi
           FROM seguros_aho
          WHERE sseguro = psseguro;

         SELECT cactivi
           INTO actividad
           FROM seguros
          WHERE sseguro = psseguro;

         acceso := 2;
      END IF;

      vtraza := 7;
      num_err := pac_tarifas.f_clave(v_garant, xcramo, xcmodali, xctipseg, xccolect,
                                     NVL(actividad, 0), 'IINTSUBY', clav);

      IF num_err <> 0 THEN
         RETURN 108422;   --'Error en selecci�n del c�digo'
      END IF;

      num_err := pac_calculo_formulas.calc_formul(fecefecto, psproduc, NVL(actividad, 0),
                                                  v_garant, 1, psseguro, clav, tipoint, NULL,
                                                  NULL, acceso, fecefecto, 'R');

      IF (num_err <> 0)
         OR(tipoint IS NULL) THEN
         RETURN 180653;
      END IF;

      vtraza := 8;
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'Pac_Calc_Rentas.f_obtener_datos_rentas_ini', vtraza,
                     'parametros: sproduc =' || psproduc || ' psseguro=' || psseguro
                     || ' fecEfecto=' || fecefecto || ' fecVto=' || fecvto || ' nduraci='
                     || nduraci,
                     SQLERRM);
         RETURN 180583;
   END;

   FUNCTION f_get_datos_revi(
      psseguro IN NUMBER,
      pcapini OUT NUMBER,
      pinter OUT NUMBER,
      pctreserv OUT NUMBER,
      pdurper OUT NUMBER,
      tablas VARCHAR2 DEFAULT 'EST')
      RETURN NUMBER IS
      /********************************************************************************************************************************
         El objetivo es devolver el resultado de los c�lculos de:
             Renta bruta
             Renta m�nima
             Inter�s garantizado
             Capital de fallecimiento

            La funci�n retorna:
               0 - si ha ido bien
              codigo error - si hay alg�n error.
      *********************************************************************************************************************************/
      v_nriesgo      NUMBER;
   BEGIN
      IF tablas = 'SOL' THEN
         SELECT icapren, pcapfall
           INTO pcapini, pctreserv
           FROM solseguros_ren
          WHERE ssolicit = psseguro;

         SELECT ndurper
           INTO pdurper
           FROM solseguros_aho
          WHERE ssolicit = psseguro;
      ELSIF tablas = 'EST' THEN
         SELECT icapren, pcapfall
           INTO pcapini, pctreserv
           FROM estseguros_ren
          WHERE sseguro = psseguro;

         SELECT ndurper
           INTO pdurper
           FROM estseguros_aho
          WHERE sseguro = psseguro;
      ELSE
         SELECT icapren, pcapfall
           INTO pcapini, pctreserv
           FROM seguros_ren
          WHERE sseguro = psseguro;

         SELECT ndurper
           INTO pdurper
           FROM seguros_aho
          WHERE sseguro = psseguro;
      END IF;

      pinter := pac_inttec.ff_int_seguro(tablas, psseguro);
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'Pac_Calc_Rentas.f_get_datos_revi', NULL,
                     'parametros: psseguro = ' || psseguro || '  psproduc = ' || psseguro,
                     SQLERRM);
         RETURN(108190);   -- Error general
   END f_get_datos_revi;
END pac_calc_rentas;

/

  GRANT EXECUTE ON "AXIS"."PAC_CALC_RENTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CALC_RENTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CALC_RENTAS" TO "PROGRAMADORESCSI";
