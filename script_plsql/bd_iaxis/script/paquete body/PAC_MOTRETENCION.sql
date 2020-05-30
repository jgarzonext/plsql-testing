--------------------------------------------------------
--  DDL for Package Body PAC_MOTRETENCION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_MOTRETENCION" AS
   /****************************************************************************
      NOMBRE:     pac_motretencion
      PROP�SITO:  Funciones relacionadas con movimientos de retenci�n.

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ----------------------------------
      1.0        XX/XX/XXXX   RSC             Creaci�n del pacakge
      2.0        19/03/2009   RSC             Ajuste en F_retenica_sin_rescate.
      3.0        04/06/2009   DCT             Creaci�n funci�n f_editar_propuesta
      4.0        02/09/2009   XPL             Modificaci�n funci�n f_editar_propuesta, se a�aden m�s opciones de edici�n
      5.0        19/02/2010   DRA             0011583: CRE - Incidencia en modificaci�n de datos de Suplemento
      6.0        08/06/2010   JGR             0014751: CRE200 - Error al modificar p�lisses pendents d'emetre
      7.0        15/07/2010   DRA             0015410: CEM003 - P�lisses risc: Modificaci� p�lisses retingudes voluntariament
      8.0        04/06/2013   DCT             0027081: LCOL_PROD-QT 6947: Consulta de Vetos IAXIS LIBELULA
      9.0        24/04/2014   FAL             0027642: RSA102 - Producto Tradicional
     10.0        08/04/2015   FAL             0035409: T - Producto Convenios
     11.0        04/06/2015   AQ              0036248: Error en la pantalla de p�lizas pendientes de emitir
   ****************************************************************************/

   /*
   {Funci�n privada  que nos da el m�ximo movimiento de detalle para un motivo de retenci�n}
   */
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

   FUNCTION f_max_nmotrev(
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      pnriesgo IN NUMBER,
      pcmotret IN NUMBER,
      pnmotret IN NUMBER,
      pfusuauto IN DATE DEFAULT NULL)
      RETURN NUMBER IS
      resultat       NUMBER;
   BEGIN
      SELECT MAX(nmotrev)
        INTO resultat
        FROM motreten_rev
       WHERE sseguro = psseguro
         AND nmovimi = pnmovimi
         AND nriesgo = pnriesgo
         AND cmotret = pcmotret
         AND nmotret = pnmotret
         AND fusuauto <= NVL(pfusuauto, fusuauto);

      RETURN NVL(resultat, 0);
   END f_max_nmotrev;

