--------------------------------------------------------
--  DDL for Package Body PAC_VALIDA_ACCION_SUPL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_VALIDA_ACCION_SUPL" AS
    /******************************************************************************
      NOMBRE:      PAC_VALIDA_ACCION_SUPL
      PROP�SITO:   Package con proposito de negocio para introducir funciones de
                   validaci�n de lanzamiento del suplemento diferido. Estas
                   funciones de validaci�n pretenden ser genericas para cada movimiento
                   de suplemento y se parametriza su llamada en la tabla
                   PDS_SUPL_DIF_CONFIG.FVALFUN

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        27/04/2009     RSC              1. Creaci�n del package.
                                                    Bug 9905 - Suplemento de cambio de forma de pago diferido
      2.0        06/11/2012     MDS              2. 0024278: LCOL_T010 - Suplementos diferidos - Cartera - colectivos
   ******************************************************************************/

   /***********************************************************************
      Realiza la validaci�n de que la forma de pago no est� ya modificada al
      valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realiza el suplemento diferido de cambio de forma de pago.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento,
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/-- Bug 9905 - 27/04/2009 - RSC - Suplemento de cambio de forma de pago diferido
   FUNCTION f_valida_cforpag(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_cforpag      seguros.cforpag%TYPE;
      v_naccion      sup_acciones_dif.naccion%TYPE;
      vpasexec       NUMBER := 1;
   BEGIN
      vpasexec := 2;

      SELECT cforpag
        INTO v_cforpag
        FROM seguros
       WHERE sseguro = psseguro;

      vpasexec := 3;

      SELECT naccion
        INTO v_naccion
        FROM sup_acciones_dif
       WHERE sseguro = psseguro
         AND cmotmov = pcmotmov;

      IF v_cforpag <> v_naccion THEN   -- Si las formas de pago son diferentes
                                       -- realiza el suplemento. Si no, pues
                                       -- no hagas nada.
         RETURN 1;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.F_VALIDA_CFORPAG', vpasexec,
                     'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_cforpag;

   -- Fin Bug 9905

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de garant�as no est� ya
      modificada al valor que pretende modificar el diferimiento, en cuyo
      caso, no se deber� realiza el suplemento diferido de modificaci�n de
      garant�as.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento,
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
    -- Bug 9905 - 27/04/2009 - RSC - Suplemento de cambio de forma de pago diferido
   FUNCTION f_valida_garantias(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      v_retorno      NUMBER;
      v_retorno_d    DATE;
      vpasexec       NUMBER := 1;
   BEGIN
      vpasexec := 2;

      FOR i IN (SELECT *
                  FROM sup_acciones_dif
                 WHERE sseguro = psseguro
                   AND cmotmov = pcmotmov) LOOP
         v_sel := 'SELECT ' || i.tcampo || ' FROM GARANSEG ' || 'WHERE ' || i.twhere
                  || ' AND nmovimi = (SELECT MAX(nmovimi) FROM garanseg WHERE ' || i.twhere
                  || ')';
         v_sel := REPLACE(v_sel, ':SSEGURO', psseguro);

         IF i.dinaccion = 'D' THEN   -- Delete
            EXECUTE IMMEDIATE v_sel
                         INTO v_retorno_d;

            IF v_retorno IS NULL THEN   -- Si esta vigente la damos de baja
               RETURN 1;
            END IF;
         ELSE
            EXECUTE IMMEDIATE v_sel
                         INTO v_retorno;

            IF v_retorno <> i.naccion THEN   -- si alguna diferencia hacemos el supl.
               RETURN 1;
            END IF;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.F_VALIDA_GARANTIAS', vpasexec,
                     'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_garantias;

   -- Fin Bug 9905

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de revalorizaci�n no est�
      ya modificada al valor que pretende modificar el diferimiento, en cuyo
      caso, no se deber� realiza el suplemento diferido de modificaci�n de
      revalorizaci�n.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento,
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
    -- Bug 9905 - 27/04/2009 - RSC - Suplemento de cambio de forma de pago diferido
   FUNCTION f_valida_revali(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      vpasexec       NUMBER := 1;
      v_crevali      seguros.crevali%TYPE;
      v_prevali      seguros.prevali%TYPE;
      v_irevali      seguros.irevali%TYPE;
   BEGIN
      vpasexec := 2;

      SELECT crevali, prevali, irevali
        INTO v_crevali, v_prevali, v_irevali
        FROM seguros
       WHERE sseguro = psseguro;

      vpasexec := 3;

      FOR i IN (SELECT *
                  FROM sup_acciones_dif
                 WHERE sseguro = psseguro
                   AND cmotmov = pcmotmov) LOOP
         IF UPPER(i.tcampo) = 'CREVALI' THEN
            IF v_crevali <> i.naccion THEN
               RETURN 1;
            END IF;
         ELSIF UPPER(i.tcampo) = 'IREVALI' THEN
            IF v_irevali <> i.naccion THEN
               RETURN 1;
            END IF;
         ELSIF UPPER(i.tcampo) = 'PREVALI' THEN
            IF v_prevali <> i.naccion THEN
               RETURN 1;
            END IF;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.F_VALIDA_CFORPAG', vpasexec,
                     'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_revali;

   -- Fin Bug 9905

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de agente no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realiza el suplemento diferido de modificaci�n de agente.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento,
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
    -- Bug 9905 - 27/04/2009 - RSC - Suplemento de cambio de forma de pago diferido
   FUNCTION f_valida_agente(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_cagente      seguros.cagente%TYPE;
      v_naccion      sup_acciones_dif.naccion%TYPE;
      vpasexec       NUMBER := 1;
   BEGIN
      vpasexec := 2;

      SELECT cagente
        INTO v_cagente
        FROM seguros
       WHERE sseguro = psseguro;

      vpasexec := 3;

      SELECT naccion
        INTO v_naccion
        FROM sup_acciones_dif
       WHERE sseguro = psseguro
         AND cmotmov = pcmotmov;

      IF v_cagente <> v_naccion THEN
         RETURN 1;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.F_VALIDA_AGENTE', vpasexec,
                     'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_agente;

-- Fin Bug 9905

   -- Ini Bug 24278 - MDS - 07/11/2012
   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de domicilio del tomador no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de domicilio del tomador.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_cdomici(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      v_retorno      NUMBER;
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTTOMADORES
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTTOMADORES') LOOP
         v_sel := 'SELECT ' || reg.tcampo || ' FROM TOMADORES ' || ' WHERE ' || reg.twhere;
         v_sel := REPLACE(v_sel, ':SSEGURO', psseguro);

         IF reg.dinaccion = 'U' THEN   -- Update
            EXECUTE IMMEDIATE v_sel
                         INTO v_retorno;

            IF v_retorno <> reg.naccion THEN   -- si hay alguna diferencia se hace el suplemento
               RETURN 1;
            END IF;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_cdomici', vpasexec,
                     'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_cdomici;

   /***********************************************************************
      Realiza la validaci�n de que el cambio de revalorizaci�n no est� ya hecho
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de cambio de revalorizaci�n.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_revaloriza(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      v_retorno      NUMBER;
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTSEGUROS
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTSEGUROS') LOOP
         v_sel := 'SELECT ' || reg.tcampo || ' FROM SEGUROS ' || ' WHERE ' || reg.twhere;
         v_sel := REPLACE(v_sel, ':SSEGURO', psseguro);

         IF reg.dinaccion = 'U' THEN   -- Update
            EXECUTE IMMEDIATE v_sel
                         INTO v_retorno;

            IF v_retorno <> reg.naccion THEN   -- si hay alguna diferencia se hace el suplemento
               RETURN 1;
            END IF;
         END IF;
      END LOOP;

      -- validaci�n de cambios en ESTGARANSEG
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTGARANSEG') LOOP
         v_sel := 'SELECT ' || reg.tcampo || ' FROM GARANSEG ' || ' WHERE ' || reg.twhere;
         v_sel := REPLACE(v_sel, ':SSEGURO', psseguro);

         IF reg.dinaccion = 'U' THEN   -- Update
            EXECUTE IMMEDIATE v_sel
                         INTO v_retorno;

            IF v_retorno <> reg.naccion THEN   -- si hay alguna diferencia se hace el suplemento
               RETURN 1;
            END IF;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_revaloriza',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_revaloriza;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n del porcentaje de participaci�n no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n del porcentaje de participaci�n.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifcocorretaje(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      v_retorno      NUMBER;
      vpasexec       NUMBER := 1;
   BEGIN
      -- Si llega hasta aqu� es que ha habido alguna modificaci�n por lo que siempre lo ha de hacer
      RETURN 1;
   END f_valida_modifcocorretaje;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de garant�as no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de garant�as.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifgarantias(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      v_retorno      NUMBER;
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTGARANSEG
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable IN('ESTGARANSEG', 'ESTPREGUNGARANSEG')) LOOP
         v_sel := 'SELECT ' || reg.tcampo || ' FROM GARANSEG ' || ' WHERE ' || reg.twhere;
         v_sel := REPLACE(v_sel, ':SSEGURO', psseguro);

         IF reg.dinaccion = 'U' THEN   -- Update
--            EXECUTE IMMEDIATE v_sel
--                         INTO v_retorno;

            --            IF v_retorno <> reg.naccion THEN   -- si hay alguna diferencia se hace el suplemento
            RETURN 1;
--            END IF;
         ELSE
            IF reg.dinaccion IN('I', 'D') THEN
               RETURN 1;
            END IF;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_modifgarantias',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_modifgarantias;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de cl�usulas no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de garant�as.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifclausulas(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTCLAUSUSEG, ESTCLAUSUESP
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable IN('ESTCLAUSUSEG', 'ESTCLAUSUESP')) LOOP
         IF reg.dinaccion IN('I', 'D') THEN
            RETURN 1;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_modifclausulas',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_modifclausulas;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de preguntas de p�liza no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de preguntas de p�liza.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifpregunpol(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      v_cretorno     estpregunpolseg.crespue%TYPE;
      v_tretorno     estpregunpolseg.trespue%TYPE;
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTPREGUNPOLSEG
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion, vaccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'PREGUNPOLSEG') LOOP
         v_sel := 'SELECT ' || reg.tcampo || ' FROM PREGUNPOLSEG ' || ' WHERE ' || reg.twhere;
         v_sel := REPLACE(v_sel, ':SSEGURO', psseguro);

         IF reg.dinaccion = 'U' THEN   -- Update
            IF reg.tcampo = 'CRESPUE' THEN
               EXECUTE IMMEDIATE v_sel
                            INTO v_cretorno;

               IF v_cretorno <> reg.naccion THEN   -- si hay alguna diferencia se hace el suplemento
                  RETURN 1;
               END IF;
            END IF;

            IF reg.tcampo = 'TRESPUE' THEN
               EXECUTE IMMEDIATE v_sel
                            INTO v_tretorno;

               IF v_tretorno <> reg.vaccion THEN   -- si hay alguna diferencia se hace el suplemento
                  RETURN 1;
               END IF;
            END IF;
         ELSE
            IF reg.dinaccion IN('I', 'D') THEN
               RETURN 1;
            END IF;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_modifpregunpol',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_modifpregunpol;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de preguntas de riesgo no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de preguntas de p�liza.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifpregunries(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      v_cretorno     estpregunseg.crespue%TYPE;
      v_tretorno     estpregunseg.trespue%TYPE;
      vpasexec       NUMBER := 1;
   BEGIN
      p_control_error('DCT00', 'f_valida_modifpregunries',
                      'psseguro  = ' || psseguro || ' pcmotmov  = ' || pcmotmov);

      -- validaci�n de cambios en ESTPREGUNSEG
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion, vaccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTPREGUNSEG') LOOP
         v_sel := 'SELECT ' || reg.tcampo || ' FROM ESTPREGUNSEG ' || ' WHERE ' || reg.twhere;
         v_sel := REPLACE(v_sel, ':SSEGURO', psseguro);

         /*IF reg.dinaccion = 'U' THEN   -- Update
            IF reg.tcampo = 'CRESPUE' THEN
            p_control_error('DCT01', 'f_valida_modifpregunries', 'reg.tcampo  = ' || reg.tcampo || ' v_sel  = ' || v_sel );
               EXECUTE IMMEDIATE v_sel
                            INTO v_cretorno;

                  p_control_error('DCT02', 'f_valida_modifpregunries', 'v_cretorno  = ' || v_cretorno || ' reg.naccion  = ' || reg.naccion );
               --IF v_cretorno <> reg.naccion THEN   -- si hay alguna diferencia se hace el suplemento
                  RETURN 1;
               --END IF;
            END IF;

            IF reg.tcampo = 'TRESPUE' THEN
               EXECUTE IMMEDIATE v_sel
                            INTO v_tretorno;

               --IF v_tretorno <> reg.vaccion THEN   -- si hay alguna diferencia se hace el suplemento
                  RETURN 1;
               --END IF;
            END IF;
         ELSE
            IF reg.dinaccion IN('I', 'D') THEN
               RETURN 1;
            END IF;
         END IF;*/
         IF reg.dinaccion IN('I', 'D', 'U') THEN
            RETURN 1;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_modifpregunries',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_modifpregunries;

