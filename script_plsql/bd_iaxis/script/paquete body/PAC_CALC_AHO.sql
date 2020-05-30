--------------------------------------------------------
--  DDL for Package Body PAC_CALC_AHO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_CALC_AHO" 
AS

   FUNCTION f_get_capitales_aho(psproduc IN NUMBER, psseguro IN NUMBER, pcapgar OUT NUMBER,
      pcapfall OUT NUMBER, pcapgar_per OUT NUMBER)
   RETURN NUMBER IS
   /********************************************************************************************************************************
      El objetivo es devolver el resultado de los c�lculos de:
           Capital garantizado al final del primer periodo,
           Capital al vencimiento
           Capital de fallecimiento

           La funci�n retorna:
              0 - si ha ido bien
              codigo error - si hay alg�n error.
   *********************************************************************************************************************************/
       v_nriesgo                        NUMBER;
       v_nmovimi                      NUMBER;
       duracion                             NUMBER;
    BEGIN
       -- Inicializamos variables
       v_nriesgo := 1;
       v_nmovimi := 1;

       -- Se busca la duraci�n del per�odo o la duraci�n de la p�liza en funcion del parproducto 'DURPER'
       duracion := pac_calc_comu.ff_get_duracion('EST', psseguro);
       IF duracion IS NULL THEN
          RETURN 104506;  -- Error al obtener la duraci�n del seguro.
       END IF;

       -- Devolvemos los valores de capital garantizado al vencimiento, capital de fallecimiento, capital garantizado final periodo
       pcapgar := pac_calc_comu.ff_capital_gar_tipo('EST', psseguro, v_nriesgo, 5, v_nmovimi);

       IF NVL(f_parproductos_v(psproduc, 'EVOLUPROVMATSEG'),0) = 1 THEN
          pcapfall := Pac_Provmat_Formul.ff_evolu(1, 2, psseguro, v_nmovimi, duracion);
          pcapgar_per := Pac_Provmat_Formul.ff_evolu(1, 1, psseguro, v_nmovimi, duracion);
       END IF;

       RETURN 0;

    EXCEPTION
       WHEN OTHERS THEN
            p_tab_error(f_sysdate,  F_USER,  'Pac_Calc_Aho.f_get_capitales_aho',NULL,
                        'parametros: psseguro = '||psseguro||'  psproduc = '||psproduc,
                        SQLERRM);
            RETURN (108190); -- Error general
    END f_get_capitales_aho;


   FUNCTION f_get_duracion_renova(pnpoliza IN NUMBER, pncertif IN NUMBER, psseguro IN NUMBER,
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
        IF pnpoliza IS NULL OR pncertif IS NULL THEN
             RETURN 140896; -- Se tiene que informar la poliza
        ELSE
           v_sseguro := ff_buscasseguro (pnpoliza, pncertif);
        END IF;
     ELSE
        v_sseguro := psseguro;
     END IF;

     IF v_sseguro IS NULL THEN
        RETURN 111995; -- Es obligatorio informar el n�mero de seguro
     END IF;

      BEGIN
         Select sproduc
         into v_sproduc
         From seguros
         Where sseguro = v_sseguro;

      EXCEPTION
         WHEN NO_DATA_FOUND THEN
              RETURN 140720; -- Error al obtener el c�digo de producto
         WHEN OTHERS THEN
              RETURN 108190; -- Error general
      END;

     Select nvl(sa.ndurper, s.nduraci)
     into v_ndurper
     From seguros_aho sa, seguros s
     Where sa.sseguro = s.sseguro
       and sa.sseguro = v_sseguro;

     Select max(ndurper)
     into v_max_ndurper
     From durperiodoprod
     Where sproduc = v_sproduc
       and ffin IS NULL;

         IF NVL(f_parproductos_v(v_sproduc, 'FECHAREV'),0) = 3 AND NVL(f_parproductos_v(v_sproduc,'ES_PRODUCTO_RENTAS'),0) = 1 THEN --JRH IMP Si revisa anualmente es un a�o para las rentas.Ponerlo mejor m�s adelante esto.
            v_max_ndurper := 1;
            v_ndurper:=1;
     END IF;

     For dur in v_ndurper..v_max_ndurper Loop
         IF pac_val_comu.F_VALIDA_DURACION_RENOVA(v_sseguro, dur) = 0 THEN
            EXIT;
         ELSE
            v_ndurper := v_ndurper + 1;
         END IF;
     End Loop;

     pndurper := v_ndurper;

     RETURN 0;

   EXCEPTION
     WHEN OTHERS THEN
                 dbms_output.put_line(sqlerrm);
          RETURN 108190; -- Error general
   END f_get_duracion_renova;


   FUNCTION f_get_datos_poliza_renova(pnpoliza IN NUMBER, pncertif IN NUMBER, psseguro IN NUMBER,
      psperson1 OUT NUMBER, psperson2 OUT NUMBER, picapgar OUT NUMBER, pndurper OUT NUMBER, pcidioma OUT NUMBER)
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

   Cursor c_asegurados (p_sseguro NUMBER) is
          Select sperson, norden
          From asegurados
          Where sseguro = p_sseguro
          Order by norden;

      num_error  NUMBER;
      v_sseguro  NUMBER;

   BEGIN
     -- Se valida que los par�metros de entrada de la funci�n est�n informados:
     -- es obligatorio que est�n informados pnpoliza y pncertir o psseguro
     -- Si el psseguro es null y llega el pnpoliza y pncertif, se llama a la funcion ff_buscasseguro para
     -- obtener el psseguro
     IF psseguro IS NULL THEN
        IF pnpoliza IS NULL OR pncertif IS NULL THEN
             RETURN 140896; -- Se tiene que informar la poliza
        ELSE
           v_sseguro := ff_buscasseguro (pnpoliza, pncertif);
        END IF;
     ELSE
        v_sseguro := psseguro;
     END IF;

     IF v_sseguro IS NULL THEN
        RETURN 111995; -- Es obligatorio informar el n�mero de seguro
     END IF;

     -- Obtener los asegurados de la tabla ASEGURADOS (sperson1 y sperson2)
     For cur in c_asegurados (v_sseguro) Loop
         IF cur.norden = 1 THEN
            psperson1 := cur.sperson;
         ELSE
            psperson2 := cur.sperson;
         END IF;
     End Loop;

     -- Obtener el capital garantizado al vencimiento actual de la p�liza
     picapgar := pac_provmat_formul.F_CALCUL_FORMULAS_PROVI(v_sseguro, trunc(f_sysdate), 'ICGARAC');

     -- Obtener la nueva duraci�n por defecto permitida
     num_error := f_get_duracion_renova(pnpoliza, pncertif, v_sseguro,
                                        pndurper);
     IF num_error <> 0 THEN
        RETURN num_error;
     END IF;

     BEGIN
         -- Obtener el idioma de la p�liza
         Select cidioma
         into pcidioma
         From seguros
         Where sseguro = v_sseguro;

     EXCEPTION
        WHEN NO_DATA_FOUND THEN
             RETURN 101395; -- Falta idioma del seguro
        WHEN OTHERS THEN
             RETURN 108190; -- Error general
     END;

     RETURN 0;

   EXCEPTION
     WHEN OTHERS THEN
          RETURN 108190; -- Error general
   END f_get_datos_poliza_renova;

   FUNCTION f_get_forpagprest_poliza(ptablas IN VARCHAR2 DEFAULT 'SEG', psseguro IN NUMBER, pcidioma_user IN NUMBER, ptfprest OUT VARCHAR2)
    RETURN NUMBER IS
        /********************************************************************************************************************************
           Funci�n que devuelve el c�digo y descripci�n de la forma de pago de la prestaci�n definido en la p�liza.
           Par�metros de entrada: . ptablas = Tablas ('EST' - temporales, 'SEG' - reales, 'SOL' - solicitudes)

           Par�metros de salida: . ptfprest = Descripci�n de la forma de pago de la prestaci�n
        *****************************************************************************************************************************/
      v_cfprest   NUMBER;
      v_descrip   VARCHAR2(100);
      num_err     NUMBER;
      Error       EXCEPTION;
   BEGIN

      -- Se busca el c�digo de la forma de pago de la prestaci�n de la p�liza seg�n el par�metro ptablas
      IF ptablas = 'EST' THEN
         Select cfprest
         Into v_cfprest
         From estseguros_aho
         Where sseguro = psseguro;
      ELSIF ptablas = 'SOL' THEN
         Select cfprest
         Into v_cfprest
         From solseguros_aho
         Where ssolicit = psseguro;
      ELSE
         Select cfprest
         Into v_cfprest
         From seguros_aho
         Where sseguro = psseguro;
      END IF;

      -- Se busca la descripci�n del c�digo
      num_err := f_desvalorfijo(205, pcidioma_user, v_cfprest, v_descrip);
      IF num_err <> 0 THEN
         Raise Error;
      END IF;

      ptfprest := v_descrip;
      RETURN v_cfprest;

   EXCEPTION
       WHEN Error THEN
            RETURN Null;
       WHEN OTHERS THEN
            p_tab_error (f_sysdate,  F_USER, 'Pac_Calc_Aho.f_get_forpagprest_poliza', null,  'parametros: ptablas = '||ptablas||
                         ' psseguro ='||psseguro||'  pcidioma_user ='||pcidioma_user, SQLERRM );
            RETURN Null;
   END f_get_forpagprest_poliza;


   FUNCTION Ff_get_aportacion_per(ptablas IN VARCHAR2 DEFAULT 'SEG', psseguro IN NUMBER, pfecha IN DATE DEFAULT F_Sysdate)
    RETURN NUMBER IS
        /********************************************************************************************************************************
           Funci�n que devuelve el importe de la aportaci�n peri�dica de la p�liza a una fecha
           Par�metros de entrada: . ptablas = Tablas ('EST' - temporales, 'SEG' - reales, 'SOL' - solicitudes)
                                  . pfecha = Fecha de c�lculo
        *****************************************************************************************************************************/
      v_nmovimi   NUMBER;
      v_capital   NUMBER;
      num_err     NUMBER;
      Error       EXCEPTION;
   BEGIN

      -- Se busca en MOVSEGURO el movimiento vigente para la fecha de c�lculo (se trata la fecha truncada)
      IF ptablas = 'EST' THEN
         v_nmovimi := null;
      ELSIF ptablas = 'SOL' THEN
         v_nmovimi := 1;
      ELSE
          Select max(nmovimi)
          into v_nmovimi
          From movseguro
          Where sseguro = psseguro
            and fefecto <= trunc(pfecha);
      END IF;

      -- Se busca el importe de la aportaci�n peri�dica
      v_capital := pac_calc_comu.ff_capital_gar_tipo(ptablas, psseguro, 1, 3, v_nmovimi, null);
      IF v_capital IS NULL THEN
         Raise Error;
      END IF;

      RETURN v_capital;

   EXCEPTION
       WHEN Error THEN
            RETURN Null;
       WHEN OTHERS THEN
            p_tab_error (f_sysdate,  F_USER, 'Pac_Calc_Aho.Ff_get_aportacion_per', null,  'parametros: ptablas = '||ptablas||
                        ' psseguro ='||psseguro||'  pfecha ='||pfecha, SQLERRM );
            RETURN Null;
   END Ff_get_aportacion_per;

 END Pac_Calc_Aho;

/

  GRANT EXECUTE ON "AXIS"."PAC_CALC_AHO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CALC_AHO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CALC_AHO" TO "PROGRAMADORESCSI";