/*
{ Funci�n que acepta todos los motivos de retenci�n para todos los riesgo,
 y motivos de un seguro, y deja el creteni = 0}
*/
   FUNCTION f_desretener(psseguro IN NUMBER, pnmovimi IN NUMBER, pobserva IN VARCHAR2)
      RETURN NUMBER IS
      --  {motivos de retenci�n cuyo �ltimo movimiento de detalle  no sea de aceptaci�n}
      CURSOR desret IS
         SELECT *
           FROM motretencion m
          WHERE sseguro = psseguro
            AND nmovimi = pnmovimi
            AND(NOT EXISTS(SELECT nmotret
                             FROM motreten_rev r
                            WHERE r.sseguro = m.sseguro
                              AND r.nriesgo = m.nriesgo
                              AND r.nmovimi = m.nmovimi
                              AND r.cmotret = m.cmotret
                              AND r.nmotret = m.nmotret)
                OR 1 <> (SELECT cresulta
                           FROM motreten_rev x
                          WHERE x.sseguro = m.sseguro
                            AND x.nriesgo = m.nriesgo
                            AND x.nmovimi = m.nmovimi
                            AND x.cmotret = m.cmotret
                            AND x.nmotret = m.nmotret
                            AND x.nmotrev = pac_motretencion.f_max_nmotrev(x.sseguro,
                                                                           x.nmovimi,
                                                                           x.nriesgo,
                                                                           x.cmotret,
                                                                           x.nmotret)));

      n_nmotrev      NUMBER;
   BEGIN
      FOR c IN desret LOOP
         --{calculamos el maximo mov. del detalle}
         n_nmotrev := pac_motretencion.f_max_nmotrev(c.sseguro, c.nmovimi, c.nriesgo,
                                                     c.cmotret, c.nmotret);
         n_nmotrev := n_nmotrev + 1;

           /*
         {Insertamos la autorizaci�n}
         */
         INSERT INTO motreten_rev
                     (nmotret, nmotrev, sseguro, nriesgo, nmovimi, cmotret,
                      cusuauto, fusuauto, cresulta, tobserva)
              VALUES (c.nmotret, n_nmotrev, c.sseguro, c.nriesgo, c.nmovimi, c.cmotret,
                      f_user, f_sysdate, 1, pobserva);
      END LOOP;

       /*
      {Actualizamos el seguro}
      */
      UPDATE seguros
         SET creteni = 0
       WHERE sseguro = psseguro;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN 151331;   --{Error al desretener la p�liza}
   END f_desretener;

   /*
   { Funci�n que nos indica si un riesgo est� retenido. El �ltimo movimiento no es de aceptaci�n
    Valida para preguntar si esta retenido por un motivo en especial}
   */
   FUNCTION f_risc_retingut(
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      pnriesgo IN NUMBER,
      pcmotret IN NUMBER DEFAULT NULL)
      RETURN NUMBER IS
      retenida       NUMBER;
   BEGIN
      SELECT COUNT(1)
        INTO retenida
        FROM motretencion m
       WHERE sseguro = psseguro
         AND nmovimi = pnmovimi
         AND nriesgo = pnriesgo
         AND cmotret = NVL(pcmotret, cmotret)
         AND(NOT EXISTS(SELECT nmotret
                          FROM motreten_rev r
                         WHERE r.sseguro = m.sseguro
                           AND r.nriesgo = m.nriesgo
                           AND r.nmovimi = m.nmovimi
                           AND r.cmotret = m.cmotret
                           AND r.nmotret = m.nmotret)
             OR 1 <> (SELECT cresulta
                        FROM motreten_rev x
                       WHERE x.sseguro = m.sseguro
                         AND x.nriesgo = m.nriesgo
                         AND x.nmovimi = m.nmovimi
                         AND x.cmotret = m.cmotret
                         AND x.nmotret = m.nmotret
                         AND x.nmotrev = pac_motretencion.f_max_nmotrev(x.sseguro, x.nmovimi,
                                                                        x.nriesgo, x.cmotret,
                                                                        x.nmotret)));

      IF retenida > 0 THEN
         RETURN 1;
      ELSE
         RETURN 0;
      END IF;
   END f_risc_retingut;

   /*
   {Funci�n que nos devuelve el estado de una autorizaci�n}
   */
   FUNCTION f_estado_autorizacion(
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      pnriesgo IN NUMBER,
      pcmotret IN NUMBER,
      pnmotret IN NUMBER)
      RETURN NUMBER IS
      estado         NUMBER;
   BEGIN
      BEGIN
         SELECT cresulta
           INTO estado
           FROM motreten_rev
          WHERE sseguro = psseguro
            AND nriesgo = pnriesgo
            AND nmovimi = pnmovimi
            AND cmotret = pcmotret
            AND nmotret = pnmotret
            AND nmotrev = f_max_nmotrev(psseguro, pnmovimi, pnriesgo, pcmotret, pnmotret);
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            RETURN 0;   --{Estado pendiente}
      END;

      RETURN estado;   --{devolvemos el estado de}
   END f_estado_autorizacion;

