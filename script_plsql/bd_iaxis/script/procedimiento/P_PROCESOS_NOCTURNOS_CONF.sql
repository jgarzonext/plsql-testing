CREATE OR REPLACE PROCEDURE p_procesos_nocturnos_conf IS
  /******************************************************************************
  NOMBRE:       p_procesos_nocturnos_conf
  PROPÓSITO:    Procedimiento que ejecuta una serie de procesos

  REVISIONES:
  Ver        Fecha        Autor             Descripción
  ---------  ----------  ---------------  ------------------------------------
  1.0        25/04/2013   FFO             CreaciÃ³n del package.
  1.1        17/02/207    FAC             Cambios en el proceso de comisiones JIRA CONF-439
  1.2        20/12/2017   ABC             Adicion de un nuevo proceso para la parte de procesos nocturno
                                          y que no se liquide.
  2.0        28/03/2019   JLTS            IAXIS-3363. Se ajusta el proceso de envío de correos para RANGO DIAN
  ******************************************************************************/
  verror    NUMBER;
  p_proceso NUMBER;
  v_idioma  NUMBER := nvl(pac_contexto.f_contextovalorparametro('IAX_IDIOMA'), 2);
  v_cempres NUMBER := nvl(pac_contexto.f_contextovalorparametro('IAX_EMPRESA'), pac_parametros.f_parinstalacion_n('EMPRESADEF'));
  v_txtproc VARCHAR2(200);
  v_dummy   NUMBER := 0;
  v_sproces NUMBER;
  v_fproces DATE;
  empresa   VARCHAR2(10);