-- Fin Bug 24278 - MDS - 07/11/2012
   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de oficina no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de oficina.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifoficina(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTSEGUROS
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTSEGUROS') LOOP
         IF reg.dinaccion IN('I', 'D', 'U') THEN
            RETURN 1;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_modifoficina',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_modifoficina;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de forma de pago no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de forma de pago.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifcforpag(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTSEGUROS
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTSEGUROS') LOOP
         IF reg.dinaccion IN('I', 'D', 'U') THEN
            RETURN 1;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_modifcforpag',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_modifcforpag;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de fecha efecto no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de fecha efecto.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modiffefecto(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTSEGUROS
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTSEGUROS') LOOP
         IF reg.dinaccion IN('I', 'D', 'U') THEN
            RETURN 1;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_modiffefecto',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_modiffefecto;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de comision no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de comision.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifcomisi(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTSEGUROS
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTSEGUROS') LOOP
         IF reg.dinaccion IN('I', 'D', 'U') THEN
            RETURN 1;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_modifcomisi',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_modifcomisi;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n del retorno no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n del retorno.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifretorno(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTRTN_CONVENIO
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTRTN_CONVENIO') LOOP
         IF reg.dinaccion IN('I', 'D', 'U') THEN
            RETURN 1;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_modifretorno',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_modifretorno;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n del coaseguro no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n del coaseguro.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifcoacua(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTSEGURO
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTSEGUROS') LOOP
         IF reg.dinaccion IN('I', 'D', 'U') THEN
            RETURN 1;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_valida_modifcoacua',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_modifcoacua;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de prorroga vigencia no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de prorroga vigencia.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error

      BUG 0026070 - 20/02/2013 - JMF
   ***********************************************************************/
   FUNCTION f_prorroga_vigencia(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      vpasexec       NUMBER := 1;
   BEGIN
      -- validaci�n de cambios en ESTSEGURO
      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTSEGUROS') LOOP
         IF reg.dinaccion IN('I', 'D', 'U') THEN
            RETURN 1;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.f_prorroga_vigencia',
                     vpasexec, 's=' || psseguro || ' f=' || pfecha || ' m=' || pcmotmov,
                     'SQLERRM: ' || SQLERRM);
         RETURN -1;
   END f_prorroga_vigencia;

   /***********************************************************************
      Realiza la validaci�n de que la alta de garant�as no est� ya
      modificada al valor que pretende modificar el diferimiento, en cuyo
      caso, no se deber� realiza el suplemento diferido de modificaci�n de
      garant�as.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento,
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_alta_garantias(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER IS
      v_naccion      sup_acciones_dif.naccion%TYPE;
      v_sel          VARCHAR2(1000);
      v_retorno      NUMBER;
      v_retorno_d    DATE;
      vpasexec       NUMBER := 1;
   BEGIN
      vpasexec := 2;

      FOR reg IN (SELECT dinaccion, tcampo, twhere, naccion
                    FROM sup_acciones_dif
                   WHERE sseguro = psseguro
                     AND cmotmov = pcmotmov
                     AND ttable = 'ESTGARANSEG') LOOP
         IF reg.dinaccion IN('I', 'D', 'U') THEN
            RETURN 1;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_VALIDA_ACCION_SUPL.F_VALIDA_ALTA_GARANTIAS',
                     vpasexec, 'SQLERRM: ' || SQLERRM, NULL);
         RETURN -1;
   END f_valida_alta_garantias;
END pac_valida_accion_supl;

/

  GRANT EXECUTE ON "AXIS"."PAC_VALIDA_ACCION_SUPL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_VALIDA_ACCION_SUPL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_VALIDA_ACCION_SUPL" TO "PROGRAMADORESCSI";