/*
{
 Funci�n que ens retorna el detalle de motretenci�n para una poliza y una fecha
 1.-Retenci�n Voluntaria
 2.-Cuestionario no v�lido
 3.-Exceso edad/capital nivel 1
 4.-Exceso edad/capital nivel 2
 5.-Ret.autom.(error emisi�n)
 }
*/
   FUNCTION f_sit_reten(psseguro IN NUMBER, pfefecto IN DATE)
      RETURN NUMBER IS
      c_cmotret      NUMBER;
   BEGIN
      BEGIN
         SELECT DISTINCT cmotret
                    INTO c_cmotret
                    FROM motretencion m
                   WHERE sseguro = psseguro
                     AND freten >= pfefecto
                     AND 1 <> (SELECT cresulta
                                 FROM motreten_rev x
                                WHERE x.sseguro = m.sseguro
                                  AND x.nmovimi = x.nmovimi
                                  AND x.nriesgo = x.nriesgo
                                  AND x.cmotret = x.cmotret
                                  AND x.nmotret = x.nmotret
                                  AND x.nmotrev =
                                        pac_motretencion.f_max_nmotrev(x.sseguro, x.nmovimi,
                                                                       x.nriesgo, x.cmotret,
                                                                       x.nmotret, pfefecto));
      EXCEPTION
         WHEN OTHERS THEN
            c_cmotret := 0;
      END;

      RETURN c_cmotret;
   END f_sit_reten;

/*
Retenemos la poliza temporalmente hasta que se impriman los documentos y se decida emitir o cancelar.
*/
   FUNCTION f_retencion_provisional(psseguro IN NUMBER, pnriesgo IN NUMBER, pnmovimi IN NUMBER)
      RETURN NUMBER IS
      n_nmotret      NUMBER;
      n_mot_no_rev   NUMBER;
   BEGIN
      BEGIN
         /*
         {Borramos los motivos temporales que no han sido aceptados}
         */
         BEGIN
            DELETE      motretencion m
                  WHERE m.sseguro = psseguro
                    AND m.nmovimi = pnmovimi
                    AND m.nriesgo = pnriesgo
                    AND m.cmotret = 6
                    AND NOT EXISTS(SELECT 1
                                     FROM motreten_rev r
                                    WHERE r.sseguro = psseguro
                                      AND r.nmovimi = pnmovimi
                                      AND r.nriesgo = pnriesgo
                                      AND r.cmotret = 6
                                      AND r.nmotret = m.nmotret);
         EXCEPTION
            WHEN OTHERS THEN
               NULL;
         END;

         /*
         {Obtenemos el n�mero de movimiento de motretenci�n}
         */
         SELECT MAX(nmotret)
           INTO n_nmotret
           FROM motretencion
          WHERE sseguro = psseguro
            AND nmovimi = pnmovimi
            AND nriesgo = pnriesgo;

           /*
         CPM 8/10/04: Miramos cuantos motivos quedan por revisar.
         Solo insertaremos si no hay ning�n otro motivo por revisar
           */
         SELECT COUNT(nmotret)
           INTO n_mot_no_rev
           FROM motretencion m
          WHERE m.sseguro = psseguro
            AND m.nmovimi = pnmovimi
            AND m.nriesgo = pnriesgo
            AND NOT EXISTS(SELECT 1
                             FROM motreten_rev r
                            WHERE r.sseguro = psseguro
                              AND r.nmovimi = pnmovimi
                              AND r.nriesgo = pnriesgo
                              AND r.nmotret = m.nmotret);

         IF n_mot_no_rev = 0 THEN
            /* Fi CPM */
               /*
               {Insertamos un nuevo registro en motretencion  con motivo temporal}
               */
            INSERT INTO motretencion
                        (sseguro, nriesgo, nmovimi, cmotret, cusuret, freten,
                         nmotret)
                 VALUES (psseguro, pnriesgo, pnmovimi, 6, f_user, TRUNC(f_sysdate),
                         NVL(n_nmotret, 0) + 1);

            /*
             {retenenemos momentane�mente la p�lzia}
            */
            UPDATE seguros
               SET creteni = 1
             WHERE sseguro = psseguro;
         END IF;
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX THEN
            NULL;
      END;

      RETURN 0;
   END f_retencion_provisional;

    -- Bug 9534 - 19/03/2009 - RSC -  Incidencia en la func��n pac_motretencion.f_esta_retenica_sin_resc
   -- A�adimos condicion: AND femisio < pfecha + 1
   FUNCTION f_esta_retenica_sin_resc(psseguro IN NUMBER, pfecha IN DATE DEFAULT f_sysdate)
      RETURN NUMBER IS
      /* Funci�n que indica si una p�liza est� retenida por siniestro o rescate a una fecha. Si pfecha = null nos lo dir� a
         fecha de hoy.
      */
      v_num_reg      NUMBER;
      v_creteni      NUMBER;
      v_csituac      NUMBER;
   BEGIN
      BEGIN
         -- Bug 9534 - 19/03/2009 - RSC -  Incidencia en la func��n pac_motretencion.f_esta_retenica_sin_resc
         -- A�adimos condicion: AND femisio < pfecha + 1
         SELECT creteni, csituac
           INTO v_creteni, v_csituac
           FROM historicoseguros
          WHERE sseguro = psseguro
            AND nmovimi = (SELECT MAX(nmovimi)
                             FROM movseguro
                            WHERE sseguro = psseguro
                              AND fefecto <= pfecha
                              AND femisio < pfecha + 1);
      EXCEPTION
         WHEN OTHERS THEN
            BEGIN
               SELECT creteni, csituac
                 INTO v_creteni, v_csituac
                 FROM seguros
                WHERE sseguro = psseguro;
            EXCEPTION
               WHEN OTHERS THEN
                  p_tab_error(f_sysdate, f_user, 'pac_motretencion.f_esta_retenica_sin_resc',
                              NULL, 'psSeguro =' || psseguro || ' pfecha = ' || pfecha,
                              SQLERRM);
                  RETURN NULL;
            END;
      END;

        -- Bug 9534 - 19/03/2009 - RSC -  Incidencia en la func��n pac_motretencion.f_esta_retenica_sin_resc
      -- A�adimos condicion: AND femisio < pfecha + 1
      SELECT COUNT(*)
        INTO v_num_reg
        FROM movseguro
       WHERE cmovseg = 10   -- RETENCION
         AND sseguro = psseguro
         AND cmotmov IN(110, 112)