BEGIN

  BEGIN
    empresa := f_parinstalacion_n('EMPRESADEF');
    verror  := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(empresa, 'USER_BBDD'));

    IF verror > 0 THEN
      p_int_error(f_axis_literales(9900986, v_idioma),
                  'Inicializar contexto - ' || f_axis_literales(9901093, v_idioma),
                  2,
                  verror);
      RETURN;
    END IF;

    v_idioma := pac_contexto.f_contextovalorparametro('IAX_IDIOMA');
  EXCEPTION
    WHEN OTHERS THEN
      p_int_error(f_axis_literales(9900986, v_idioma),
                  'Inicializar contexto - ' || f_axis_literales(9901093, v_idioma),
                  2,
                  SQLERRM);
      RETURN;
  END;

  p_int_error(f_axis_literales(9900986, v_idioma), 'PROCESOS NOCTURNOS CONF INICIO - Fecha de inicio ' || f_sysdate, 0, NULL);
  -- Version 1.2 ABC
  BEGIN
    IF nvl(pac_parametros.f_parempresa_n(v_cempres, 'GESTIONA_COBPAG'), 0) = 1 AND
       nvl(pac_parametros.f_parempresa_n(v_cempres, 'CONTAB_ONLINE'), 0) = 1 THEN
      DECLARE
        vtipopago     NUMBER;
        vemitido      NUMBER;
        vsinterf      NUMBER;
        vsubfi        VARCHAR2(100);
        ss            VARCHAR2(3000);
        v_cursor      NUMBER;
        v_ttippag     NUMBER := 13;
        v_ttippag_rea NUMBER := 14;
        v_ttippag_coa NUMBER := 16;
        v_filas       NUMBER;
        vterminal     VARCHAR2(20);
        perror        VARCHAR2(2000);
        v_cont_coa    NUMBER;
        v_sproant     NUMBER;
        --
        CURSOR c_recibos IS
          SELECT DISTINCT (nrecibo) nrecibo
            FROM ctacoaseguro
           WHERE fcontab IS NULL
             AND nrecibo IS NOT NULL
          UNION ALL
          SELECT DISTINCT (to_number(nsinies)) nrecibo
            FROM ctacoaseguro
           WHERE fcontab IS NULL
             AND nsinies IS NOT NULL;
        --
      BEGIN
        p_int_error(f_axis_literales(9900986, v_idioma),
                    'PROCESOS NOCTURNOS POS INICIO Cierres de coaseguro' || f_sysdate,
                    0,
                    NULL);
        --cierres de coaseguro
        FOR cie IN c_recibos LOOP
          --
          vsinterf := NULL;
          verror   := pac_user.f_get_terminal(pac_md_common.f_get_cxtusuario, vterminal);
          verror   := pac_con.f_emision_pagorec(v_cempres,
                                                1,
                                                v_ttippag_coa,
                                                cie.nrecibo,
                                                NULL,
                                                vterminal,
                                                vemitido,
                                                vsinterf,
                                                perror,
                                                f_user);
          --
          IF verror <> 0 OR TRIM(perror) IS NOT NULL THEN
            --
            IF verror = 0 THEN
              verror := 151323;
            END IF;
            --
            p_int_error(f_axis_literales(9900986, v_idioma),
                        'p_procesos_nocturnos_pos Contabilidad cierres - coaseguro' || f_axis_literales(9901093, v_idioma),
                        2,
                        verror);
            --
          ELSE
            --
            UPDATE ctacoaseguro
               SET fcontab = trunc(f_sysdate)
             WHERE fcontab IS NULL
               AND nvl(nrecibo, nsinies) = cie.nrecibo;
            --
            COMMIT;
            --
          END IF;
          --
        END LOOP;
        --
      END;
      --
    END IF;
    --
  END;
  --Version 1.2 ABC
	-- INI IAXIS-3363 - JLTS - 26/03/2019
  DECLARE
    vpasexec          NUMBER(5) := 1;
    squery            VARCHAR2(5000);
    vobjectname       VARCHAR2(500) := 'PAC_RANGO_DIAN.P_VERIFICAR_RANGO';
    vparam            VARCHAR2(1000);
    v_diferencia_dias NUMBER;
    conn              utl_smtp.connection;
    v_mailuser        VARCHAR2(1000) := '';
    v_dommail         VARCHAR2(1000) := '';
    pmailgrc          VARCHAR2(100) := '';
    pmailcc           VARCHAR2(100) := '';
    pmailcco          VARCHAR2(100) := '';
    psubject          VARCHAR2(100) := '';
    pcuerpo           VARCHAR2(1000) := '';
		pmail             VARCHAR2(1000) := '';
    pasunto           VARCHAR2(1000) := '';
    pfrom             VARCHAR2(1000) := '';
    pto               VARCHAR2(1000) := '';
    pto2              VARCHAR2(1000) := '';
    perror            VARCHAR2(4000) := '';

		v_resultado       NUMBER := 0;

    CURSOR c_rango_dian IS
      SELECT (CASE
               WHEN f_sysdate BETWEEN r.ffinvig - r.naviso AND r.ffinvig THEN
                1
               ELSE
                0
             END) envia_correo, r.nresol, r.cagente, r.sproduc, r.cramo, r.fresol, r.finivig, r.ffinvig, r.tdescrip, r.ninicial,
             r.nfinal, r.cusu, r.nusu, (SELECT mail_usu FROM usuarios WHERE cusuari = r.nusu) mail, r.testado, r.cenvcorr,
             r.naviso, r.ncertavi, r.ncontador, r.falta,r.srdian
        FROM rango_dian r
       WHERE f_sysdate BETWEEN finivig AND ffinvig
         AND r.testado = '1' -- IAXIS-3363 - JLTS - 30/04/2019 - Se ajusta de A a 1
         AND r.cenvcorr = 1;
  BEGIN

    --Consulta la direccion de correo de quien envia
    v_mailuser := pac_md_common.f_get_parinstalacion_t('MAIL_USER');
    v_dommail := pac_md_common.f_get_parinstalacion_t('DOM_MAIL');

    FOR var IN c_rango_dian LOOP
      v_resultado := pac_correo.f_mail(pscorreo => 305,
                                   psseguro => NULL,
                                   pnriesgo => NULL,
                                   pcidioma => 8,
                                   pcaccion => NULL,
                                   pmail    => pmail,
                                   pasunto  => pasunto,
                                   pfrom    => pfrom,
                                   pto      => pto,
                                   pto2     => pto2,
                                   perror   => perror,
                                   pnsinies => NULL,
                                   pcmotmov => NULL,
                                   paviso   => NULL,
                                   ptasunto => NULL,
                                   ptcuerpo => NULL,
                                   pcramo   => NULL,
                                   pdestino => NULL,
                                   psrdian  => var.srdian);
      IF v_resultado<>0 THEN
				continue;
		  END IF;
      /*v_diferencia_dias := var.finivig - f_sysdate;
      IF v_diferencia_dias <= var.naviso OR var.ncontador > var.naviso THEN

        psubject := 'Rango Dian apunto de caducar, código: ' || var.nresol || '  ' || var.tdescrip;
        pmailgrc := var.mail;
        conn     := pac_send_mail.begin_mail(sender     => v_mailsender,
                                             recipients => pmailgrc,
                                             subject    => psubject,
                                             cc         => pmailcc,
                                             cco        => pmailcco,
                                             mime_type  => pac_send_mail.multipart_mime_type || '; charset=iso-8859-1');
        pac_send_mail.attach_text(conn => conn, data => pcuerpo, mime_type => 'text/html');
        pac_send_mail.end_mail(conn => conn);
      END IF;*/

    END LOOP;
		-- FIN IAXIS-3363 - JLTS - 26/03/2019
  EXCEPTION
    WHEN OTHERS THEN
      p_int_error(f_axis_literales(9900986, v_idioma),
                  'p_procesos_nocturnos_conf  ' || f_axis_literales(9901093, v_idioma),
                  2,
                  SQLERRM);

  END;

  DECLARE
    v_dev devbanrecibos.sdevolu%TYPE;
    v_pro procesoscab.sproces%TYPE;
    e_salida EXCEPTION;
  BEGIN
    IF v_dev IS NULL THEN
      SELECT nvl(MAX(sdevolu), 0) INTO v_dev FROM devbanpresentadores;
    END IF;

    v_txtproc := 'pac_devolu.tratar_devoluciones';
    verror    := pac_devolu.tratar_devoluciones(v_idioma, v_dev, v_pro);

    IF nvl(verror, 0) <> 0 THEN
      RAISE e_salida;
    END IF;

    -- BUG 0020038 - 07/12/2011 - JMF
    COMMIT;
    v_txtproc := 'pac_devolu.f_devol_automatico';
    verror    := pac_devolu.f_devol_automatico(0, 99, v_idioma, v_pro);

    IF nvl(verror, 0) <> 0 THEN
      RAISE e_salida;
    END IF;

    -- BUG 0020038 - 07/12/2011 - JMF
    COMMIT;
    -- Proceso correcto.
    p_int_error(f_axis_literales(9900986, v_idioma), v_txtproc || ' - ' || f_axis_literales(9901094, v_idioma), 0, NULL);
  EXCEPTION
    WHEN e_salida THEN
      -- proceso erroneo
      p_int_error(f_axis_literales(9900986, v_idioma),
                  v_txtproc || ' - ' || f_axis_literales(9901093, v_idioma),
                  2,
                  f_axis_literales(verror, v_idioma));
  END;

EXCEPTION
  WHEN OTHERS THEN
    p_int_error(f_axis_literales(9900986, v_idioma),
                'p_procesos_nocturnos_conf  ' || f_axis_literales(9901093, v_idioma),
                2,
                SQLERRM);
END p_procesos_nocturnos_conf;
/
