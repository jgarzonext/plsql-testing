--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_MOVPAGO_MAIL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_MOVPAGO_MAIL" 
   BEFORE INSERT
   ON sin_tramita_movpago
   FOR EACH ROW
        WHEN (new.cestpag = 2) DECLARE
   v_cempres      NUMBER
                     := NVL(pac_contexto.f_contextovalorparametro('IAX_EMPRESA'),
                            pac_parametros.f_parinstalacion_n('EMPRESADEF'));
   vcidioma       NUMBER
                     := NVL(pac_md_common.f_get_cxtidioma, f_parinstalacion_n('IDIOMARTF'));
   vnum_err       NUMBER := 0;
   --  envio de mail
   vsperson       sin_tramita_pago.sperson%TYPE;
   vnsinies       sin_tramita_pago.nsinies%TYPE;
   vremitente     mensajes_correo.remitente%TYPE;
   vctipo         mensajes_correo.ctipo%TYPE;
   vasunto        desmensaje_correo.asunto%TYPE;
   vcuerpo        desmensaje_correo.cuerpo%TYPE;
   v_error        VARCHAR2(300);
   vtvalcon       per_contactos.tvalcon%TYPE;
   vcagente       per_contactos.cagente%TYPE;
   vtraza         NUMBER := 0;
   vipago         sin_tramita_reserva.ipago%TYPE;
   vcmonres       sin_tramita_reserva.cmonres%TYPE;
   -- 02. 0025613 - 0144885 - Inicio
   vtcausin       sin_descausa.tcausin%TYPE;
   vtmotsin       sin_desmotcau.tmotsin%TYPE;
   vnnumide       per_personas.nnumide%TYPE;
   vtciudad       VARCHAR2(2000);
   vtnombre       VARCHAR2(2000);
   vtdelega       VARCHAR2(2000);
   vcagesin       sin_siniestro.cagente%TYPE;