-- 110 - Retenci�n por alta de siniestro; 112 - Retenci�n por rescate de p�liza
         AND nmovimi = (SELECT MAX(nmovimi)
                          FROM movseguro
                         WHERE sseguro = psseguro
                           AND fefecto <= pfecha
                           AND femisio < pfecha + 1)
         AND ROWNUM = 1;

      IF v_csituac = 0
         AND   -- p�liza vigente
            v_creteni = 1
         AND   -- p�liza retenida
            v_num_reg > 0 THEN
         RETURN 1;   -- retenida por siniestro o rescate
      ELSE
         RETURN 0;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_motretencion.f_esta_retenica_sin_resc', NULL,
                     'psSeguro =' || psseguro || ' pfecha = ' || pfecha, SQLERRM);
         RETURN NULL;
   END f_esta_retenica_sin_resc;

   /******************************************************************************************
     Autor: XVILA (09/01/2009)
     Descripci�: Executa una consulta sobre els motius de retenci�
     Par�metres entrada: - psseguro  -> n�mero segur
                           pnriesgo  -> n�mero risc
                           pnmovimi  -> n�mero moviment
                           pcmotret  -> codi motiu retenci�
                           pnmotrev  ->
     Par�metres sortida  - pcusuauto -> codi usuari
                           pfusuauto -> data
                           pcresulta -> resultats
                           ptobserva -> observacions
     return:             retorna 0 si va tot b�, sino el codi de l'error
   ******************************************************************************************/
   FUNCTION f_get_datosauto(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pnmovimi IN NUMBER,
      pcmotret IN NUMBER,
      pnmotret IN NUMBER,
      pnmotrev IN NUMBER,
      pcusuauto OUT VARCHAR2,
      pfusuauto OUT DATE,
      pcresulta OUT NUMBER,
      ptobserva OUT VARCHAR2)
      RETURN NUMBER IS
      vobjectname    VARCHAR2(500) := 'PAC_MOTRETENCION.f_get_datosauto';
      vparam         VARCHAR2(500)
         := 'par�metros - psseguro: ' || psseguro || ' - pnriesgo:' || pnriesgo
            || ' - pnmovimi:' || pnmovimi || ' - pcmotret:' || pcmotret || ' - pnmotret:'
            || pnmotret || ' - pnmotrev:' || pnmotrev;
      vpasexec       NUMBER(5) := 1;
      vnum_err       NUMBER(8);
   BEGIN
      --Comprovaci� dels par�metres d'entrada
      IF psseguro IS NULL
         OR pnriesgo IS NULL
         OR pnmovimi IS NULL
         OR pcmotret IS NULL
         OR pnmotret IS NULL THEN
         RAISE e_param_error;
      END IF;

      vpasexec := 2;

      BEGIN
         SELECT cusuauto, fusuauto, cresulta, tobserva
           INTO pcusuauto, pfusuauto, pcresulta, ptobserva
           FROM motreten_rev
          WHERE sseguro = psseguro
            AND nriesgo = pnriesgo
            AND nmovimi = pnmovimi
            AND cmotret = pcmotret
            AND nmotret = pnmotret
            AND nmotrev = NVL(pnmotrev,
                              pac_motretencion.f_max_nmotrev(sseguro, nmovimi, nriesgo,
                                                             cmotret, nmotret));
      EXCEPTION
         WHEN OTHERS THEN
            pcusuauto := NULL;
            pfusuauto := NULL;
            pcresulta := NULL;
            ptobserva := NULL;
      END;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         p_tab_error(f_sysdate, f_user, vobjectname, vpasexec, vparam,
                     'Objeto invocado con par�metros erroneos');
         RETURN 9000505;
      WHEN e_object_error THEN
         p_tab_error(f_sysdate, f_user, vobjectname, vpasexec, vparam,
                     'vnum_err: ' || vnum_err);
         RETURN vnum_err;
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, vobjectname, vpasexec, vparam,
                     'SQLERROR: ' || SQLCODE || ' - ' || SQLERRM);
         RETURN 111449;
   END f_get_datosauto;

   /******************************************************************************************
     Autor: DCT (13/05/2009)
     Descripci�: Funci� que retorna si la p�lissa es editable o no
     Par�metres entrada: - psseguro -> n�mero segur
                           pnmovimi -> n�mero moviment
                           pcempres -> empresa
                           puser -> usuario (F_USER Usuario de conexi�n)
     Par�metres sortida  - pcedit -> 0-No editable 1- Editable
     return:             retorna 0 si va tot b�, sino el codi de l'error
   ******************************************************************************************/
   FUNCTION f_editar_propuesta(
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      pcempres IN NUMBER,
      puser IN VARCHAR2,
      pcedit OUT NUMBER)
      RETURN NUMBER IS
      vcusuret       motretencion.cusuret%TYPE;
      vcdelega_usuret usuarios.cdelega%TYPE;
      vcdelega       usuarios.cdelega%TYPE;
      v_permite      NUMBER;
      vrealiza       NUMBER;
      vnumerr        NUMBER;
      vcreteni       seguros.creteni%TYPE;
      v_csituac      seguros.csituac%TYPE;
      vcmotret       NUMBER;
      vsproduc       NUMBER;
      vparampsu      NUMBER;

      FUNCTION f_get_edit_mismo_agente
         RETURN NUMBER IS
      BEGIN
         vparampsu := pac_parametros.f_parproducto_n(vsproduc, 'PSU');
           p_control_error('0000000001','pac_motretencion','psseguro='||psseguro||'pnmovimi='||pnmovimi||'puser='||puser);
         IF NVL(vparampsu, 0) = 0 THEN
            SELECT mt.cusuret
              INTO vcusuret
              FROM motretencion mt
             WHERE mt.sseguro = psseguro
               AND mt.nmovimi = pnmovimi
               AND mt.cmotret = 1;
         ELSIF NVL(vparampsu, 0) = 1 THEN
            SELECT mt.cusuret
              INTO vcusuret
              FROM psu_retenidas mt
             WHERE mt.sseguro = psseguro
               AND mt.nmovimi = pnmovimi;
         END IF;

         SELECT cdelega
           INTO vcdelega_usuret
           FROM usuarios
          WHERE cusuari = vcusuret;

         SELECT cdelega
           INTO vcdelega
           FROM usuarios
          WHERE cusuari = puser;

         --Si s�n les mateixes delegacions editable si no no
         IF vcdelega_usuret = vcdelega THEN
            RETURN 1;
         ELSE
            RETURN 0;
         END IF;
      EXCEPTION
         WHEN OTHERS THEN
            RETURN 0;
      END f_get_edit_mismo_agente;

      FUNCTION f_get_edit_mismo_user
         RETURN NUMBER IS
         vcedit         NUMBER;
      BEGIN
         vparampsu := pac_parametros.f_parproducto_n(vsproduc, 'PSU');

         IF NVL(vparampsu, 0) = 0 THEN
            SELECT DECODE(COUNT('x'), 0, 0, 1)
              INTO vcedit
              FROM motretencion mt
             WHERE mt.sseguro = psseguro
               AND mt.nmovimi = pnmovimi
               AND mt.cmotret IN(1, 20)
               AND mt.cusuret = puser;
         ELSIF NVL(vparampsu, 0) = 1 THEN
            IF vcreteni = 1 THEN
               --0036248: Error en la pantalla de p�lizas pendientes de emitir
               SELECT DECODE(COUNT('x'), 0, 0, 1)
                 INTO vcedit
                 FROM psu_retenidas mt
                WHERE mt.sseguro = psseguro
                  AND mt.nmovimi = pnmovimi
                  AND mt.cusuret = puser;
            ELSE
               --0036248: Error en la pantalla de p�lizas pendientes de emitir
               vcedit := 0;
            END IF;
         END IF;

         RETURN NVL(vcedit, 0);
      EXCEPTION
         WHEN OTHERS THEN
            RETURN 0;
      END f_get_edit_mismo_user;

      -- BUG15410:DRA:15/07/2010:Inici
      FUNCTION f_get_cmotret
         RETURN NUMBER IS
         vcedit         NUMBER;
         xcempres       NUMBER;
      BEGIN
         vparampsu := pac_parametros.f_parproducto_n(vsproduc, 'PSU');

         SELECT cempres
           INTO xcempres
           FROM empresas;

         IF NVL(vparampsu, 0) = 0 THEN
            SELECT DECODE(COUNT('x'), 0, 0, 1)
              INTO vcedit
              FROM motretencion mt
             WHERE mt.sseguro = psseguro
               AND mt.nmovimi = pnmovimi
               AND mt.cmotret IN(1, 20)
               AND mt.nmotret = (SELECT MAX(mt1.nmotret)
                                   FROM motretencion mt1
                                  WHERE mt1.sseguro = psseguro
                                    AND mt1.nmovimi = pnmovimi);
         ELSIF NVL(vparampsu, 0) = 1 THEN
            --BUG 27081_145710 - INICIO - DCT --Cambiar DECODE(COUNT('x'), 0, 0, 1) por DECODE(COUNT('x'), 0, 1, 0)
            IF NVL(pac_parametros.f_parempresa_n(xcempres, 'EDI_POL_PSU_RETENIDA'), 0) = 1 THEN
               vcedit := 1;
            ELSE
               SELECT DECODE(COUNT('x'), 0, 1, 0)
                 INTO vcedit
                 FROM psu_retenidas mt
                WHERE mt.sseguro = psseguro
                  AND MT.NMOVIMI = PNMOVIMI
                  AND mt.CMOTRET != 0; --Ramiro modificar
            END IF;
         --BUG 27081_145710 - FIN - DCT --Cambiar DECODE(COUNT('x'), 0, 0, 1) por DECODE(COUNT('x'), 0, 1, 0)
         END IF;

         RETURN NVL(vcedit, 0);
      EXCEPTION
         WHEN OTHERS THEN
            RETURN 0;
      END f_get_cmotret;
   -- BUG15410:DRA:15/07/2010:Fi
   BEGIN
      SELECT sproduc
        INTO vsproduc
        FROM seguros
       WHERE sseguro = psseguro;

      --Comprovem l'estat en que es troba la proposta
      vnumerr := pac_gestion_retenidas.f_estado_propuesta(psseguro, vcreteni);
      --Recuperamos para la empresa que parametrizaci�n tiene:
      --                                                       0--> Nadie puede editar las propuestas
      --                                                       1--> Todo el mundo puede editar las propuestas
      --                                                       2--> S�lo pueden editar las propuestas los usuarios que han "guardado/retenido
      --                                                            manualmente" la propuesta.
      --                                                       3--> S�lo pueden editar las propuestas los usuarios de la misma delegaci�n/agente.
      --                                                       4--> Els usuaris que tinguin definida l'acci� 'MODIF_PROP_PEND'
      --                                                       5--> Els usuaris que tinguin definida l'acci� 'MODIF_PROP_PEND',
      --                                                            m�s l'usuari que ha retingut la proposta (complement a l'opci� 2 existent)
      --                                                       6--> Els usuaris que tinguin definida l'acci� 'MODIF_PROP_PEND',
      --                                                            m�s els usuari que pertanyen a la mateixa delegaci�/agent que l'ha retingut (complement a l'opci� 3 existent)
      pcedit := pac_parametros.f_parempresa_n(pcempres, 'EDITAR_PROPUESTA');
       p_control_error('0000000001','pac_motretencion','psseguro='||psseguro||'pnmovimi='||pnmovimi||'puser='||puser||'pcedit='||pcedit||'vcreteni='||vcreteni);

      IF pcedit = 2 THEN   --Nom�s poden editar les propostes els usuaris que han "guardat/retingut manualment" la proposta.
         pcedit := f_get_edit_mismo_user;
      ELSIF pcedit = 3 THEN   --Nom�s poden editar les propostes els usuaris de la mateixa delegaci�/agent
         pcedit := f_get_edit_mismo_agente;

         p_control_error('pcedit salida','pac_motretencion','pcedit='||pcedit);
      ELSIF pcedit = 4   -- Els usuaris que tinguin definida l'acci� 'MODIF_PROP_PEND'
            OR pcedit =
                 5   -- Els usuaris que tinguin definida l'acci� 'MODIF_PROP_PEND', m�s l'usuari que ha retingut la proposta (complement a l'opci� 2 existent)
            OR pcedit = 6 THEN   --Els usuaris que tinguin definida l'acci� 'MODIF_PROP_PEND', m�s els usuari que pertanyen a la mateixa delegaci�/agent que l'ha retingut (complement a l'opci� 3 existent)
         v_permite := pac_cfg.f_get_user_accion_permitida(puser, 'MODIF_PROP_PEND', NULL,
                                                          pcempres, vrealiza);

         IF v_permite = 0 THEN
            IF pcedit = 4 THEN
               pcedit := 0;
            END IF;

            IF pcedit = 5 THEN
               pcedit := f_get_edit_mismo_user;
            END IF;

            IF pcedit = 6 THEN
               pcedit := f_get_edit_mismo_agente;
            END IF;
         ELSE
            pcedit := 1;
         END IF;
      END IF;

      -- BUG15410:DRA:15/07/2010:Inici
      -- BUG11583:DRA:19/02/2010:Inici
      IF pcedit = 1 THEN   -- Si todav�a nos deja modificar la p�liza, seguimos mirando si cumple con el resto de  caracteristicas
         -- jlb 06/04/2011 - 18181 - nuevo estado de retenci�n voluntaria
         --IF NVL(vcreteni, 0) <> 0 THEN
         -- Si la retenci� NO  es voluntaria,ni normal

         -- BUG 0035409 - FAL - 08/04/2015 - Si por PSU no debe evaluar si psus retenidas s�lo en las retenidas (estado retenci�n = 1). Resuelve: mostraba editar las de retenci�n Normal (0) si configurada accion MODIF_PROP_PEND
         /*
         IF NVL(vcreteni, 0) NOT IN(0, 1, 5) THEN
            pcedit := f_get_cmotret;
         END IF;
         */
         vparampsu := pac_parametros.f_parproducto_n(vsproduc, 'PSU');

         IF NVL(vparampsu, 0) = 0 THEN
            IF NVL(vcreteni, 0) NOT IN(0, 1, 5) THEN
               pcedit := f_get_cmotret;
            END IF;
         ELSIF NVL(vparampsu, 0) = 1 THEN
            IF NVL(vcreteni, 0) NOT IN(1) THEN
               pcedit := f_get_cmotret;
            END IF;
         END IF;

         -- FI BUG 0035409 - FAL - 08/04/2015

         -- BUG11583:DRA:19/02/2010:Fi
         -- BUG15410:DRA:15/07/2010:Fi

         -- BUG14751:JGR:08/06/2010:Inici
         vnumerr := pac_seguros.f_get_csituac(psseguro, 'SEG', v_csituac);

         IF vnumerr <> 0 THEN
            RETURN vnumerr;
         END IF;

         -- BUG18181:JLB:05/04/2011:Inici
            --IF v_csituac != 4 THEN
         IF NVL(PAC_PARAMETROS.F_PAREMPRESA_N(PCEMPRES, 'EDI_POL_PSU_RETENIDA'), 0) = 0 THEN
            IF v_csituac NOT IN(4, 12,5) THEN  --ramiro modificar
               pcedit := 0;
            END IF;
         END IF;

         IF vcreteni IN(4, 7, 9) THEN
            pcedit := 0;
         END IF;
      END IF;

      -- BUG14751:JGR:08/06/2010:Fi
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN

         p_control_error('Excepcion pcedit','pac_motretencion','pcedit='||pcedit);
         pcedit := 0;
         RETURN 1;
   END f_editar_propuesta;

-- BUG 27642 - FAL - 24/04/2014
   FUNCTION f_set_retencion(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pnmovimi IN NUMBER,
      pcmotret IN NUMBER)
      RETURN NUMBER IS
      v_existe       NUMBER;
      n_nmotret      NUMBER;
   BEGIN
      v_existe := 0;

      SELECT COUNT(1)
        INTO v_existe
        FROM motretencion
       WHERE sseguro = psseguro
         AND nmovimi = pnmovimi
         AND nriesgo = pnriesgo
         AND cmotret = pcmotret;

      IF v_existe = 0 THEN
         BEGIN
            SELECT NVL(MAX(nmotret), 0) + 1
              INTO n_nmotret
              FROM motretencion
             WHERE sseguro = psseguro
               AND nmovimi = pnmovimi
               AND nriesgo = pnriesgo;
         END;

         INSERT INTO motretencion
                     (sseguro, nriesgo, nmovimi, cmotret, cusuret,
                      freten, nmotret, cestgest)
              VALUES (psseguro, pnriesgo, pnmovimi, pcmotret, pac_md_common.f_get_cxtusuario,
                      f_sysdate, n_nmotret, NULL);
      END IF;

      RETURN 0;
   END f_set_retencion;
-- FI BUG 27642
END pac_motretencion;

/

  GRANT EXECUTE ON "AXIS"."PAC_MOTRETENCION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MOTRETENCION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MOTRETENCION" TO "PROGRAMADORESCSI";