-- 02. 0025613 - 0144885 - Final
BEGIN
   vtraza := 1;

   IF pac_parametros.f_parempresa_n(v_cempres, 'NOTIFICAR_PAGO') = 1 THEN
      vtraza := 10;

      BEGIN
         SELECT s.sperson, s.nsinies, f_nombre(s.sperson, 3, NULL), p.nnumide -- 02. 0025613 - 0144885
           INTO vsperson, vnsinies, vtnombre, vnnumide -- 02. 0025613 - 0144885
           FROM sin_tramita_pago s, per_personas p -- 02. 0025613 - 0144885
          WHERE sidepag = :new.sidepag
                AND s.sperson = p.sperson; -- 02. 0025613 - 0144885

         vtraza := 20;

         -- Destinatario del correo
         SELECT p.tvalcon, p.cagente
           INTO vtvalcon, vcagente
           FROM per_contactos p
          WHERE p.sperson = vsperson
                AND p.cmodcon IN (SELECT MIN(x.cmodcon)
                                    FROM per_contactos x
                                   WHERE x.sperson = vsperson
                                         AND x.ctipcon = 3); --> E-mail

         vtraza := 30;

         BEGIN
            SELECT NVL(cidioma, vcidioma)
              INTO vcidioma
              FROM per_detper
             WHERE sperson = vsperson
                   AND cagente = vcagente;
         EXCEPTION
            WHEN NO_DATA_FOUND THEN
               NULL;
         END;

         --Nuevo registro en mensajes correo
         vtraza := 40;

         SELECT remitente, ctipo
           INTO vremitente, vctipo
           FROM mensajes_correo
          WHERE scorreo = 75;

         --Descripci¿n del correo
         vtraza := 50;

         SELECT msg.asunto, msg.cuerpo
           INTO vasunto, vcuerpo
           FROM desmensaje_correo msg
          WHERE scorreo = 75
                AND cidioma = vcidioma;

         vtraza := 60;

         SELECT SUM(NVL(s.ipago_moncia, NVL(s.ipago, 0))), MIN(cmonres)
           INTO vipago, vcmonres
           FROM sin_tramita_reserva s
          WHERE sidepag = :new.sidepag;

         -- 02. 0025613 - 0144885 - Inicio
         vtraza := 70;

         SELECT c.tcausin, m.tmotsin, NVL(s.cagente, x.cagente)
           INTO vtcausin, vtmotsin, vcagesin
           FROM sin_descausa c, sin_desmotcau m, sin_siniestro s, seguros x
          WHERE c.ccausin = s.ccausin
                AND c.cidioma = vcidioma
                AND m.ccausin = s.ccausin
                AND m.cmotsin = s.cmotsin
                AND m.cidioma = vcidioma
                AND s.nsinies = vnsinies
                AND s.sseguro = x.sseguro;

         vtraza := 80;

         BEGIN
            SELECT f_nombre(sperson, 3, vcagente)
              INTO vtdelega
              FROM agentes
             WHERE cagente = pac_redcomercial.f_busca_padre(v_cempres, vcagesin, NULL, NULL);
         EXCEPTION
            WHEN NO_DATA_FOUND THEN
               vtdelega := NULL;
         END;

         vtraza := 180;
         vcuerpo := REPLACE(vcuerpo, '#CIUDAD#', vtciudad);
         vtraza := 190;
         vcuerpo := REPLACE(vcuerpo, '#NOMBRE_DESTI_PAGO#', vtnombre);
         vtraza := 200;
         vcuerpo := REPLACE(vcuerpo, '#ID_DESTI_PAGO#', vnnumide);
         vtraza := 210;
         vcuerpo := REPLACE(vcuerpo, '#SIN_DESCAUSA_TCAUSIN#', vtcausin);
         vtraza := 220;
         vcuerpo := REPLACE(vcuerpo, '#SIN_CODMOTCAU_TMOTSIN#', vtmotsin);
         vtraza := 230;
         vcuerpo := REPLACE(vcuerpo, '#SUCURSAL#', vtdelega);
         -- 02. 0025613 - 0144885 - Final
         vtraza := 240;
         vcuerpo := REPLACE(vcuerpo, '#SIN_TRAMITA_RESERVA.IPAGO#', vipago);
         vtraza := 250;
         vcuerpo := REPLACE(vcuerpo, '#SIDEPAG#', :new.sidepag);
         vtraza := 260;
         vcuerpo := REPLACE(vcuerpo, '#NSINIES#', vnsinies);
         vtraza := 270;

         SELECT REPLACE(REPLACE(vcuerpo, '#NPOLIZA#', s.npoliza), '#NCERTIF#', s.ncertif)
           INTO vcuerpo
           FROM seguros s, sin_siniestro ss
          WHERE s.sseguro = ss.sseguro
                AND ss.nsinies = vnsinies;

         vtraza := 280;
         vcuerpo := REPLACE(vcuerpo, '#MONEDA#', vcmonres);
         vtraza := 290;
         p_enviar_correo(vremitente, vtvalcon, NULL, NULL, vasunto, vcuerpo);
         vtraza := 300;
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            p_tab_error(f_sysdate, f_user, 'TRIGGER WHO_SIN_TRAMITA_PAGO_MAIL', vtraza, 'No se envió correo por siniestro pagado (' || :new.sidepag || ')', 'NO_DATA_FOUND - new.sidepag[' || :new.sidepag || '] new.cestpag[' || :new.cestpag || '] idioma[' || vcidioma || '] ' || ' new.sperson[' || vsperson || '] vcagente[' || vcagente || '] vremitente[' || vremitente || ']' || '] vtvalcon[' || vtvalcon || ']' || '] vasunto[' || vasunto || ']');
            NULL;
         WHEN OTHERS THEN
            p_tab_error(f_sysdate, f_user, 'TRIGGER WHO_SIN_TRAMITA_PAGO_MAIL', vtraza, SQLERRM, 'new.sidepag[' || :new.sidepag || '] new.cestpag[' || :new.cestpag || '] idioma[' || vcidioma || '] ' || ' new.sperson[' || vsperson || '] vcagente[' || vcagente || '] vremitente[' || vremitente || ']' || '] vtvalcon[' || vtvalcon || ']' || '] vasunto[' || vasunto || ']');
      END;
   END IF;
END "WHO_SIN_TRAMITA_MOVPAGO_MAIL";




/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_MOVPAGO_MAIL" ENABLE;
