CREATE OR REPLACE PROCEDURE p_emitir_propuesta (
   pcempres    IN       NUMBER,
   pnpoliza    IN       NUMBER,
   pncertif    IN       NUMBER,
   pcramo      IN       NUMBER,
   pcmodali    IN       NUMBER,
   pctipseg    IN       NUMBER,
   pccolect    IN       NUMBER,
   pcactivi    IN       NUMBER,
   pmoneda     IN       NUMBER,
   pcidioma    IN       NUMBER,
   pindice     OUT      NUMBER,
   pindice_e   OUT      NUMBER,
   pcmotret    OUT      NUMBER,                      -- BUG9640:DRA:16/04/2009
   pmensaje    OUT      VARCHAR2,              -- BUG 27642 - FAL - 30/04/2014
   psproces    IN       NUMBER DEFAULT NULL,
   pnordapo    IN       NUMBER DEFAULT NULL,
   pcommit     IN       NUMBER DEFAULT NULL,
   pitotdev    IN       NUMBER DEFAULT NULL -- IAXIS-7650 20/11/2019
)
IS
   /*--------------------------------------------------------------------------------------
   Emissi¿ de propostes d'alta i suplement segons els par¿metres d'entrada.
   Els suplements : 214 , 233 , 234 , 218 , 219  (Canvi forma de pagament i canvi de data
                    de renovaci¿ i venciment ) NO S'utilitzen, s'eliminen de l'emissi¿ i
                    per tant la crida de la reasseguran¿a es far¿ en el seu package
                    corresponent
   El par¿metre psproces ¿s opcional. Si ve informat s'utilitza, sino, s'obt¿ un de nou
   1.- S'afegeix el n¿ d'aportant per les aportacions extres

   2.- Se a¿ade el par¿metro pcommit. Si est¿ informado quiere decir que NO haremos
                  el commit si ha ido bien.

   3.- En un suplemento en una p¿liza de ahorro, el recibo se generar¿ con fecha
                  de efecto la pr¿xima cartera ( para que genere prima devengada), aunque la fecha
                  de efecto del suplemento sea otra (23/2/2004 YIL).
   --------------------------------------------------------------------------------------*/

   /******************************************************************************
   NOMBRE:       P_EMITIR_PROPUESTA
   PROP¿SITO:    Procedimiento que realiza la emisi¿n de una p¿liza

   REVISIONES:
   Ver        Fecha     Autor     Descripci¿n
   ------- ----------  -------   ------------------------------------
   1.0     ??/??/????  ???        1. Creaci¿n del package.
   2.0     30/03/2009  DRA        2. 0009640: IAX - Modificar missatge de retenci¿ de p¿lisses pendents de facultatiu
   3.0     28/04/2009  APD        3. 0009720: APR - n¿mero de poliza incorrecto en NP
   4.0     04/05/2009  APD        4. Bug 9685 - en lugar de coger la actividad de la tabla seguros,
                                     llamar a la funci¿n pac_seguros.ff_get_actividad
   5.0     01/06/2009  NMM        5. 0010061: IAX - Emissi¿ de p¿lisses. Error en la data d'efecte utilitzada en el reasseguro.
   6.0     29/05/2009  JTS        6. BUG 9658 - JTS - APR - Desarrollo PL de comisiones de adquisi¿n
   7.0     09/12/2009  RSC        7. 0012178 CRE201 - error en emisi¿n en p¿lizas colectivas de salud.
   8.0     01/12/2009  NMM        8. 11845.CRE - Ajustar reasseguran¿a d'estalvi.
   9.0     08/04/2010  AVT        9. 13946: CRE200 - Incidencia cartera - p¿lizas retenidas por facultativo
   10.0    01/07/2010  RSC       10. 0013832: APRS015 - suplemento de aportaciones ¿nicas
   11.0    23/08/2010  DRA       11. 0015617: AGA103 - migraci¿n de p¿lizas - Numeraci¿n de polizas
   12.0    10/08/2010  RSC       12. 0014775: AGA003 - Error en dades rebut plantilla Condicionat Particular AGA012
   13.0    19/10/2010  DRA       13. 0016372: CRE800 - Suplements
   14.0    15/12/2010  JMP       14. 0017008: GRC - Llamar a PAC_PROPIO.F_CONTADOR2 para la generaci¿n del n¿ de p¿liza
   15.0    03/03/2011  JGR       15. 0017672: CEM800 - Contracte Reaseguro 2011 - A¿adir nuevo par¿metro w_cdetces
   16.0    29/09/2011  DRA       16. 0019069: LCOL_C001 - Co-corretaje
   17.0    26/10/2011  JMP       17. 0018423: LCOL000 - Multimoneda
   18.0    08/12/2011  JRH       18. 0020163: LCOL_T004-Completar parametrizaci¿n de los productos de Vida Individual (2¿ parte)
   19.0    14/12/2011  RSC       19. 0019715: LCOL: Migraci¿n de productos de Vida Individual
   20.0    22/06/2012  JGR       20. 0021924: MDP - TEC - Nuevos campos en pantalla de Gesti¿n (Tipo de retribuci¿n, Domiciliar 1¿ recibo, Revalorizaci¿n franquicia)
   21.0    04/09/2012  AVT       21. 0023567: LCOL_A002-QTRACKER 4877: Hace cesion cuando hay movimientos de ahorro
   22.0    03/09/2012  JMF       0022701: LCOL: Implementaci¿n de Retorno
   23.0    29/10/2012  DRA       23. 0023853: LCOL - PRIMAS M¿NIMAS PACTADAS POR P¿LIZA Y POR COBRO
   24.0    06/12/2012  ECP       24. 0025001: LCOL_T001-qtracker5410 - No se pueden emitir polizas con Extraordinaria igual a 0
   25.0    08/01/2013  APD       25. 0023853: LCOL - PRIMAS M¿NIMAS PACTADAS POR P¿LIZA Y POR COBRO
   26.0    08/01/2013  APD       26. 0023940: LCOL_T010-LCOL - Certificado 0 renovable - Renovaci?n colectivos
   27.0    28/02/2013  ECP       27. 0025119: LCOL_T001-Modificar la funci?n para informar pregunta Tabla de mortalidad para seguros prorrogado, saldado y convertibilidad
   28.0    11/03/2013  AEG       28. 0024685: (POSDE600)-Desarrollo-GAPS Tecnico-Id 5 -- N?mero de p?liza manual
   29.0    30/04/2013  ECP       29. 0024706: LCOL - Suplementos econ¿micos y recibos por diferencia de provisi¿n/prima - Vida Individual
   30.0    18/06/2013  dlF       30. 0025870: AGM900 - Nuevo producto sobreprecio frutales 2013 - Error prorrateo reaseguro
   31.0    15/07/2013  RCL       31. 0027505: POSS518 (POSSF200)- Resolucion de Incidencias FASE 1-2: Tecnico - Generales
   32.0    02/09/2013  FAL       32. 0025720: RSAG998 - Numeraci¿n de p¿lizas por rangos
   33.0    02/09/2013  ECP       33. 0012244: Poliza 9127 Poliza emitida con errores
   34.0    30/4/2014   FAL       34. 0027642: RSA102 - Producto Tradicional
   35.0   14/05/2014   ECP       35. 0031204: LCOL896-Soporte a cliente en Liberty (Mayo 2014)
   36.0   04/09/2014   FAL       36. 0031992/0182843 - QT: 0013402
   37.0   30/01/2015   AFM       37. 0034462: Suplementos de convenios (Retroactivo)
   38.0   23/12/2016   FAL       38. 0039481: Errores al cambiar de versi¿n el convenio 07000435011982 (bug hermano interno)
   39.0   13/09/2019   DFR       39. IAXIS-5274: Suplementos económicos sin recibos
   40.0   9/10/2019    SGM       40. IAXIS 5273 Se dispara creación de cert. Dian
   41.0   16/10/2019   ECP       41. IAXIS-5421. Endosos con tarifación cero (o), no debe generar recibo.
   42.0   31/10/2019   DFR       42. IAXIS-6524: Ajuste en la creación de recibos en suplementos de extorno
   43.0   13/11/2019   DFR       43. IAXIS-7179: ERROR EN LA INSERCIÓN DEL EXTORNO 
   44.0   14/11/2019   ECP       44. IAXIS-3264. Suplemento Baja de Amparos
   45.0   20/11/2019   DFR       45. IAXIS-7650: ERROR BAJA DE AMPAROS
   46.0   19/01/2019   JLTS      46. IAXIS-3264. Suplemento Baja de Amparos
   47.0   28/01/2020   ECP       47. IAXIS-3504. Gestión Suplementos
   48.0   11/02/2020   ECP       48. IAXIS-11905.Error Pantallas gestión Suplementos
   49.0   19/02/2020   JLTS      49. IAXIS-2099. Se incluye el llamdo a la función PAC_FINANCIERA.f_grab_agenda_no_inf_fin
   50.0   25/02/2020   ECP       50. IAXIS-6224  Endosos con prima (0) no generan Recibo, aplica para Cumplimiento y RC
   51.0   28/02/2020   JLTS      51. IAXIS-3264  Toca rechazar el cambio de la tarea IAXIS-6224 y ajustarlo para que los Endosos con prima (0) no generan Recibo, 
                                                 aplica para Cumplimiento y RC. Lo anterior debido a que los extornos y las bajas de amparo se dañaron.
    ******************************************************************************/
   TYPE t_cursor IS REF CURSOR;

   c_pol                  t_cursor;
   v_sel                  VARCHAR2 (4000);
   v_pol                  seguros%ROWTYPE;
   lnmovimi               NUMBER;
   lcmotmov               NUMBER;
   lcmovseg               NUMBER;
   lcdomper               NUMBER;
   lctiprec               NUMBER;
   lctipmov               NUMBER;
   -- Ini 24706 --ECP-- 30/04/2013
   lctipmov2              NUMBER;
   -- Fin 24706 --ECP-- 30/04/2013
   lcforpag               NUMBER;
   lfcanua                DATE;
   lcrevfpg               NUMBER;
   lndiaspro              NUMBER;
   lcprprod               NUMBER;
   --Indica si un producto es de rentas.
   lfaux                  DATE;
   lfcapro                DATE;
   lmeses                 NUMBER;
   lfvencim               DATE;
   lmotivo                NUMBER;
   lsproces               NUMBER;
   lahorro                NUMBER;
   lcmovi                 NUMBER;
   lgenrec                NUMBER;
   vgenrecibo             NUMBER;                    -- IAXIS-5274 13/09/2019
   lsumpri                NUMBER;
   lnum_recibo            NUMBER;
   lnumrec                NUMBER;
   lsituacion             NUMBER;
   lcapital               NUMBER;
   ximporx                NUMBER;             --Var. muda le devuelve RECRIES
   xccobban               NUMBER;
   w_ffinal               DATE;
   lno282                 NUMBER;
   lmensaje               VARCHAR2 (500)                        := NULL;
   ltexto                 VARCHAR2 (400);
   --ltexto2        VARCHAR2(400);
   --ltarjet_aln    VARCHAR2(2);
   lgesdoc                VARCHAR2 (10);
   ddmm                   VARCHAR2 (4);
   dd                     VARCHAR2 (2);
   lfefecto               DATE;
   nprolin                NUMBER;
   --w_sfacult      NUMBER;
   --lcuenta        NUMBER;
   num_err                NUMBER                                := 0;
   --num_err2       NUMBER := 0;
   xcimpres               NUMBER;
   lprimera               NUMBER;
   lsentencia             VARCHAR2 (500);
   lnomesextra            NUMBER;
   lctipefe               NUMBER;
   fecha_aux              DATE;
   lno48                  NUMBER;
   lcgarant               NUMBER;
   l_fefecto_1            DATE;
   lnordapo               NUMBER;
   --lnrecibo       NUMBER;
   lorigen                NUMBER;
   lfinici                DATE;
   lffin                  DATE;
   ldetces                NUMBER;
   lcforamor              NUMBER;
   lrecsuppm              NUMBER;
   --borrar_reteni  NUMBER;
   lcsubpro               NUMBER;
   v_ncertif              NUMBER;
   v_npoliza              NUMBER                                := NULL;
   xtraspas               NUMBER;
   -- Bug 5467 - 10/02/2009 - RSC - CRE - Desarrollo de sistema de copago
   vptipo                 pregunseg.crespue%TYPE;
   vpporcen               pregunseg.crespue%TYPE;
   vpimporte              pregunseg.crespue%TYPE;
   vptipban               seguros.ctipban%TYPE;
   v_npoliza_prefijo      NUMBER;
   v_npoliza_cnv          NUMBER;                  -- BUG15617:DRA:23/08/2010
   v_npoliza_ini          VARCHAR2 (15);           -- BUG15617:DRA:23/08/2010
   v_crespue              pregunpolseg.crespue%TYPE;
                                              -- BUG 16095 - APD - 04/11/2010
   -- Bug 19096 - RSC - 03/08/2011 - LCOL - Parametrizaci¿n b¿sica producto Vida Individual Pagos Permanentes (Afegim 'RRIE')
   --v_recibo_ahorro recibos.nrecibo%TYPE;
   --v_recibo_riesgo recibos.nrecibo%TYPE;
   --v_listarec     t_lista_id;
   --v_obrec        ob_lista_id;
   -- Fin Bug 19096
   xcmodcom               NUMBER;            --Bug.: 18852 - 07/09/2011 - ICV
   -- Bug 19715 - RSC - 10/12/2011 - LCOL: Migraci¿n de productos de Vida Individual
   v_funcion              VARCHAR2 (50);
   ss                     VARCHAR2 (3000);
   v_sproces              NUMBER;
   v_sseguro              seguros.sseguro%TYPE;
   v_fefecto              VARCHAR2 (10);
   v_nmovimi              movseguro.nmovimi%TYPE;
   v_num_err_lin          NUMBER;
   -- Fin Bug  19715
   v_imprec               NUMBER;
   v_nrecprimin           NUMBER;
   v_sumiprianu           NUMBER;
   v_iprimin              NUMBER;
   -- BUG : 24685 2013-02-25 AEG Se asigna numero de poliza manual.
   v_ctipoasignum         estseguros.ctipoasignum%TYPE;
   v_npolizamanual        estseguros.npolizamanual%TYPE;
   v_npolizamanual_real   estseguros.npolizamanual%TYPE;
   v_sproduc              estseguros.sproduc%TYPE;
   v_cempres              estseguros.cempres%TYPE;
   v_cagente              estseguros.cagente%TYPE;
   v_cramo                estseguros.cramo%TYPE;
   v_err                  NUMBER;
   errores                EXCEPTION;
-- fin BUG : 24685 2013-02-25 AEG Se asigna numero de poliza manual.
-- BUG 25720 - FAL - 02/09/2013
   npoldispo              NUMBER;
   v_mail                 desmensaje_correo.cuerpo%TYPE;
   v_asunto               desmensaje_correo.asunto%TYPE;
   v_from                 mensajes_correo.remitente%TYPE;
   v_to                   destinatarios_correo.direccion%TYPE;
   v_to2                  destinatarios_correo.direccion%TYPE;
   v_error                VARCHAR2 (300);
-- FI BUG 25720 - FAL - 02/09/2013
--BUG29229 - INICIO - DCT - 09/12/2013
   v_existe_susp          NUMBER;
   v_contareb             NUMBER;
   xnrecibosupl           NUMBER;
   v_ttexto               suspensionseg.ttexto%TYPE;
   v_fvigencia            suspensionseg.fvigencia%TYPE;
   v_lista                t_lista_id                         := t_lista_id
                                                                          ();
   --v_nrecibos     recibos.nrecibo%TYPE;
   v_nrecibos             VARCHAR2 (300);
   v_cur                  t_cursor;
   v_nrecunif             adm_recunif.nrecunif%TYPE;
   v_fefecto_min          recibos.fefecto%TYPE;
   v_sseguro_0            seguros.sseguro%TYPE;
--BUG29229 - FIN - DCT - 09/12/2013
   v_contaeco             NUMBER;
   v_tmensaje             VARCHAR2 (500);     -- BUG 27642 - FAL - 30/04/2014
   v_cregul               movseguro.cregul%TYPE;   -- BUG 34462 - AFM - RETRO
   v_maxfecfin            tramosregul.fecfin%TYPE;  -- BUG 34462 - AFM -RETRO
   vhayregul              BOOLEAN                               := FALSE;
   num_err_aux            NUMBER                                := 0;
   v_aux                  NUMBER;
   p_to                   VARCHAR2 (500);
   p_to2                  VARCHAR2 (500);
   p_from                 VARCHAR2 (500);
   psubject               VARCHAR2 (500);
   ptexto                 VARCHAR2 (500);
   vnrecibo               NUMBER;
   viconcep_monpol        NUMBER;
   varerror               NUMBER;
   --Ini IAXIS-5421 -- ECP -- 15/10/2019
   v_prima                NUMBER :=  NVL(pitotdev, 0); -- IAXIS-7650 20/11/2019
   v_existe               NUMBER;

   --Fin IAXIS-5421 -- ECP -- 15/10/2019
   --
   -- Inicio IAXIS-7179 13/11/2019 
   --
   v_tlastrec             pac_adm.rrecibo; 
   v_ctiprec              NUMBER;
   --
   -- Fin IAXIS-7179 13/11/2019 
   --
   -- INI IAXIS-3264 -28/028/2020
   v_nriesgo riesgos.nriesgo%TYPE;
   vgastexpsup number;
   -- FIN IAXIS-3264 -28/028/2020

   FUNCTION f_genera_tram_regul (ptiporec IN VARCHAR2)
      RETURN NUMBER
   IS
      vpas        NUMBER    := 1;
      errorproc   EXCEPTION;
      lmensaje    NUMBER    := 0;
   BEGIN
      FOR i IN (SELECT DISTINCT nmovimiorg, fecini, fecfin
                           FROM tramosregul
                          WHERE sseguro = v_pol.sseguro
                                AND nmovimi = lnmovimi)
      LOOP
         vpas := 2;
         lmensaje :=
            f_recries (v_pol.ctipreb,
                       v_pol.sseguro,
                       v_pol.cagente,
                       f_sysdate,
                       i.fecini,
                       i.fecfin,
                       lctiprec,
                       NULL,
                       NULL,
                       xccobban,
                       NULL,
                       lsproces,
                       lctipmov,
                       ptiporec,
                       xcmodcom,
                       lfcanua,
                       0,
                       lcmovi,
                       NULL,
                       lnmovimi,
                       lsituacion,
                       ximporx,
                       lnordapo,
                       NULL,
                       NULL,
                       'CAR',
                       lcdomper,
                       i.nmovimiorg
                      );
         vpas := 3;

         IF lmensaje <> 0
         THEN
            p_tab_error (f_sysdate,
                         f_user,
                         'p_emitir_propuesta.trata_regul',
                         194,
                            'pcempres = '
                         || pcempres
                         || ' pnpoliza = '
                         || pnpoliza
                         || ' pncertif = '
                         || pncertif
                         || ' pcramo = '
                         || pcramo
                         || ' pcmodali = '
                         || pcmodali
                         || ' pctipseg = '
                         || pctipseg
                         || ' pccolect = '
                         || pccolect
                         || ' pcactivi = '
                         || pcactivi
                         || ' pmoneda = '
                         || pmoneda
                         || 'pcidioma = '
                         || pcidioma,
                         f_axis_literales (lmensaje, pcidioma)
                        );
            RAISE errorproc;
         END IF;

         vhayregul := TRUE;
      END LOOP;

      vpas := 4;

      IF NVL (lmensaje, 0) = 0 AND vhayregul
      THEN
         vpas := 5;
         lmensaje :=
               pk_suplementos.f_corregir_gar_movant (v_pol.sseguro, lnmovimi);
         vpas := 6;

         IF lmensaje <> 0
         THEN
            RAISE errorproc;
         END IF;

         vpas := 7;
         v_nrecibos := '';

         FOR regs IN (SELECT *
                        FROM recibos
                       WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi)
         LOOP
            vpas := 8;
            v_lista.EXTEND;
            v_lista (v_lista.LAST) := ob_lista_id ();
            v_lista (v_lista.LAST).idd := regs.nrecibo;
            v_nrecibos := v_nrecibos || regs.nrecibo || ',';
         -- BUG 0040823 - FAL - 26/2/2016. Se comenta. S¿lo marcar como agrupado si hay m¿s de 1 recibo a agrupar.
         /*
         UPDATE recibos
            SET cestaux = 2
          WHERE nrecibo = regs.nrecibo;
         */
         END LOOP;

         vpas := 9;
         v_nrecibos := RTRIM (v_nrecibos, ',');

         -->>>>>>>>>>>>>>> 11.2.- <<<<<<<<<<<<<<<<<
         IF v_lista IS NOT NULL
         THEN
            vpas := 10;

            -- IF v_lista.COUNT > 0 THEN   -- BUG 0035409 - FAL - 10/04/2015
            IF v_lista.COUNT > 1
            THEN
-- BUG 0038217 - FAL - 30/11/2015 - Para 1 ¿nico recibo no es necesario agrupar
               -- BUG 0040823 - FAL - 26/2/2016. Marcar como agrupado si hay m¿s de 1 recibo a agrupar.
               FOR i IN v_lista.FIRST .. v_lista.LAST
               LOOP
                  UPDATE recibos
                     SET cestaux = 2
                   WHERE nrecibo = v_lista (i).idd;
               END LOOP;

               vpas := 11;
               num_err :=
                  pac_gestion_rec.f_agruparecibo (v_sproduc,
                                                  lfcapro,
                                                  f_sysdate,
                                                  v_cempres,
                                                  v_lista,
                                                  1,
                                                  0,
                                                  0
                                                 );
               -- commitpag = 0 --> No queremos enviar a cobro este recibo!!
               vpas := 12;

               IF num_err <> 0
               THEN
                  vpas := 14;
                  lmensaje := num_err;
                  num_err := 1;
                  ROLLBACK;
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta.f_trata_retroactivos',
                               193,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma,
                               lmensaje
                              );
                  RAISE errorproc;
               -- BUG 0039481 - FAL - 23/12/2015 - s¿lo si agrupa, recupera recibo agrupador para modificarle la fefecto
               ELSE
                  vpas := 16;

                  -->>>>>>>>>>>>>>> 11.3.- <<<<<<<<<<<<<<<<<
                  IF num_err = 0
                  THEN
                     v_sel :=
                           'SELECT nrecunif FROM adm_recunif '
                        || 'WHERE nrecibo IN('
                        || v_nrecibos
                        || ')'
                        || 'GROUP BY nrecunif';

                     OPEN v_cur FOR v_sel;

                     vpas := 17;

                     FETCH v_cur
                      INTO v_nrecunif;

                     CLOSE v_cur;
                  END IF;

                  vpas := 18;

                  SELECT MIN (fefecto)
                    INTO v_fefecto_min
                    FROM recibos
                   WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi;

                  vpas := 19;

                  UPDATE recibos
                     SET fefecto = v_fefecto_min
                   WHERE nrecibo = v_nrecunif;
               -- FI BUG 0039481
               END IF;
            END IF;
         END IF;
      END IF;

      vpas := 20;
      RETURN 0;
   EXCEPTION
      WHEN errorproc
      THEN
         p_tab_error (f_sysdate,
                      f_user,
                      'EMITIR_TRAMOSREGUL',
                      vpas,
                      'lmensaje:' || lmensaje,
                      'Error proc'
                     );
         RETURN lmensaje;
      WHEN OTHERS
      THEN
         p_tab_error (f_sysdate,
                      f_user,
                      'EMITIR_TRAMOSREGUL',
                      vpas,
                      'lmensaje:' || lmensaje,
                      SQLERRM
                     );
         RETURN 1;
   END;

   -- CONF-274-25/11/2016-JLTS- Ini
   PROCEDURE p_borrar_anususpensionseg (psseguro IN NUMBER)
   IS
   BEGIN
      /* si no tiene ninguna borramos las tablas de anususpensionseg*/
      DELETE      anususpensionseg a
            WHERE a.sseguro = psseguro
              AND a.nmovimi = (SELECT MAX (b.nmovimi)
                                 FROM anususpensionseg b
                                WHERE b.sseguro = a.sseguro);
   EXCEPTION
      WHEN OTHERS
      THEN
         p_tab_error (f_sysdate,
                      f_user,
                      'p_borrar_anususpensionseg',
                      'borrado_anususpensionseg',
                      SQLERRM,
                      SQLERRM
                     );
   END p_borrar_anususpensionseg;
-- CONF-274-25/11/2016-JLTS- Fin
BEGIN
   lnordapo := pnordapo;
   pindice := 0;
   pindice_e := 0;
   pcmotret := NULL;                                -- BUG9640:DRA:16/04/2009
   -- Obtenci¿ de par¿metres per instal.laci¿
   --ltarjet_aln := NVL(f_parinstalacion_t('TARJET_ALN'), 'NO');
   lgesdoc := NVL (f_parinstalacion_t ('GESTDOC'), 'NO');
   -- Selecci¿ din¿mica de les p¿lisses a emetre
   /*v_sel := 'SELECT   sseguro, cforpag, NVL(fcarant, fefecto) fefecto, '||
             ' LPAD(nrenova, 4, 0) mmdd, femisio, fcarpro, fcaranu, ctipreb,'||
             ' fvencim, cramo, cmodali, ctipseg, ccolect, nsuplem, '||
             ' DECODE(csituac, 4, 0, 5, 1, NULL) csituac, cagente, ccobban,'||
             ' ctiprea '||
   */
   v_sel :=
         'SELECT * FROM seguros WHERE creteni = 0 '
      || '   AND (csituac = 4 OR csituac = 5) ';

   -- || '   AND f_produsu(cramo, cmodali, ctipseg, ccolect, 2) = 1 ';
   IF pcempres IS NOT NULL
   THEN
      v_sel := v_sel || ' AND cempres = ' || pcempres;
   END IF;

   IF pnpoliza IS NOT NULL
   THEN
      v_sel := v_sel || ' AND npoliza = ' || pnpoliza;
   END IF;

   IF pncertif IS NOT NULL
   THEN
      v_sel := v_sel || ' AND ncertif = ' || pncertif;
   END IF;

   IF pcramo IS NOT NULL
   THEN
      v_sel := v_sel || ' AND cramo   = ' || pcramo;
   END IF;

   IF pcmodali IS NOT NULL
   THEN
      v_sel := v_sel || ' AND cmodali = ' || pcmodali;
   END IF;

   IF pctipseg IS NOT NULL
   THEN
      v_sel := v_sel || ' AND ctipseg = ' || pctipseg;
   END IF;

   IF pccolect IS NOT NULL
   THEN
      v_sel := v_sel || ' AND ccolect = ' || pccolect;
   END IF;

   -- Bug 9164 - 30/03/2009 - svj - Permitir en nueva producci¿n escoger la actividad.
   --IF pcactivi IS NOT NULL THEN
   --   v_sel := v_sel || ' AND cactivi = ' || pcactivi;
   --END IF;
   BEGIN
      lprimera := 1;

      OPEN c_pol FOR v_sel;

      --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA',v_sel); --> BORRAR JGR
      LOOP
         FETCH c_pol
          INTO v_pol;

         EXIT WHEN c_pol%NOTFOUND;
         -- Parproducto = NOMESEXTRA
         -- El producte diu si a la nova producci¿ nom¿s tenim extra
         -- i grava el rebut amb ctiprec = 0 i no ctiprec = 4
         num_err := f_parproductos (v_pol.sproduc, 'NOMESEXTRA', lnomesextra);
         lnomesextra := NVL (lnomesextra, 0);

         -- la primera vegada cridem a procesini per l'empresa de la p¿lissa
         IF lprimera = 1
         THEN
            lprimera := 0;

            IF psproces IS NULL
            THEN
               num_err :=
                  f_procesini (f_user,
                               v_pol.cempres,
                               'EMISION',
                               'Emisi¿n de propuestas',
                               lsproces
                              );
            ELSE
               lsproces := psproces;
            END IF;
         END IF;

         SELECT DECODE (v_pol.csituac, 4, 0, 5, 1, NULL)
           INTO v_pol.csituac
           FROM DUAL;

         --JRH Soluci¿n temporal paa POS por urgencia. Esto se tendr¿a que hacer en el PAC_CALC_COMU pero ahora solo recibe de los PAC_IAX
         --el producto y no el sseguro, con lo que no sabemos si estamos tratanto con una p¿liza temporal<1 a¿o que no renueva.
         --A lo mejor se tendr¿a que hacer un nuevo tipo de duraci¿n para este tipo de durtaci¿n temporal que no renueva.
         IF NVL (f_parproductos_v (v_pol.sproduc, 'TEMPORAL_NO_RENUEVA'), 0) =
                                                                             1
         THEN
            IF     v_pol.cduraci = 3
               AND v_pol.cforpag IS NOT NULL
               AND v_pol.fvencim IS NOT NULL
            THEN
               v_pol.nrenova :=
                     TO_CHAR (v_pol.fvencim, 'MM')
                  || LPAD (TO_CHAR (v_pol.fvencim, 'DD'), 2, '0');

               UPDATE seguros
                  SET nrenova =
                            TO_CHAR (v_pol.fvencim, 'MM')
                         || LPAD (TO_CHAR (v_pol.fvencim, 'DD'), 2, '0')
                WHERE sseguro = v_pol.sseguro;
            -- Ini Bug 31204 --ECP -- 14/05/2014
            ELSE
               IF v_pol.nrenova IS NULL
               THEN
                  v_pol.nrenova :=
                        TO_CHAR (v_pol.fefecto, 'MM')
                     || LPAD (TO_CHAR (v_pol.fefecto, 'DD'), 2, '0');

                  UPDATE seguros
                     SET nrenova =
                               TO_CHAR (v_pol.fefecto, 'MM')
                            || LPAD (TO_CHAR (v_pol.fefecto, 'DD'), 2, '0')
                   WHERE sseguro = v_pol.sseguro;
               END IF;
            END IF;
         ELSE
            IF v_pol.nrenova IS NULL
            THEN
               v_pol.nrenova :=
                     TO_CHAR (v_pol.fefecto, 'MM')
                  || LPAD (TO_CHAR (v_pol.fefecto, 'DD'), 2, '0');

               UPDATE seguros
                  SET nrenova =
                            TO_CHAR (v_pol.fefecto, 'MM')
                         || LPAD (TO_CHAR (v_pol.fefecto, 'DD'), 2, '0')
                WHERE sseguro = v_pol.sseguro;
            END IF;
         END IF;

         lsituacion := v_pol.csituac;
         pindice := pindice + 1;
         --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','01-PINDICE='||pindice||' PINDICE_E='||PINDICE_E); --> BORRAR JGR
         w_ffinal := NVL (v_pol.fcaranu, v_pol.fvencim);

         -- Miramos el movim. de seg. de ese seguro
         --IAXIS-3104 --ECP --28/01/2020
         
        
         
         BEGIN
            SELECT m.nmovimi, s.fefecto, m.cmotmov, m.cmovseg, m.cdomper,
                   m.cregul                           -- BUG 34462 - AFM - RETRO
              INTO lnmovimi, lfefecto, lcmotmov, lcmovseg, lcdomper,
                   v_cregul                         -- BUG 34462 - AFM - RETRO
              FROM seguros s ,movseguro m
             WHERE s.sseguro = v_pol.sseguro
               and m.sseguro = s.sseguro
               AND m.femisio IS NULL
               -- Ini 12244 --ECP-- 21/04/2014
               AND m.fanulac IS NULL
                                  -- Fin 12244 --ECP-- 21/04/2014
            ;
         EXCEPTION
            WHEN TOO_MANY_ROWS
            THEN
               ROLLBACK;
               num_err := 1;
               lmensaje := 103106;                  --M¿s de 1 mov. de seguro
               p_tab_error (f_sysdate,
                            f_user,
                            'p_emitir_propuesta',
                            1,
                               'pcempres = '
                            || pcempres
                            || ' pnpoliza = '
                            || pnpoliza
                            || ' pncertif = '
                            || pncertif
                            || ' pcramo = '
                            || pcramo
                            || ' pcmodali = '
                            || pcmodali
                            || ' pctipseg = '
                            || pctipseg
                            || ' pccolect = '
                            || pccolect
                            || ' pcactivi = '
                            || pcactivi
                            || ' pmoneda = '
                            || pmoneda
                            || 'pcidioma = '
                            || pcidioma,
                            SQLERRM
                           );
            WHEN NO_DATA_FOUND
            THEN
               ROLLBACK;
               num_err := 1;
               lmensaje := 103107;             --No hay movimientos de seguro
               p_tab_error (f_sysdate,
                            f_user,
                            'p_emitir_propuesta',
                            2,
                               'pcempres = '
                            || pcempres
                            || ' pnpoliza = '
                            || pnpoliza
                            || ' pncertif = '
                            || pncertif
                            || ' pcramo = '
                            || pcramo
                            || ' pcmodali = '
                            || pcmodali
                            || ' pctipseg = '
                            || pctipseg
                            || ' pccolect = '
                            || pccolect
                            || ' pcactivi = '
                            || pcactivi
                            || ' pmoneda = '
                            || pmoneda
                            || 'pcidioma = '
                            || pcidioma,
                            SQLERRM
                           );
            WHEN OTHERS
            THEN
               lmensaje := SQLCODE;
               ROLLBACK;
               num_err := 1;                      --Error en la base de datos
               p_tab_error (f_sysdate,
                            f_user,
                            'p_emitir_propuesta',
                            3,
                               'pcempres = '
                            || pcempres
                            || ' pnpoliza = '
                            || pnpoliza
                            || ' pncertif = '
                            || pncertif
                            || ' pcramo = '
                            || pcramo
                            || ' pcmodali = '
                            || pcmodali
                            || ' pctipseg = '
                            || pctipseg
                            || ' pccolect = '
                            || pccolect
                            || ' pcactivi = '
                            || pcactivi
                            || ' pmoneda = '
                            || pmoneda
                            || 'pcidioma = '
                            || pcidioma,
                            SQLERRM
                           );
         END;
-- IAXIS-3104 --ECP --28/01/2020
         -- Miramos si se ha de generar recibo (seg¿n el lmotivo de mov.)
         BEGIN
            --
            -- Inicio IAXIS-5274 13/09/2019
            --
            /*SELECT cgenrec
              INTO lgenrec
              FROM codimotmov
             WHERE cmotmov = lcmotmov;*/
            --
            SELECT DECODE (COUNT (*), 0, 0, 1)
              INTO lgenrec
              FROM detmovseguro s
             WHERE s.sseguro = v_pol.sseguro
               AND s.nmovimi = lnmovimi
               AND EXISTS (SELECT 1
                             FROM codimotmov c
                            WHERE c.cmotmov = s.cmotmov AND c.cgenrec = 1);
         --
         -- Fin IAXIS-5274 13/09/2019
         --
         EXCEPTION
            WHEN OTHERS
            THEN
               num_err := 1;
               lgenrec := 0;
               p_tab_error (f_sysdate,
                            f_user,
                            'p_emitir_propuesta',
                            31,
                               'pcempres = '
                            || pcempres
                            || ' pnpoliza = '
                            || pnpoliza
                            || ' pncertif = '
                            || pncertif
                            || ' pcramo = '
                            || pcramo
                            || ' pcmodali = '
                            || pcmodali
                            || ' pctipseg = '
                            || pctipseg
                            || ' pccolect = '
                            || pccolect
                            || ' pcactivi = '
                            || pcactivi
                            || ' pmoneda = '
                            || pmoneda
                            || 'pcidioma = '
                            || pcidioma,
                            SQLERRM
                           );
         END;

         -- Ini IAXIS-5421 -- ECP -- 15/10/2019
         -- 
         -- Inicio IAXIS-7650 20/11/2019
         --
         -- Se comenta. A fin de que pueda ser obtenido el valor real del cambio de prima en el movimiento (prima devengada) 
         -- se obtendrá desde el parámetro pitotdev. Dicho parámetro se llena a partir de la ejecución de la función f_get_primas 
         -- del objeto ob_iax_riesgos.
         --
         /*BEGIN
            SELECT SUM (NVL (ipridev, 0))
              INTO v_prima
              FROM garanseg
             WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi;
         EXCEPTION
            WHEN NO_DATA_FOUND
            THEN
               v_prima := 0;
         END;*/
         -- 
         -- Fin IAXIS-7650 20/11/2019
         --
         
         p_tab_error (f_sysdate,
                f_user,
                'pac_md_produccion_p_emi',
                1,
                1,
                   'pcempres = '
                            || pcempres
                            || ' pnpoliza = '
                            || pnpoliza
                            || ' pncertif = '
                            || pncertif
                            || ' pcramo = '
                            || pcramo
                            || ' pcmodali = '
                            || pcmodali
                            || ' pctipseg = '
                            || pctipseg
                            || ' pccolect = '
                            || pccolect
                            || ' pcactivi = '
                            || pcactivi
                            || ' pmoneda = '
                            || pmoneda
                            || 'pcidioma = '
                            || pcidioma
                ||'pitotdev--> '
                ||pitotdev);
         
         IF num_err = 0
         THEN
            IF lnmovimi = 1
            THEN
               lctiprec := 0;                                    --Producci¿n
               lctipmov := 00;                                           -- "

               -- BUG 18423 - 26/10/2011 - JMP - LCOL000 - Multimoneda
               IF     NVL (pac_parametros.f_parempresa_n (v_pol.cempres,
                                                          'MULTIMONEDA'
                                                         ),
                           0
                          ) = 1
                  AND v_pol.cmoneda IS NULL
               THEN
                  UPDATE seguros
                     SET cmoneda =
                            pac_parametros.f_parempresa_n (v_pol.cempres,
                                                           'MONEDAEMP'
                                                          )
                   WHERE sseguro = v_pol.sseguro;
               END IF;
            -- FIN BUG 18423 - 26/10/2011 - JMP - LCOL000 - Multimoneda
            ELSIF lnmovimi > 1
            THEN
               lctiprec := 1;                                    --Suplemento
               lctipmov := 01;

               -- Ini IAXIS- 5421 -- ECP -- 15/10/2019
               IF lcmotmov = 298
               THEN                                   -- Suspensi¿ de p¿lissa
                  UPDATE seguros
                     SET csituac = 1,
                         ccartera = NULL
                   WHERE sseguro = v_pol.sseguro;
               END IF;

               IF lcmotmov = 100
               THEN
                  -- Si estamos en esta situaci¿n es que venimos de un traslado de vigencia.
                  lctiprec := 0;
                  lctipmov := 00;                    -- Es como una reemisi¿n
               END IF;
            END IF;

            -- El campo crevfpg de PRODUCTOS nos dice si una p¿liza de ese producto
            -- que tiene forma de pago ¿nica, tiene que pasar por cartera(crevfpg = 1) o no (crevfpg = 0).
            -- Por lo tanto, si crevfpg = 1, tenemos que informar las fechas de cartera.
            BEGIN
               SELECT crevfpg, ndiaspro,
                                        --Se recupera ndiaspro para utilizarlo en el c¿lculo de fcarpro.
                                        cprprod,
                                                -- Indica si un producto es de rentas.
                                                ctipefe, csubpro
                 -- Para saber qu¿ tipo de renovaci¿n (calcular fcaranu)
               INTO   lcrevfpg, lndiaspro,
                                          -- Para el c¿lculo de fcarpro.
                                          lcprprod,
                                                   -- Indica si un producto es de rentas.
                                                   lctipefe, lcsubpro
                 FROM productos
                WHERE cramo = v_pol.cramo
                  AND cmodali = v_pol.cmodali
                  AND ctipseg = v_pol.ctipseg
                  AND ccolect = v_pol.ccolect;
            EXCEPTION
               WHEN OTHERS
               THEN
                  lmensaje := SQLCODE;
                  num_err := 1;
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta',
                               4,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma,
                               SQLERRM
                              );
            END;

            IF num_err = 0
            THEN
                              --Forma de pago no ¿nica o forma de pago ¿nica con renovaci¿n,
                              --Nueva producci¿n
               --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','CFORPAG='||v_pol.cforpag||
               --                                           ' lcrevfpg='||lcrevfpg||
                 --                               ' lcmotmov='||lcmotmov||
                   --                             ' csituac='||v_pol.csituac);   --> BORRAR JGR
               --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','V_POL.CFORPAG ='||V_POL.CFORPAG);
               IF     (   v_pol.cforpag <> 0
                       OR (v_pol.cforpag = 0 AND lcrevfpg = 1)
                      )
                  AND v_pol.csituac = 0
               THEN
                  --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','IF-1 CFORPAG='||v_pol.cforpag||
                   --                                          ' lcrevfpg='||lcrevfpg||
                     --                              ' lcmotmov='||lcmotmov||
                       --                            ' csituac='||v_pol.csituac);   --> BORRAR JGR
                  IF v_pol.cforpag = 0 AND lcrevfpg = 1
                  THEN
                     lcforpag := 1;
                  -- que calcule las fechas como si fuera pago anual
                  ELSE
                     lcforpag := v_pol.cforpag;
                  END IF;

                  --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','LCFORPAG ='||LCFORPAG);
                                    -- Calcul de la data de renovaci¿
                  lmeses := 12 / lcforpag;

                  --P_CONTROL_error(null, 'emision', 'lmeses   ='||lmeses);

                  --lfvencim:= NVL(v_pol.frenova,lfvencim); -- BUG 0023117 - FAL - 26/07/2012
                  -- Bug 23117 - RSC - 31/07/2012 -  LCOL_T010-LCOL - POLIZAS RENOVABLES Y VIGENCIA DIFERENTE A UN A?O
                  IF v_pol.frenova IS NOT NULL
                  THEN
                     dd := TO_CHAR (v_pol.frenova, 'dd');
                     -- SUBSTR(LPAD(v_pol.nrenova, 4, 0), 3, 2);
                     ddmm := TO_CHAR (v_pol.frenova, 'ddmm');
                  -- dd || SUBSTR(LPAD(v_pol.nrenova, 4, 0), 1, 2);
                  ELSE
                     -- Fin bug 23117
                     dd := SUBSTR (LPAD (v_pol.nrenova, 4, 0), 3, 2);
                     ddmm := dd || SUBSTR (LPAD (v_pol.nrenova, 4, 0), 1, 2);
                  -- Bug 23117 - RSC - 31/07/2012 -  LCOL_T010-LCOL - POLIZAS RENOVABLES Y VIGENCIA DIFERENTE A UN A?O
                  END IF;

                  -- Fin bug 23117

                  -- Bug 23117 - RSC - 31/07/2012 -  LCOL_T010-LCOL - POLIZAS RENOVABLES Y VIGENCIA DIFERENTE A UN A?O
                  IF v_pol.frenova IS NOT NULL
                  THEN
                     lfcanua := v_pol.frenova;
                  ELSE
                     -- Fin bug 23117
                     IF    TO_CHAR (v_pol.fefecto, 'DDMM') = ddmm
                        OR LPAD (v_pol.nrenova, 4, 0) IS NULL
                     THEN
                        --lfcanua     := ADD_MONTHS(v_pol.fefecto, 12);
                        lfcanua := f_summeses (v_pol.fefecto, 12, dd);
                     ELSE
                        IF lctipefe = 2
                        THEN                        -- a d¿a 1/mes por exceso
                           fecha_aux := ADD_MONTHS (v_pol.fefecto, 13);
                           lfcanua :=
                              TO_DATE (ddmm || TO_CHAR (fecha_aux, 'YYYY'),
                                       'DDMMYYYY'
                                      );
                        ELSE
                           BEGIN
                              lfcanua :=
                                 TO_DATE (   ddmm
                                          || TO_CHAR (v_pol.fefecto, 'YYYY'),
                                          'DDMMYYYY'
                                         );
                           EXCEPTION
                              WHEN OTHERS
                              THEN
                                 IF ddmm = 2902
                                 THEN
                                    ddmm := 2802;
                                    lfcanua :=
                                       TO_DATE (   ddmm
                                                || TO_CHAR (v_pol.fefecto,
                                                            'YYYY'
                                                           ),
                                                'DDMMYYYY'
                                               );
                                 ELSE
                                    lmensaje := 104510;
                                    --Fecha de renovaci¿n (mmdd) incorrecta
                                    num_err := 1;
                                    p_tab_error (f_sysdate,
                                                 f_user,
                                                 'p_emitir_propuesta',
                                                 5,
                                                    'pcempres = '
                                                 || pcempres
                                                 || ' pnpoliza = '
                                                 || pnpoliza
                                                 || ' pncertif = '
                                                 || pncertif
                                                 || ' pcramo = '
                                                 || pcramo
                                                 || ' pcmodali = '
                                                 || pcmodali
                                                 || ' pctipseg = '
                                                 || pctipseg
                                                 || ' pccolect = '
                                                 || pccolect
                                                 || ' pcactivi = '
                                                 || pcactivi
                                                 || ' pmoneda = '
                                                 || pmoneda
                                                 || 'pcidioma = '
                                                 || pcidioma,
                                                 SQLERRM
                                                );
                                 END IF;
                           END;
                        END IF;

                        IF lfcanua <= v_pol.fefecto
                        THEN
                           --lfcanua     := ADD_MONTHS(lfcanua, 12);
                           lfcanua := f_summeses (lfcanua, 12, dd);
                        END IF;
                     END IF;
                  -- Bug 23117 - RSC - 31/07/2012 -  LCOL_T010-LCOL - POLIZAS RENOVABLES Y VIGENCIA DIFERENTE A UN A?O
                  END IF;

                  -- Fin bug 23117

                  -- Bug 23117 - RSC - 31/07/2012 -  LCOL_T010-LCOL - POLIZAS RENOVABLES Y VIGENCIA DIFERENTE A UN A?O
                  IF v_pol.frenova IS NOT NULL AND lcforpag IN (0, 1)
                  THEN
                     lfcapro := v_pol.frenova;
                  ELSE
                     -- Fin bug 23117

                     -- Se calcula la pr¿x. cartera partiendo de la cartera de renovaci¿n (fcaranu)
                     -- y rest¿ndole periodos de pago
                     -- Calculem la data de propera cartera
                     IF     lctipefe = 2
                        AND TO_CHAR (v_pol.fefecto, 'dd') <> 1
                        AND lcforpag <> 12
                     THEN
                        l_fefecto_1 :=
                              '01/'
                           || TO_CHAR (ADD_MONTHS (v_pol.fefecto, 1),
                                       'mm/yyyy'
                                      );
                     ELSE
                        l_fefecto_1 := v_pol.fefecto;
                     END IF;

                     lfaux := lfcanua;

                     WHILE TRUE
                     LOOP
                        --lfaux        := ADD_MONTHS(lfaux, -lmeses);
                        lfaux := f_summeses (lfaux, -lmeses, dd);

                        IF lfaux <= l_fefecto_1
                        THEN
                           lfcapro := f_summeses (lfaux, lmeses, dd);
                           --lfcapro      := ADD_MONTHS(lfaux, lmeses);
                           EXIT;
                        END IF;
                     END LOOP;
                  END IF;

-----------------------------------
-- Si el d¿a de la fecha de efecto es mayor o igual que
-- ndiaspro, se le a¿ade un periodo m¿s.
-- Nom¿s funcionava per mensuals. Cal mirar del periode que cubreix si
-- supera el dia 15 de l'ultim mes , i que no es passi de la renovaci¿
--
                  IF (lndiaspro IS NOT NULL)
                  THEN
                     IF     TO_NUMBER (TO_CHAR (v_pol.fefecto, 'dd')) >=
                                                                    lndiaspro
                        AND TO_NUMBER (TO_CHAR (lfcapro, 'mm')) =
                               TO_NUMBER (TO_CHAR (ADD_MONTHS (v_pol.fefecto,
                                                               1
                                                              ),
                                                   'mm'
                                                  )
                                         )
                     THEN
                        -- ¿s a dir , que el dia sigui > que el dia 15 de l'ultim m¿s del periode
                        lfcapro := ADD_MONTHS (lfcapro, lmeses);

                        IF lfcapro > lfcanua
                        THEN
                           lfcapro := lfcanua;
                        END IF;
                     END IF;
                  END IF;

-----------------------------------
                  IF v_pol.cforpag = 0 AND lcrevfpg = 1
                  THEN
                     -- Bug 23117 - RSC - 31/07/2012 -  LCOL_T010-LCOL - POLIZAS RENOVABLES Y VIGENCIA DIFERENTE A UN A?O
                     IF v_pol.frenova IS NOT NULL AND lcforpag IN (0, 1)
                     THEN
                        lfvencim := NVL (v_pol.frenova, lfefecto + 1);
                     ELSE
                        -- Fin Bug 23117

                        -- Alberto - JAMR 03/2004 - A¿ado el NVL con lfefecto para la forma de pago ¿nica
                        -- con duraci¿n vitalicia
                        -- y as¿ la fecha de vencimiento es la de efecto mas un d¿a.
                        lfvencim := NVL (v_pol.fvencim, lfefecto + 1);
                     END IF;
                  -- el vencimiento del recibo ser¿ el vencimiento de la p¿liza
                  ELSE
                     lfvencim := lfcapro;
                  END IF;

                  --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','IF-1  antes UPDATE seguros lcmotmov='||lcmotmov);    --> BORRAR JGR
                  BEGIN
                     IF lcmotmov <> 298
                     THEN                       -- No es suspensi¿ de p¿lissa
                        -- pot tenir data d'anulaci¿ si ¿s una regularitzaci¿
                        -- feta despr¿s d'anular la p¿lissa.
                        UPDATE seguros
                           SET csituac = DECODE (fanulac, NULL, 0, 2),
                               femisio = f_sysdate,
                               fcaranu = lfcanua,
                               fcarpro = lfcapro,
                               ccartera = NULL
                         WHERE sseguro = v_pol.sseguro;
                     --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','IF-1  UPDATE seguros WHERE sseguro='||v_pol.sseguro||' SQL%ROWCOUNT='||SQL%ROWCOUNT);    --> BORRAR JGR
                     END IF;
                  EXCEPTION
                     WHEN OTHERS
                     THEN
                        lmensaje := SQLCODE;
                        num_err := 1;
                        p_tab_error (f_sysdate,
                                     f_user,
                                     'p_emitir_propuesta',
                                     6,
                                        'pcempres = '
                                     || pcempres
                                     || ' pnpoliza = '
                                     || pnpoliza
                                     || ' pncertif = '
                                     || pncertif
                                     || ' pcramo = '
                                     || pcramo
                                     || ' pcmodali = '
                                     || pcmodali
                                     || ' pctipseg = '
                                     || pctipseg
                                     || ' pccolect = '
                                     || pccolect
                                     || ' pcactivi = '
                                     || pcactivi
                                     || ' pmoneda = '
                                     || pmoneda
                                     || 'pcidioma = '
                                     || pcidioma,
                                     SQLERRM
                                    );
                  END;
               ELSIF v_pol.cforpag <> 0 AND v_pol.csituac = 1
               THEN
                  --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','IF-2 CFORPAG='||v_pol.cforpag||
                  -->                                           ' lcrevfpg='||lcrevfpg||
                  -->                                 ' lcmotmov='||lcmotmov||
                   --                               ' csituac='||v_pol.csituac);   --> BORRAR JGR
                                    -- Suplement i forma de pagament no ¿nica
                  lfcanua := v_pol.fcaranu;
                  lfcapro := v_pol.fcarpro;
                  lfvencim := lfcapro;

                  BEGIN
                     IF lcmotmov <> 298
                     THEN                       -- No es suspensi¿ de p¿lissa
                        -- pot tenir data d'anulaci¿ si ¿s una regularitzaci¿
                        -- feta despr¿s d'anular la p¿lissa.
                        UPDATE seguros
                           SET csituac = DECODE (fanulac, NULL, 0, 2),
                               femisio = f_sysdate,
                               ccartera = NULL
                         WHERE sseguro = v_pol.sseguro;
                     END IF;
                  EXCEPTION
                     WHEN OTHERS
                     THEN
                        lmensaje := SQLCODE;
                        num_err := 1;
                        p_tab_error (f_sysdate,
                                     f_user,
                                     'p_emitir_propuesta',
                                     7,
                                        'pcempres = '
                                     || pcempres
                                     || ' pnpoliza = '
                                     || pnpoliza
                                     || ' pncertif = '
                                     || pncertif
                                     || ' pcramo = '
                                     || pcramo
                                     || ' pcmodali = '
                                     || pcmodali
                                     || ' pctipseg = '
                                     || pctipseg
                                     || ' pccolect = '
                                     || pccolect
                                     || ' pcactivi = '
                                     || pcactivi
                                     || ' pmoneda = '
                                     || pmoneda
                                     || 'pcidioma = '
                                     || pcidioma,
                                     SQLERRM
                                    );
                  END;
               ELSIF v_pol.cforpag = 0 AND lcrevfpg = 0
               THEN
--                  P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','IF-3 CFORPAG='||v_pol.cforpag||
--                                                             ' lcrevfpg='||lcrevfpg||
--                                                   ' lcmotmov='||lcmotmov||
--                                                   ' csituac='||v_pol.csituac);   --> BORRAR JGR

                  --Forma de pago ¿nica y nueva producci¿n ¿ suplemento

                  -- Bug 23117 - RSC - 31/07/2012 -  LCOL_T010-LCOL - POLIZAS RENOVABLES Y VIGENCIA DIFERENTE A UN A?O
                  IF v_pol.frenova IS NOT NULL
                  THEN
                     lfcanua := v_pol.frenova;
                     lfcapro := v_pol.frenova;
                     lfvencim := NVL (v_pol.frenova, lfefecto + 1);
                  ELSE
                     -- Fin bug 23117
                     lfcanua := v_pol.fcaranu;
                     lfcapro := v_pol.fcarpro;
                     --Alberto - JAMR 03/2004 - A¿ado el NVL con lfefecto para la forma de pago ¿nica
                     -- con duraci¿n vitalicia
                     -- y as¿ la fecha de vencimiento es la de efecto mas un d¿a.
                     lfvencim := NVL (v_pol.fvencim, lfefecto + 1);
                  -- Bug 23117 - RSC - 31/07/2012 -  LCOL_T010-LCOL - POLIZAS RENOVABLES Y VIGENCIA DIFERENTE A UN A?O
                  END IF;

                  -- Fin bug 23117

                  --lfvencim := v_pol.fvencim;
                  BEGIN
                     IF lcmotmov <> 298
                     THEN                       -- No es suspensi¿ de p¿lissa
                        -- pot tenir data d'anulaci¿ si ¿s una regularitzaci¿
                        -- feta despr¿s d'anular la p¿lissa.
                        UPDATE seguros
                           SET csituac = DECODE (fanulac, NULL, 0, 2),
                               femisio = f_sysdate,
                               ccartera = NULL
                         WHERE sseguro = v_pol.sseguro;
                     END IF;
                  EXCEPTION
                     WHEN OTHERS
                     THEN
                        lmensaje := SQLCODE;
                        num_err := 1;
                        p_tab_error (f_sysdate,
                                     f_user,
                                     'p_emitir_propuesta',
                                     8,
                                        'pcempres = '
                                     || pcempres
                                     || ' pnpoliza = '
                                     || pnpoliza
                                     || ' pncertif = '
                                     || pncertif
                                     || ' pcramo = '
                                     || pcramo
                                     || ' pcmodali = '
                                     || pcmodali
                                     || ' pctipseg = '
                                     || pctipseg
                                     || ' pccolect = '
                                     || pccolect
                                     || ' pcactivi = '
                                     || pcactivi
                                     || ' pmoneda = '
                                     || pmoneda
                                     || 'pcidioma = '
                                     || pcidioma,
                                     SQLERRM
                                    );
                  END;
               ELSE                                     -- Si es un suplemento
                  --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','IF-4 CFORPAG='||v_pol.cforpag||
                    --                                         ' lcrevfpg='||lcrevfpg||
                      --                             ' lcmotmov='||lcmotmov||
                        --                           ' csituac='||v_pol.csituac);   --> BORRAR JGR
                  lfcanua := v_pol.fcaranu;
                  lfcapro := v_pol.fcarpro;

                  IF v_pol.cforpag = 0 AND lcrevfpg = 1
                  THEN
                     --Alberto - JAMR 03/2004 - A¿ado el NVL con lfefecto para la forma de pago ¿nica
                     -- con duraci¿n vitalicia
                     -- y as¿ la fecha de vencimiento es la de efecto mas un d¿a.
                     lfvencim :=
                        NVL (v_pol.fvencim,
                             NVL (v_pol.fcaranu, lfefecto + 1));
                  -- el vencimiento del recibo ser¿ el vencimiento de la p¿liza
                  ELSE
                     lfvencim := lfcapro;
                  END IF;

                  BEGIN
                     IF lcmotmov <> 298
                     THEN                       -- No es suspensi¿ de p¿lissa
                        -- pot tenir data d'anulaci¿ si ¿s una regularitzaci¿
                        -- feta despr¿s d'anular la p¿lissa.
                        UPDATE seguros
                           SET csituac = DECODE (fanulac, NULL, 0, 2),
                               femisio = f_sysdate,
                               ccartera = NULL
                         WHERE sseguro = v_pol.sseguro;
                     END IF;
                  EXCEPTION
                     WHEN OTHERS
                     THEN
                        lmensaje := SQLCODE;
                        num_err := 1;
                        p_tab_error (f_sysdate,
                                     f_user,
                                     'p_emitir_propuesta',
                                     9,
                                        'pcempres = '
                                     || pcempres
                                     || ' pnpoliza = '
                                     || pnpoliza
                                     || ' pncertif = '
                                     || pncertif
                                     || ' pcramo = '
                                     || pcramo
                                     || ' pcmodali = '
                                     || pcmodali
                                     || ' pctipseg = '
                                     || pctipseg
                                     || ' pccolect = '
                                     || pccolect
                                     || ' pcactivi = '
                                     || pcactivi
                                     || ' pmoneda = '
                                     || pmoneda
                                     || 'pcidioma = '
                                     || pcidioma,
                                     SQLERRM
                                    );
                  END;
               END IF;
            END IF;
         END IF;

         -- Bug 16095 - APD - 04/11/2010 - Se modifica la fecha de renovacion con el mes
         -- indicado en la pregunta 115.-Mes de renovacion.
         BEGIN
            SELECT crespue
              INTO v_crespue
              FROM pregunpolseg
             WHERE sseguro = v_pol.sseguro
               AND cpregun = 115                          -- Mes de renovacion
               AND nmovimi =
                            (SELECT MAX (nmovimi)
                               FROM pregunpolseg
                              WHERE sseguro = v_pol.sseguro AND cpregun = 115);

            -- Mes de renovacion
            IF v_crespue > TO_NUMBER (TO_CHAR (lfcanua, 'mm'))
            THEN
               UPDATE seguros
                  SET fcaranu =
                         TO_DATE (   TO_CHAR (lfcanua, 'dd')
                                  || LPAD (v_crespue, 2, 0)
                                  || (TO_NUMBER (TO_CHAR (lfcanua, 'yyyy'))
                                      - 1
                                     )
                                 )
                WHERE sseguro = v_pol.sseguro;
            ELSE
               UPDATE seguros
                  SET fcaranu =
                         TO_DATE (   TO_CHAR (lfcanua, 'dd')
                                  || LPAD (v_crespue, 2, 0)
                                  || TO_CHAR (lfcanua, 'yyyy')
                                 )
                WHERE sseguro = v_pol.sseguro;
            END IF;

            UPDATE seguros
               SET nrenova = TO_CHAR (fcaranu, 'mmdd')
             WHERE sseguro = v_pol.sseguro;
         EXCEPTION
            WHEN NO_DATA_FOUND
            THEN
               NULL;
         END;

         -- Fin Bug 16095 - 04/11/2010 - APD

         -- Para evitar problemas. Si frenova est¿ informado. Machacar el NRENOVA.
         IF v_pol.frenova IS NOT NULL
         THEN
            UPDATE seguros
               SET nrenova = TO_CHAR (v_pol.frenova, 'mmdd')
             WHERE sseguro = v_pol.sseguro;
         END IF;

         -- Bug 5467 - 10/02/2009 - RSC - CRE - Desarrollo de sistema de copago
         -- Bug 12178 - 09/12/2009 - RSC - CRE201 - error en emisi¿n en p¿lizas colectivas de salud.
         -- Movemos el grabado del copago antes del reaseguro.
         BEGIN
            SELECT ctipban
              INTO vptipban
              FROM seguros
             WHERE sseguro = v_pol.sseguro;

            FOR regs IN (SELECT sperson, nriesgo, fanulac
                           FROM riesgos
                          WHERE sseguro = v_pol.sseguro)
            LOOP
               vptipo := NULL;
               vpporcen := NULL;
               vpimporte := NULL;

               BEGIN
                  SELECT p.crespue
                    INTO vptipo
                    FROM pregunseg p
                   WHERE p.sseguro = v_pol.sseguro
                     AND p.nriesgo = regs.nriesgo
                     AND p.nmovimi =
                            (SELECT MAX (pn.nmovimi)
                               FROM pregunseg pn
                              WHERE pn.sseguro = v_pol.sseguro
                                AND pn.nriesgo = regs.nriesgo
                                AND pn.cpregun = 534)
                     AND p.cpregun = 534;
               EXCEPTION
                  WHEN NO_DATA_FOUND
                  THEN
                     vptipo := 1;
               END;

               IF vptipo = 1
               THEN                                              -- Porcentaje
                  BEGIN
                     SELECT p.crespue
                       INTO vpporcen
                       FROM pregunseg p
                      WHERE p.sseguro = v_pol.sseguro
                        AND p.nriesgo = regs.nriesgo
                        AND p.nmovimi =
                               (SELECT MAX (pn.nmovimi)
                                  FROM pregunseg pn
                                 WHERE pn.sseguro = v_pol.sseguro
                                   AND pn.nriesgo = regs.nriesgo
                                   AND pn.cpregun = 535)
                        AND p.cpregun = 535;
                  EXCEPTION
                     WHEN NO_DATA_FOUND
                     THEN
                        SELECT p.crespue
                          INTO vpporcen
                          FROM pregunpolseg p
                         WHERE p.sseguro = v_pol.sseguro
                           AND p.nmovimi =
                                  (SELECT MAX (pn.nmovimi)
                                     FROM pregunpolseg pn
                                    WHERE pn.sseguro = v_pol.sseguro
                                      AND pn.cpregun = 535)
                           AND p.cpregun = 535;
                  END;
               ELSIF vptipo = 2
               THEN                                                -- Importes
                  BEGIN
                     SELECT p.crespue
                       INTO vpimporte
                       FROM pregunseg p
                      WHERE p.sseguro = v_pol.sseguro
                        AND p.nriesgo = regs.nriesgo
                        AND p.nmovimi =
                               (SELECT MAX (pn.nmovimi)
                                  FROM pregunseg pn
                                 WHERE pn.sseguro = v_pol.sseguro
                                   AND pn.nriesgo = regs.nriesgo
                                   AND pn.cpregun = 535)
                        AND p.cpregun = 535;
                  EXCEPTION
                     WHEN NO_DATA_FOUND
                     THEN
                        SELECT p.crespue
                          INTO vpimporte
                          FROM pregunpolseg p
                         WHERE p.sseguro = v_pol.sseguro
                           AND p.nmovimi =
                                  (SELECT MAX (pn.nmovimi)
                                     FROM pregunpolseg pn
                                    WHERE pn.sseguro = v_pol.sseguro
                                      AND pn.cpregun = 535)
                           AND p.cpregun = 535;
                  END;
               END IF;

               -- Bug 5467 - 10/02/2009 - RSC - CRE - Desarrollo de sistema de copago
               lmensaje :=
                  pac_prod_comu.f_grabar_copago (v_pol.sseguro,
                                                 lnmovimi,
                                                 regs.nriesgo,
                                                 regs.sperson,
                                                 lfefecto,
                                                 regs.fanulac,
                                                 NULL,
                                                 NULL,
                                                 vptipo,
                                                 vpporcen,
                                                 vpimporte,
                                                 vptipban
                                                );

               IF lmensaje <> 0
               THEN
                  num_err := 1;
                  ROLLBACK;
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta',
                               9,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma,
                               f_axis_literales (lmensaje, pcidioma)
                              );
               END IF;
            END LOOP;
         EXCEPTION
            WHEN NO_DATA_FOUND
            THEN                      -- Si no tiene copago no debe hacer nada
               NULL;
         END;

         -- Fin Bug 12178
         -- Fin Bug 5467

         -- Bug 19715 - RSC - 10/12/2011 - LCOL: Migraci¿n de productos de Vida Individual
         IF num_err = 0
         THEN
            SELECT pac_parametros.f_parproducto_t (v_pol.sproduc,
                                                   'F_PRE_EMISION'
                                                  )
              INTO v_funcion
              FROM DUAL;

            IF v_funcion IS NOT NULL
            THEN
               v_sproces := lsproces;
               v_sseguro := v_pol.sseguro;
               v_fefecto := TO_CHAR (lfefecto, 'dd/mm/yyyy');
               v_nmovimi := lnmovimi;
               ss :=
                     'begin :num_err := '
                  || v_funcion
                  || '(:v_sproces, :v_sseguro, :v_fefecto, :v_nmovimi); end;';

               EXECUTE IMMEDIATE ss
                           USING OUT    num_err,
                                 IN     v_sproces,
                                 IN     v_sseguro,
                                 IN     v_fefecto,
                                 IN     v_nmovimi;

               IF num_err <> 0
               THEN
                  lmensaje := num_err;
                  num_err := 1;
                  ROLLBACK;
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta.f_pre_emision',
                               10,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma,
                               lmensaje
                              );
               END IF;

               SELECT nmovimi           --, fefecto, cmotmov, cmovseg, cdomper
                 INTO lnmovimi      --, lfefecto, lcmotmov, lcmovseg, lcdomper
                 FROM movseguro
                WHERE sseguro = v_pol.sseguro
                  AND femisio IS NULL
                  -- Ini 12244 --ECP-- 21/04/2014
                  AND fanulac IS NULL
                                     -- Fin 12244 --ECP-- 21/04/2014
               ;
            END IF;
         END IF;

         -- Fin Bug 19715

         --Si el motiu no ¿s canvi de beneficiari, fem la reasseguran¿a
         IF     (   lgenrec = 1
                 OR   -- Solo los movimientos que generen recibo se REASEGURAN
                    
                    -- Bug 13832 - RSC - 01/07/2010 - APRS015 - suplemento de aportaciones ¿nicas
                    (    NVL (f_parproductos_v (v_pol.sproduc,
                                                'DETALLE_GARANT'
                                               ),
                              0
                             ) IN (1, 2)
                     AND lcmotmov = 600
                    )
                )
            -- Bug: 23567 - AVT - 04/09/2012 Les aportacions extraordin¿ries mai Reasseguren
            AND lcmotmov NOT IN (500, 270)
         THEN
            -- Fin 13832

            -- Mantis 11845.12/2009.NMM.CRE - Ajustar reasseguran¿a d'estalvi .i.
            IF pac_cesionesrea.producte_reassegurable (v_pol.sproduc) = 1
            THEN
               --******************* FUNCIONES DE REASEGURO **********************
               IF num_err = 0
               THEN
                  -- ( El ctiprea = 2 (No es reassegura) es mira tamb¿ desde la funci¿
                  --  f_buscatrrea , per¿ si ho mirem aqu¿ ens estalviem accessos)
                  IF v_pol.ctiprea <> 2
                  THEN
                     IF v_pol.csituac = 0
                     THEN                                        -- Propuesta
                        lmotivo := 3;     --- V.Fixe 128 (3 = Nova producci¿)
                     ELSE                                        -- Suplemento
                        -- ctiprea = V.Fixe 60
                        -- 0 = Normal
                        -- 1 = Mai facultatiu
                        -- 2 = No es reassegura
                        -- 3 = No calculi facultatiu opcionalment(en aquesta emissio),
                        --      despr¿s es posa a 0 = Normal
                        -- 5 = No s'aturi encara que existeixi el quadre de facultatiu (acceptat)
                        -- AVT 11-12-2009 no s'aturi mai en els suplements
                        /*
                        IF v_pol.ctiprea <> 5
                           AND v_pol.ctiprea <> 1
                           AND v_pol.ctiprea <> 3 THEN
                           -- Suplement amb facultatiu: es t¿ d'aturar...
                           BEGIN   --
                              SELECT sfacult
                                INTO w_sfacult
                                FROM cuafacul
                               WHERE sseguro = v_pol.sseguro
                                 AND ffincuf IS NULL;

                              num_err := 1;
                              lmensaje := 107439;
                              ROLLBACK;
                           EXCEPTION
                              WHEN NO_DATA_FOUND THEN
                                 NULL;
                              WHEN TOO_MANY_ROWS THEN
                                 num_err := 1;
                                 lmensaje := 107439;
                                 ROLLBACK;
                              WHEN OTHERS THEN
                                 lmensaje := SQLCODE;
                                 num_err := 1;
                           END;
                        END IF; */
                        -- AVT 11-12-2009 fi

                        -- lmotivo = V.Fixe 128 ( Tipus de registre a cessionesrea)
                        IF lcmovseg = 6
                        THEN                    -- Moviment de Regularitzaci¿
                           IF lcmotmov IN (601, 602, 603, 604, 606)
                           THEN                   --Regular. Capital Eventual
                              lmotivo := NULL;                --S¿lo prima...
                           ELSIF lcmotmov IN (605, 607)
                           THEN
                              lmotivo := 20;
                           --Dem¿s Regularizaciones.Prima y capital
                           END IF;
                        ELSE                    -- Suplement no regularitzaci¿
                           -- BUG10061:NMM:09/06/2009.inici
                           IF lcmovseg = 2
                           THEN
                              lmotivo := 5;                        -- Cartera
                           ELSE
                              lmotivo := 4;            -- Suplement normal...
                           END IF;
                        -- BUG10061:NMM:09/06/2009.fi.
                        END IF;
                     END IF;

                     IF num_err = 0
                     THEN
                        IF lmotivo IN (3, 4, 5)
                        THEN
                           -- N.Producci¿ ,Suplement, Cartera. S'afegeix el motiu de Cartera.
                           lorigen := NULL;
                           lfinici := NULL;
                           lffin := NULL;
                           ldetces := NULL;
                           -- num_err := f_parproductos(v_pol.sproduc, 'REASEGURO', ldetces); -- BUG: 17672 JGR 23/02/2011
                           ldetces := f_cdetces (v_pol.sseguro);

                           -- BUG: 17672 JGR 23/02/2011 (no pasa nmovimi, devuelve el ¿ltimo)
                           IF lmotivo = 3
                           THEN
                              IF NVL (ldetces, 1) = 2
                              THEN
                                 -- Q. amort.
                                 lorigen := 2;
                                 lfinici := v_pol.fefecto;

                                 -- A nova producci¿ si es calcular¿
                                 -- els propers periodes a q. amortitzaci¿, es fa
                                 -- la cessi¿ segons  cforamor
                                 IF     lfinici = LAST_DAY (lfinici)
                                    AND MOD (TO_NUMBER (TO_CHAR (lfinici,
                                                                 'mm')
                                                       ),
                                             12 / lcforamor
                                            ) = 0
                                 THEN
                                    lffin := lfinici;
                                 ELSE
                                    BEGIN
                                       SELECT cforamor
                                         INTO lcforamor
                                         FROM seguros_assp
                                        WHERE sseguro = v_pol.sseguro;
                                    EXCEPTION
                                       WHEN NO_DATA_FOUND
                                       THEN
                                          lcforamor := v_pol.cforpag;
                                    END;

                                    --IF  v_pol.cforpag = 0 THEN
                                    lmeses := 12 / lcforamor;
                                    dd := '31';
                                    lfaux :=
                                       TO_DATE (   '31/12/'
                                                || TO_CHAR (v_pol.fefecto,
                                                            'yyyy'
                                                           ),
                                                'dd/mm/yyyy'
                                               );

                                    WHILE TRUE
                                    LOOP
                                       lfaux :=
                                               f_summeses (lfaux, -lmeses,
                                                           dd);

                                       IF lfaux <= v_pol.fefecto
                                       THEN
                                          lffin :=
                                               f_summeses (lfaux, lmeses, dd);
                                          EXIT;
                                       END IF;
                                    END LOOP;
                                 --ELSE
                                    --lffin := lfcapro;
                                 --END IF;
                                 END IF;
                              END IF;

                              -- CPM 1/3/06: Controlem les p¿lisses de P.U. doncs reaseguren anualment
                              /*
                              IF v_pol.cforpag = 0 THEN
                                 lfinici := v_pol.fefecto;
                                 lffin := ADD_MONTHS(lfinici, 12);
                              END IF;
                              */
                              -- Bug 25870 - 18-VI-2013 - dlF - AGM900 - Nuevo producto sobreprecio 2013
                              IF v_pol.cforpag = 0
                              THEN
                                 lfinici := v_pol.fefecto;
                                 lffin :=
                                    LEAST (NVL (v_pol.fvencim,
                                                ADD_MONTHS (lfinici, 12)
                                               ),
                                           ADD_MONTHS (lfinici, 12)
                                          );
                              END IF;
                           -- fin Bug 25870 - 18-VI-2013 - dlF -
                           END IF;

                           -- BUG10061:NMM:09/06/2009: Se comenta para que en el proceso f_buscactrrea busque la fecha en el movimiento
                           --lfinici := v_pol.fefecto;   --> JGR 2004-02-23
                           lmensaje :=
                              f_buscactrrea (v_pol.sseguro,
                                             lnmovimi,
                                             lsproces,
                                             lmotivo,
                                             pmoneda,
                                             lorigen,
                                             lfinici,
                                             lffin
                                            );

                           IF lmensaje <> 0 AND lmensaje <> 99
                           THEN
                              num_err := 1;
                              ROLLBACK;
                              p_tab_error (f_sysdate,
                                           f_user,
                                           'p_emitir_propuesta',
                                           91,
                                              'pcempres = '
                                           || pcempres
                                           || ' pnpoliza = '
                                           || pnpoliza
                                           || ' pncertif = '
                                           || pncertif
                                           || ' pcramo = '
                                           || pcramo
                                           || ' pcmodali = '
                                           || pcmodali
                                           || ' pctipseg = '
                                           || pctipseg
                                           || ' pccolect = '
                                           || pccolect
                                           || ' pcactivi = '
                                           || pcactivi
                                           || ' pmoneda = '
                                           || pmoneda
                                           || 'pcidioma = '
                                           || pcidioma,
                                           f_axis_literales (lmensaje,
                                                             pcidioma
                                                            )
                                          );
                           ELSIF lmensaje = 99
                           THEN
                              -- s'atura per facultatiu
                              lmensaje := 0;
                           ELSE
                              lmensaje :=
                                        f_cessio (lsproces, lmotivo, pmoneda);

                              IF lmensaje <> 0 AND lmensaje <> 99
                              THEN
                                 p_control_error ('LRB', 'LMENSAJE',
                                                  lmensaje);
                                 num_err := 1;
                                 ROLLBACK;
                                 p_tab_error (f_sysdate,
                                              f_user,
                                              'p_emitir_propuesta',
                                              92,
                                                 'pcempres = '
                                              || pcempres
                                              || ' pnpoliza = '
                                              || pnpoliza
                                              || ' pncertif = '
                                              || pncertif
                                              || ' pcramo = '
                                              || pcramo
                                              || ' pcmodali = '
                                              || pcmodali
                                              || ' pctipseg = '
                                              || pctipseg
                                              || ' pccolect = '
                                              || pccolect
                                              || ' pcactivi = '
                                              || pcactivi
                                              || ' pmoneda = '
                                              || pmoneda
                                              || 'pcidioma = '
                                              || pcidioma,
                                              f_axis_literales (lmensaje,
                                                                pcidioma
                                                               )
                                             );
                              ELSIF lmensaje = 99
                              THEN
                                 num_err := 1;
                                 lmensaje := 105382;       --No te facultatiu
                                 pcmotret := 10;    -- BUG9640:DRA:30-03-2009
                                 COMMIT;
                                 p_tab_error (f_sysdate,
                                              f_user,
                                              'p_emitir_propuesta',
                                              93,
                                                 'pcempres = '
                                              || pcempres
                                              || ' pnpoliza = '
                                              || pnpoliza
                                              || ' pncertif = '
                                              || pncertif
                                              || ' pcramo = '
                                              || pcramo
                                              || ' pcmodali = '
                                              || pcmodali
                                              || ' pctipseg = '
                                              || pctipseg
                                              || ' pccolect = '
                                              || pccolect
                                              || ' pcactivi = '
                                              || pcactivi
                                              || ' pmoneda = '
                                              || pmoneda
                                              || 'pcidioma = '
                                              || pcidioma,
                                              f_axis_literales (lmensaje,
                                                                pcidioma
                                                               )
                                             );

                                 BEGIN
                                    IF lcmotmov <> 298
                                    THEN        -- No es suspensi¿ de p¿lissa
                                       -- no emet el suplement, queda en proposta
                                       UPDATE seguros
                                          SET csituac =
                                                 DECODE (v_pol.csituac,
                                                         0, 4,
                                                         1, 5,
                                                         NULL
                                                        ),
                                              femisio = v_pol.femisio,
                                              fcaranu = v_pol.fcaranu,
                                              fcarpro = fcarpro,
                                              ccartera = NULL
                                        WHERE sseguro = v_pol.sseguro;
                                    END IF;

                                    COMMIT;
                                 EXCEPTION
                                    WHEN OTHERS
                                    THEN
                                       num_err := 1;
                                       lmensaje := 102361;
                                       p_tab_error (f_sysdate,
                                                    f_user,
                                                    'p_emitir_propuesta',
                                                    10,
                                                       'pcempres = '
                                                    || pcempres
                                                    || ' pnpoliza = '
                                                    || pnpoliza
                                                    || ' pncertif = '
                                                    || pncertif
                                                    || ' pcramo = '
                                                    || pcramo
                                                    || ' pcmodali = '
                                                    || pcmodali
                                                    || ' pctipseg = '
                                                    || pctipseg
                                                    || ' pccolect = '
                                                    || pccolect
                                                    || ' pcactivi = '
                                                    || pcactivi
                                                    || ' pmoneda = '
                                                    || pmoneda
                                                    || 'pcidioma = '
                                                    || pcidioma,
                                                    SQLERRM
                                                   );
                                 END;
                              ELSE
                                 -- Si ¿s emissio d una p¿lissa que es reassegura en
                                 -- el q.amortitzaci¿ :Cal calcular el detall de cessions
                                 -- pel periode de la emissi¿
                                 IF NVL (lorigen, 1) = 2
                                 THEN
                                    num_err :=
                                       pac_cesionesrea.f_cessio_det_per
                                                              (v_pol.sseguro,
                                                               lfinici,
                                                               lffin,
                                                               lsproces
                                                              );
                                 END IF;
                              END IF;
                           END IF;
                        ELSIF lmotivo IS NULL
                        THEN                       --Regular. Capital Eventual
                           lmensaje :=
                               f_masprima (lsproces, v_pol.sseguro, lnmovimi);

                           IF lmensaje <> 0
                           THEN
                              num_err := 1;
                              ROLLBACK;
                              p_tab_error (f_sysdate,
                                           f_user,
                                           'p_emitir_propuesta',
                                           94,
                                              'pcempres = '
                                           || pcempres
                                           || ' pnpoliza = '
                                           || pnpoliza
                                           || ' pncertif = '
                                           || pncertif
                                           || ' pcramo = '
                                           || pcramo
                                           || ' pcmodali = '
                                           || pcmodali
                                           || ' pctipseg = '
                                           || pctipseg
                                           || ' pccolect = '
                                           || pccolect
                                           || ' pcactivi = '
                                           || pcactivi
                                           || ' pmoneda = '
                                           || pmoneda
                                           || 'pcidioma = '
                                           || pcidioma,
                                           f_axis_literales (lmensaje,
                                                             pcidioma
                                                            )
                                          );
                           END IF;
                        ELSIF lmotivo = 20
                        THEN          --Regularizaciones (No Capital Eventual)
                           lmensaje :=
                              f_regula2 (lsproces,
                                         v_pol.sseguro,
                                         lnmovimi,
                                         pmoneda
                                        );

                           IF     lmensaje <> 0
                              AND lmensaje <> 99
                              AND lmensaje <> 199
                           THEN
                              num_err := 1;
                              ROLLBACK;
                              p_tab_error (f_sysdate,
                                           f_user,
                                           'p_emitir_propuesta',
                                           95,
                                              'pcempres = '
                                           || pcempres
                                           || ' pnpoliza = '
                                           || pnpoliza
                                           || ' pncertif = '
                                           || pncertif
                                           || ' pcramo = '
                                           || pcramo
                                           || ' pcmodali = '
                                           || pcmodali
                                           || ' pctipseg = '
                                           || pctipseg
                                           || ' pccolect = '
                                           || pccolect
                                           || ' pcactivi = '
                                           || pcactivi
                                           || ' pmoneda = '
                                           || pmoneda
                                           || 'pcidioma = '
                                           || pcidioma,
                                           f_axis_literales (lmensaje,
                                                             pcidioma
                                                            )
                                          );
                           ELSIF lmensaje = 199
                           THEN                      --El seguro o el producto
                              lmensaje := 0;            --no se reaseguran...
                           ELSIF lmensaje = 99
                           THEN
                              num_err := 1;
                              lmensaje := 105382;
                              p_tab_error (f_sysdate,
                                           f_user,
                                           'p_emitir_propuesta',
                                           96,
                                              'pcempres = '
                                           || pcempres
                                           || ' pnpoliza = '
                                           || pnpoliza
                                           || ' pncertif = '
                                           || pncertif
                                           || ' pcramo = '
                                           || pcramo
                                           || ' pcmodali = '
                                           || pcmodali
                                           || ' pctipseg = '
                                           || pctipseg
                                           || ' pccolect = '
                                           || pccolect
                                           || ' pcactivi = '
                                           || pcactivi
                                           || ' pmoneda = '
                                           || pmoneda
                                           || 'pcidioma = '
                                           || pcidioma,
                                           f_axis_literales (lmensaje,
                                                             pcidioma
                                                            )
                                          );

                              --Esta p¿liza no tiene facultativo

                              --Eliminamos los movimientos negativos generados
                              --por f_regula2...
                              BEGIN
                                 DELETE FROM cesionesrea
                                       WHERE sseguro = v_pol.sseguro
                                         AND nmovimi = lnmovimi
                                         AND cgenera = 8;
                              END;

                              COMMIT;

                              -- s'accepta el que fan les funcions de reasseg.
                              BEGIN
                                 UPDATE seguros
                                    SET csituac =
                                           DECODE (v_pol.csituac,
                                                   0, 4,
                                                   1, 5,
                                                   NULL
                                                  ),
                                        femisio = v_pol.femisio,
                                        fcaranu = v_pol.fcaranu,
                                        fcarpro = fcarpro,
                                        ccartera = NULL
                                  WHERE sseguro = v_pol.sseguro;

                                 COMMIT;
                              EXCEPTION
                                 WHEN OTHERS
                                 THEN
                                    num_err := 1;
                                    lmensaje := 102361;
                                    p_tab_error (f_sysdate,
                                                 f_user,
                                                 'p_emitir_propuesta',
                                                 11,
                                                    'pcempres = '
                                                 || pcempres
                                                 || ' pnpoliza = '
                                                 || pnpoliza
                                                 || ' pncertif = '
                                                 || pncertif
                                                 || ' pcramo = '
                                                 || pcramo
                                                 || ' pcmodali = '
                                                 || pcmodali
                                                 || ' pctipseg = '
                                                 || pctipseg
                                                 || ' pccolect = '
                                                 || pccolect
                                                 || ' pcactivi = '
                                                 || pcactivi
                                                 || ' pmoneda = '
                                                 || pmoneda
                                                 || 'pcidioma = '
                                                 || pcidioma,
                                                 SQLERRM
                                                );
                              END;
                           END IF;
                        END IF;
                     END IF;
                  END IF;
               END IF;
            END IF;
         -- Mantis 11845.12/2009.NMM.CRE - Ajustar reasseguran¿a d'estalvi .f.
         END IF;

         --******************* GENERACI¿N DE RECIBOS ***********************
         -- Miramos si tiene derechos de comision
         --BUG 9658 - JTS - 29/05/2009
         IF num_err = 0
         THEN
            lmensaje :=
               pac_propio.f_graba_com_adq (v_pol.sseguro, lnmovimi, 'R',
                                           NULL);

            IF lmensaje <> 0
            THEN
               -- Bug. 10888  - estandarizaci¿n de los codigos de error a retornar
               num_err := 1;
               ROLLBACK;
               p_tab_error (f_sysdate,
                            f_user,
                            'p_emitir_propuesta',
                            12,
                               'pcempres = '
                            || pcempres
                            || ' pnpoliza = '
                            || pnpoliza
                            || ' pncertif = '
                            || pncertif
                            || ' pcramo = '
                            || pcramo
                            || ' pcmodali = '
                            || pcmodali
                            || ' pctipseg = '
                            || pctipseg
                            || ' pccolect = '
                            || pccolect
                            || ' pcactivi = '
                            || pcactivi
                            || ' pmoneda = '
                            || pmoneda
                            || 'pcidioma = '
                            || pcidioma,
                            f_axis_literales (lmensaje, pcidioma)
                           );
            END IF;
         END IF;

         --Fi BUG 9658 - JTS - 29/05/2009

         -- Miramos si es un producto de ahorro cagrpro=2
         --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','ENTRAMOS A GENERAR RECIBOS');
         IF num_err = 0
         THEN
            IF f_esahorro (NULL, v_pol.sseguro, lmensaje) = 1
            THEN
               IF lmensaje <> 0
               THEN
                  num_err := 1;
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta',
                               96,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma,
                               f_axis_literales (lmensaje, pcidioma)
                              );
               ELSE
                  lahorro := 1;
                  lcmovi := 2;
               END IF;
            ELSE
               lahorro := 0;
            END IF;
         END IF;

         -- Creamos un registro en recibos y en detrecibos   por cada riesgo
         IF num_err = 0
         THEN
            -- Si el periodo de tiempo (desde suplem o creaci¿n a f. de renovaci¿n) es
            -- cero no se genera,  Pero s¿ una regularizac.
            -- Aunque las fechas coincidan (prima neta 0), si se graba recibo
            -- para que se grabe la prima devengada (¿til para ventas)
            IF (lfefecto = lfcanua) AND lcmovseg <> 6
            THEN
               lgenrec := 0;
            END IF;

            -- BUG 21924 - MDS - 22/06/2012 : quitar el c¿digo fuente de abajo
            /*
            -- Miramos si se fuerza el recibo a f¿sico o si se permite la domiciliaci¿n
            IF lcdomper = 1 THEN
               xccobban := v_pol.ccobban;
            ELSE
               xccobban := NULL;
            END IF;
            */

            --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','LGENREC ='||LGENREC);
            IF     lgenrec = 1
               AND lcmotmov NOT IN
                              (500, 270) --JGM: Cristina retoca para traspasos
            THEN
               IF lcmovseg = 6
               THEN                                   --Es una regularizaci¿n
                  BEGIN
                     SELECT SUM (ipritot), MAX (ffinefe)
                       INTO lsumpri, lfvencim
                       FROM garanseg
                      WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi;
                  EXCEPTION
                     WHEN OTHERS
                     THEN
                        ROLLBACK;
                        num_err := 1;
                        lmensaje := 103500;
                        p_tab_error (f_sysdate,
                                     f_user,
                                     'p_emitir_propuesta',
                                     12,
                                        'pcempres = '
                                     || pcempres
                                     || ' pnpoliza = '
                                     || pnpoliza
                                     || ' pncertif = '
                                     || pncertif
                                     || ' pcramo = '
                                     || pcramo
                                     || ' pcmodali = '
                                     || pcmodali
                                     || ' pctipseg = '
                                     || pctipseg
                                     || ' pccolect = '
                                     || pccolect
                                     || ' pcactivi = '
                                     || pcactivi
                                     || ' pmoneda = '
                                     || pmoneda
                                     || 'pcidioma = '
                                     || pcidioma,
                                     SQLERRM
                                    );
                  --Error al leer la tabla GARANSEG
                  END;

                  IF num_err = 0
                  THEN
                     IF lsumpri < 0
                     THEN                                     --Es un extorno
                        lctiprec := 9;
                     ELSE
                        lctiprec := 1;
                     END IF;

                     lctipmov := 6;
                  END IF;
               --
               -- Inicio IAXIS-6524 31/10/2019
               --
               -- Se quita toda la porción de código como parte de la solución al bug IAXIS-7179 13/11/2019
               --
               -- Fin IAXIS-6524 31/10/2019
               --
               END IF;

               --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','LNOMESEXTRA ='||LNOMESEXTRA||' CFORPAG ='||V_POL.CFORPAG||' lctipmov='||lctipmov);
               --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA',' crida a f_recries ordapo = '||lnordapo||' NOMES EXTRA '||LNOMESEXTRA); --> BORRAR JGR
               SELECT COUNT (*)
                 INTO v_contaeco
                 FROM (SELECT icapital, iprianu, ipritar, ipritot, cgarant,
                              nriesgo
-- BUG 31992/0182843 - FAL - 04/09/2014 - QT: 0013402 - Se a¿ade evaluar el riesgo
                       FROM   garanseg
                        WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi
                       MINUS
                       SELECT icapital, iprianu, ipritar, ipritot, cgarant,
                              nriesgo
-- BUG 31992/0182843 - FAL - 04/09/2014 - QT: 0013402 - Se a¿ade evaluar el riesgo
                       FROM   garanseg
                        WHERE sseguro = v_pol.sseguro
                          AND nmovimi =
                                 (SELECT MAX (g2.nmovimi)
                                    FROM garanseg g2
                                   WHERE g2.sseguro = garanseg.sseguro
                                     AND g2.nmovimi < lnmovimi)
                       -- BUG 31992/0182843 - FAL - 04/09/2014 - QT: 0013402 - Se evalua a la inversa por si se quitan riesgos/garant¿as
                       UNION
                       (SELECT icapital, iprianu, ipritar, ipritot, cgarant,
                               nriesgo
                          FROM garanseg
                         WHERE sseguro = v_pol.sseguro
                           AND nmovimi =
                                  (SELECT MAX (g2.nmovimi)
                                     FROM garanseg g2
                                    WHERE g2.sseguro = garanseg.sseguro
                                      AND g2.nmovimi < lnmovimi)
                        MINUS
                        SELECT icapital, iprianu, ipritar, ipritot, cgarant,
                               nriesgo
                          FROM garanseg
                         WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi)
                                                                              -- FI BUG 31992/0182843 - FAL - 04/09/2014 - QT: 0013402
                      );

               -- Bug 11569 - RSC - 23/10/2009 - APR - error al crear poliza con forma de pago ¿nica
               IF    (lahorro = 1 AND lnomesextra = 0 AND v_pol.cforpag <> 0
                     )
                  OR (lctipmov = 1)
                  OR (lahorro <> 1)
               THEN
                  -- Fin Bug 11569

                  --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','ENTRA DONDE NO QUEREMOS');
                                     -- 23/2/2004. YIL. En un suplemento en una p¿liza de ahorro, el recibo se generar¿ con fecha
                                        -- de efecto la pr¿xima cartera ( para que genere prima devengada), aunque la fecha
                                    -- de efecto del suplemento sea otra.
                  -- 13946 AVT 08/04/2010 es canvia la modificaci¿ del 10061 per tal que no canvia la data en els rebuts d'estalvi
                  -- BUG10061:NMM:09/06/2009:ini. Se comenta para que en el proceso f_buscactrrea busque la fecha en el movimiento
                  -- Si tenim un mov. de cartera, generem un rebut de cartera
                  IF lcmovseg = 2
                  THEN
                     lctiprec := 3;
                     lctipmov := 21;
                  END IF;

                  -- BUG10061:NMM:09/06/2009:fi.
                  IF     lahorro = 1
                     AND lctipmov = 1
                     AND NVL (f_parproductos_v (v_pol.sproduc,
                                                'REC_RIESGO_AHORRO'
                                               ),
                              0
                             ) <> 1
                     --Inici BUG 27505 - 12/07/2013 - RCL
                     AND lcmotmov NOT IN (692, 693)
                  THEN
                     --Fi BUG 27505 - 12/07/2013 - RCL
                     lfefecto := lfcapro;
                  END IF;

                  num_err :=
                       f_parproductos (v_pol.sproduc, 'REC_SUP_PM', lrecsuppm);

-- BUG 20163-  12/2011 - JRH  -  0020163: LCOL_T004-Completar parametrizaci¿n de los productos de Vida Individual (2¿ parte)
                  -- Ini Bug 24706 -- ECP -- 30/04/2013
                  IF lrecsuppm IN (1, 2)                             --JRH IMP
                     AND lctipmov = 1
                  THEN      -- el recibo se genera por diferencia de provision
                     lctipmov := 11;
                  ELSIF lrecsuppm = 4 AND lctipmov = 1
                  THEN
                     lctipmov2 := 11;
                  END IF;

                  -- Fin Bug 24706 -- ECP -- 30/04/2013

                  -- Fi BUG 20163-  12/2011 - JRH
                  -- Bug.: 18852 - 08/09/2011 - ICV
                    -- Se mira si es nueva producci¿n o cartera para
                    -- aplicar como modo de comision un 1 o un 2
                  IF f_es_renovacion (v_pol.sseguro) = 0
                  THEN                                           -- es cartera
                     xcmodcom := 2;
                  ELSE                          -- si es 1 es nueva produccion
                     xcmodcom := 1;
                  END IF;

                  IF     lctipmov = 1
                     AND NVL (f_parproductos_v (v_pol.sproduc,
                                                'GENREC_ECOSUPLEM'
                                               ),
                              1
                             ) = 0
                     AND v_contaeco = 0
                  THEN
                     NULL;
                  ELSE
                     --BUG9028-XVM-01102009 inici
                     IF NVL
                           (pac_parametros.f_parinstalacion_n
                                                             ('CALCULO_RECIBO'),
                            1
                           ) = 0
                     THEN
                        IF    (    NVL
                                      (f_parproductos_v
                                                       (v_pol.sproduc,
                                                        'SEPARA_RIESGO_AHORRO'
                                                       ),
                                       0
                                      ) = 1
                               AND pac_seguros.f_tiene_garanahorro
                                                               (NULL,
                                                                v_pol.sseguro,
                                                                lfefecto
                                                               ) = 1
                              )
                           OR NVL (f_parproductos_v (v_pol.sproduc,
                                                     'SEPARA_RIESGO_AHORRO'
                                                    ),
                                   0
                                  ) = 0
                        THEN
                           lmensaje :=
                              pac_adm.f_recries (v_pol.ctipreb,
                                                 v_pol.sseguro,
                                                 v_pol.cagente,
                                                 f_sysdate,
                                                 lfefecto,
                                                 lfvencim,
                                                 lctiprec,
                                                 NULL,
                                                 NULL,
                                                 xccobban,
                                                 NULL,
                                                 lsproces,
                                                 lctipmov,
                                                 'R',
                                                 xcmodcom,
                                                 lfcanua,
                                                 0,
                                                 lcmovi,
                                                 pcempres,
                                                 lnmovimi,
                                                 lsituacion,
                                                 ximporx,
                                                 lnordapo
                                                );
                        END IF;
                     ELSE
                        IF    (    NVL
                                      (f_parproductos_v
                                                       (v_pol.sproduc,
                                                        'SEPARA_RIESGO_AHORRO'
                                                       ),
                                       0
                                      ) = 1
                               AND pac_seguros.f_tiene_garanahorro
                                                               (NULL,
                                                                v_pol.sseguro,
                                                                lfefecto
                                                               ) = 1
                              )
                           OR NVL (f_parproductos_v (v_pol.sproduc,
                                                     'SEPARA_RIESGO_AHORRO'
                                                    ),
                                   0
                                  ) = 0
                        THEN
                           IF v_cregul = 1 AND lctipmov = 1
                           THEN
                              lmensaje := f_genera_tram_regul ('R');
                           ELSE
                           -- Ini IAXIS-6224 -- ECP -- 25/02/2020 -- IAXIS-3264 --28/02/2020. Se ajusta el cambio
                           SELECT max(nriesgo)
                             INTO v_nriesgo
                             FROM riesgos
                            WHERE sseguro = v_pol.sseguro;
                             v_error := pac_preguntas.f_get_pregunseg(v_pol.sseguro, NVL(v_nriesgo, 1), 9800, NVL('POL', 'SEG'), vgastexpsup);
                             IF v_prima <> 0 or (v_prima = 0 and vgastexpsup = 1) THEN
                           -- Fin IAXIS-6224 -- ECP -- 25/02/2020 -- IAXIS-3264 --28/02/2020
                               --
                               -- Inicio IAXIS-7179 13/11/2019
                               --
                               -- Dado que es casi que imposible saber si el recibo a crear será un extorno o no antes de que se ejecuten los 
                               -- cálculos de la función f_detrecibo, por lo pronto, se creará un recibo dummy con la misma información que se
                               -- ha de crear para el recibo real. Dicho recibo dummy no se tendrá en cuenta para efectos contables pues se enviará
                               -- como un tipo 99 (para efectos contables sólo se registran los tipos 0, 1, 9). 
                               --
                               -- Ini IAXIS-3264 -- 14/11/2019
                               --
                               IF NVL(f_parproductos_v(v_pol.sproduc, 'DUMMY_REC'), 0) = 1 
                                 --
                                 -- Inicio IAXIS-7650 20/11/2019
                                 --
                                 AND lcmovseg = 1 /*and lcmotmov not in (239)*/ -- Vamos a reservarlo únicamente para suplementos. Comentamos el movivo 239.
                                 AND v_pol.ctipreb IN (1)  THEN -- Por ahora, solo para el tipo de recibo un solo recibo al tomador
                                 --
                                 -- Fin IAXIS-7650 20/11/2019
                                 --
                                 -- Ini IAXIS-3264 -- 14/11/2019
                                 --
                                 -- Ejecutamos f_recries para crear un recibo de muestra con tipo 99 (no contabilizable) para saber si se deberá contabilizar un 
                                 -- suplemento o un extorno más adelante para el movimiento.
                                 --
                                 lmensaje := f_recries(pctipreb => v_pol.ctipreb, 
                                                       psseguro => v_pol.sseguro,
                                                       pcagente => v_pol.cagente, 
                                                       pfemisio => f_sysdate, 
                                                       pfefecto => lfefecto,
                                                       pfvencimi => lfvencim, 
                                                       pctiprec => 99, 
                                                       pnanuali => NULL, 
                                                       pnfracci => NULL,
                                                       pccobban => xccobban,
                                                       pcestimp => NULL, 
                                                       psproces => lsproces, 
                                                       ptipomovimiento => lctipmov, 
                                                       pmodo => 'R', 
                                                       pcmodcom => xcmodcom,
                                                       pfcaranu => lfcanua, 
                                                       pnimport => 0, 
                                                       pcmovimi => lcmovi, 
                                                       pcempres => NULL, 
                                                       pnmovimi => lnmovimi,
                                                       pcpoliza => lsituacion, 
                                                       pnimport2 => ximporx, 
                                                       pnordapo => lnordapo,   
                                                       pcgarant => NULL, 
                                                       pttabla => NULL, 
                                                       pfuncion => 'CAR', 
                                                       pcdomper => lcdomper);                     
                                 --
                                 IF lmensaje <> 0 THEN 
                                   num_err := 1;
                                   ROLLBACK;
                                   p_tab_error(f_sysdate, f_user, 'p_emitir_propuesta', 999, -- Traza para identificar error durante generación de dummy
                                          'pcempres = ' || pcempres || ' pnpoliza = ' || pnpoliza
                                          || ' pncertif = ' || pncertif || ' pcramo = ' || pcramo
                                          || ' pcmodali = ' || pcmodali || ' pctipseg = ' || pctipseg
                                          || ' pccolect = ' || pccolect || ' pcactivi = ' || pcactivi
                                          || ' pmoneda = ' || pmoneda || 'pcidioma = ' || pcidioma,
                                          f_axis_literales(lmensaje, pcidioma));
                                 ELSE -- Si todo ha ido bien miramos cuál es el tipo del último recibo.
                                   --
                                   v_tlastrec := pac_adm.f_get_last_rec(v_pol.sseguro);    
                                   -- INI -IAXIS-3264 19/01/2020. Se verifica si es suplemento de baja (236) y se cambia el tipo de recibo
                                   --Ini bug IAXIS-11905 -- ECP -- 11/02/2020
                                   
                                   IF lcmotmov = 239 THEN
                                     --Ini bug IAXIS-11905 -- ECP -- 11/02/2020
                                     lctiprec := 9; -- Extorno
                                   ELSE
                                   -- FIN -IAXIS-3264 19/01/2020.
                                   --
                                   -- Aquí sobreescribimos el tipo del recibo.
                                   --
                                   SELECT DECODE(r.ctiprec, 99, 1, r.ctiprec) -- Si quedó 99, quiere decir que no cambió y debe permanecer como suplemento.
                                     INTO lctiprec
                                     FROM recibos r
                                    WHERE r.nrecibo = v_tlastrec.nrecibo;
                                   END IF; -- IAXIS-3264 19/01/2020.
                                   --                               
                                   -- Borramos el recibo dummy
                                   --
                                   num_err := pac_gestion_rec.f_borra_recibo(v_tlastrec.nrecibo,'R');
                                   --
                                   -- Creamos el recibo a contabilizar.
                                   --
                                   -- Inicio IAXIS-7650 20/11/2019
                                   --
                                   -- Para no consumir un nuevo consecutivo de recibos, enviamos el consecutivo usado por el dummy pero con la diferencia
                                   -- que ahora sí será contabilizado. 
                                   --
                                   lmensaje := f_recries(pctipreb => v_pol.ctipreb, 
                                                         psseguro => v_pol.sseguro,
                                                         pcagente => v_pol.cagente, 
                                                         pfemisio => f_sysdate, 
                                                         pfefecto => lfefecto,
                                                         pfvencimi => lfvencim, 
                                                         pctiprec => lctiprec, 
                                                         pnanuali => NULL, 
                                                         pnfracci => NULL,
                                                         pccobban => xccobban,
                                                         pcestimp => NULL, 
                                                         psproces => lsproces, 
                                                         ptipomovimiento => lctipmov, 
                                                         pmodo => 'R', 
                                                         pcmodcom => xcmodcom,
                                                         pfcaranu => lfcanua, 
                                                         pnimport => 0, 
                                                         pcmovimi => lcmovi, 
                                                         pcempres => NULL, 
                                                         pnmovimi => lnmovimi,
                                                         pcpoliza => lsituacion, 
                                                         pnimport2 => ximporx, 
                                                         pnordapo => lnordapo,   
                                                         pcgarant => NULL, 
                                                         pttabla => NULL, 
                                                         pfuncion => 'CAR', 
                                                         pcdomper => lcdomper, 
                                                         pnrecibo => v_tlastrec.nrecibo);
                                   --
                                   -- Fin IAXIS-7650 20/11/2019
                                   --
                                 END IF;
                                 --
                               ELSE
                                 --
                                 -- IAXIS-7179 13/11/2019
                                 --
                                 -- Funciona sin cambios, como hoy lo hace.
                                 --
                                 lmensaje := f_recries(pctipreb => v_pol.ctipreb, 
                                                         psseguro => v_pol.sseguro,
                                                         pcagente => v_pol.cagente, 
                                                         pfemisio => f_sysdate, 
                                                         pfefecto => lfefecto,
                                                         pfvencimi => lfvencim, 
                                                         pctiprec => lctiprec, 
                                                         pnanuali => NULL, 
                                                         pnfracci => NULL,
                                                         pccobban => xccobban,
                                                         pcestimp => NULL, 
                                                         psproces => lsproces, 
                                                         ptipomovimiento => lctipmov, 
                                                         pmodo => 'R', 
                                                         pcmodcom => xcmodcom,
                                                         pfcaranu => lfcanua, 
                                                         pnimport => 0, 
                                                         pcmovimi => lcmovi, 
                                                         pcempres => NULL, 
                                                         pnmovimi => lnmovimi,
                                                         pcpoliza => lsituacion, 
                                                         pnimport2 => ximporx, 
                                                         pnordapo => lnordapo,   
                                                         pcgarant => NULL, 
                                                         pttabla => NULL, 
                                                         pfuncion => 'CAR', 
                                                         pcdomper => lcdomper);
                               --
                               END IF; 
                               --
                               -- Fin IAXIS-7179 13/11/2019
                               -- 
                              END IF;
                           END IF;
                        END IF;
                     END IF;
                  END IF;

                  --BUG9028-XVM-01102009 fi

                  -- Bug 19096 - RSC - 03/08/2011 - LCOL - Parametrizaci¿n b¿sica producto Vida Individual Pagos Permanentes (Afegim 'RRIE')
                  IF lmensaje <> 0
                  THEN
                     num_err := 1;
                     ROLLBACK;
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta',
                                  121,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  f_axis_literales (lmensaje, pcidioma)
                                 );
                  ELSE
                     IF NVL (f_parproductos_v (v_pol.sproduc,
                                               'SEPARA_RIESGO_AHORRO'
                                              ),
                             0
                            ) = 1
                     THEN
                        -- Obtenemos el recibo de ahorro generado
                        -- Bug.: 18852 - 08/09/2011 - ICV
                           -- Se mira si es nueva producci¿n o cartera para
                           -- aplicar como modo de comision un 1 o un 2
                        IF f_es_renovacion (v_pol.sseguro) = 0
                        THEN                                    -- es cartera
                           xcmodcom := 2;
                        ELSE                    -- si es 1 es nueva produccion
                           xcmodcom := 1;
                        END IF;

                        IF     lctipmov = 1
                           AND NVL (f_parproductos_v (v_pol.sproduc,
                                                      'GENREC_ECOSUPLEM'
                                                     ),
                                    1
                                   ) = 0
                           AND v_contaeco = 0
                        THEN
                           NULL;
                        ELSE
                           -- Ini Bug 24706 -- ECP -- 30/04/2013
                           IF lctipmov2 IS NOT NULL
                           THEN
                              IF NVL
                                    (pac_parametros.f_parinstalacion_n
                                                             ('CALCULO_RECIBO'),
                                     1
                                    ) = 0
                              THEN
                                 lmensaje :=
                                    pac_adm.f_recries (v_pol.ctipreb,
                                                       v_pol.sseguro,
                                                       v_pol.cagente,
                                                       f_sysdate,
                                                       lfefecto,
                                                       lfvencim,
                                                       lctiprec,
                                                       NULL,
                                                       NULL,
                                                       xccobban,
                                                       NULL,
                                                       lsproces,
                                                       lctipmov,
                                                       'RRIE',
                                                       xcmodcom,
                                                       lfcanua,
                                                       0,
                                                       lcmovi,
                                                       pcempres,
                                                       lnmovimi,
                                                       lsituacion,
                                                       ximporx,
                                                       lnordapo
                                                      );
                              ELSE
                                 lmensaje :=
                                    f_recries (v_pol.ctipreb,
                                               v_pol.sseguro,
                                               v_pol.cagente,
                                               f_sysdate,
                                               lfefecto,
                                               lfvencim,
                                               lctiprec,
                                               NULL,
                                               NULL,
                                               xccobban,
                                               NULL,
                                               lsproces,
                                               lctipmov,
                                               'RRIE',
                                               xcmodcom,
                                               lfcanua,
                                               0,
                                               lcmovi,
                                               NULL,
                                               lnmovimi,
                                               lsituacion,
                                               ximporx,
                                               lnordapo,
                                               -- BUG 21924 - MDS - 22/06/2012
                                               NULL,
                                               NULL,
                                               'CAR',
                                               lcdomper
                                              );
                              END IF;

                              IF NVL
                                    (pac_parametros.f_parinstalacion_n
                                                             ('CALCULO_RECIBO'),
                                     1
                                    ) = 0
                              THEN
                                 lmensaje :=
                                    pac_adm.f_recries (v_pol.ctipreb,
                                                       v_pol.sseguro,
                                                       v_pol.cagente,
                                                       f_sysdate,
                                                       lfefecto,
                                                       lfvencim,
                                                       lctiprec,
                                                       NULL,
                                                       NULL,
                                                       xccobban,
                                                       NULL,
                                                       lsproces,
                                                       lctipmov2,
                                                       'RRIE',
                                                       xcmodcom,
                                                       lfcanua,
                                                       0,
                                                       lcmovi,
                                                       pcempres,
                                                       lnmovimi,
                                                       lsituacion,
                                                       ximporx,
                                                       lnordapo
                                                      );
                              ELSE
                                 lmensaje :=
                                    f_recries (v_pol.ctipreb,
                                               v_pol.sseguro,
                                               v_pol.cagente,
                                               f_sysdate,
                                               lfefecto,
                                               lfvencim,
                                               lctiprec,
                                               NULL,
                                               NULL,
                                               xccobban,
                                               NULL,
                                               lsproces,
                                               lctipmov2,
                                               'RRIE',
                                               xcmodcom,
                                               lfcanua,
                                               0,
                                               lcmovi,
                                               NULL,
                                               lnmovimi,
                                               lsituacion,
                                               ximporx,
                                               lnordapo,
                                               -- BUG 21924 - MDS - 22/06/2012
                                               NULL,
                                               NULL,
                                               'CAR',
                                               lcdomper
                                              );
                              END IF;
                           -- Fin Bug 24706 -- ECP -- 30/04/2013
                           ELSE
                              IF NVL
                                    (pac_parametros.f_parinstalacion_n
                                                             ('CALCULO_RECIBO'),
                                     1
                                    ) = 0
                              THEN
                                 lmensaje :=
                                    pac_adm.f_recries (v_pol.ctipreb,
                                                       v_pol.sseguro,
                                                       v_pol.cagente,
                                                       f_sysdate,
                                                       lfefecto,
                                                       lfvencim,
                                                       lctiprec,
                                                       NULL,
                                                       NULL,
                                                       xccobban,
                                                       NULL,
                                                       lsproces,
                                                       lctipmov,
                                                       'RRIE',
                                                       xcmodcom,
                                                       lfcanua,
                                                       0,
                                                       lcmovi,
                                                       pcempres,
                                                       lnmovimi,
                                                       lsituacion,
                                                       ximporx,
                                                       lnordapo
                                                      );
                              ELSE
                                 -- BUG 34462 - AFM ini
                                 --
                                 -- Si es un suplemento retroactivo, tenemos los tramos de retroactividad en la tabla tramosregul
                                 -- generaremos un recibo por cada uno de ellos.
                                 --
                                 IF v_cregul = 1 AND lctipmov = 1
                                 THEN
                                    lmensaje := f_genera_tram_regul ('RRIE');
                                 ELSE
                                    lmensaje :=
                                       f_recries (v_pol.ctipreb,
                                                  v_pol.sseguro,
                                                  v_pol.cagente,
                                                  f_sysdate,
                                                  lfefecto,
                                                  lfvencim,
                                                  lctiprec,
                                                  NULL,
                                                  NULL,
                                                  xccobban,
                                                  NULL,
                                                  lsproces,
                                                  lctipmov,
                                                  'RRIE',
                                                  xcmodcom,
                                                  lfcanua,
                                                  0,
                                                  lcmovi,
                                                  NULL,
                                                  lnmovimi,
                                                  lsituacion,
                                                  ximporx,
                                                  lnordapo,
                                                  -- BUG 21924 - MDS - 22/06/2012
                                                  NULL,
                                                  NULL,
                                                  'CAR',
                                                  lcdomper
                                                 );
                                 END IF;
                              -- BUG 34462 - AFM fin
                              END IF;
                           END IF;

                           IF lmensaje <> 0
                           THEN
                              num_err := 1;
                              ROLLBACK;
                              p_tab_error (f_sysdate,
                                           f_user,
                                           'p_emitir_propuesta',
                                           121,
                                              'pcempres = '
                                           || pcempres
                                           || ' pnpoliza = '
                                           || pnpoliza
                                           || ' pncertif = '
                                           || pncertif
                                           || ' pcramo = '
                                           || pcramo
                                           || ' pcmodali = '
                                           || pcmodali
                                           || ' pctipseg = '
                                           || pctipseg
                                           || ' pccolect = '
                                           || pccolect
                                           || ' pcactivi = '
                                           || pcactivi
                                           || ' pmoneda = '
                                           || pmoneda
                                           || 'pcidioma = '
                                           || pcidioma,
                                           f_axis_literales (lmensaje,
                                                             pcidioma
                                                            )
                                          );
                           END IF;
                        END IF;
                     END IF;
                  -- Ini Bug 24706 -- ECP -- 30/04/2013
                  END IF;
               -- Fin Bug 19096
               ELSE
                  lmensaje := 0;
               END IF;

               IF lmensaje <> 0
               THEN
                  num_err := 1;
                  ROLLBACK;
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta',
                               121,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma,
                               f_axis_literales (lmensaje, pcidioma)
                              );
               ELSE
                  --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','SEGUIMOS');
                  IF lahorro = 1 AND lctipmov = 0
                  THEN
                     --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','ENTRA ES OK');
                                          --nueva produccion
                     BEGIN
                        IF f_parproductos_v (v_pol.sproduc,
                                             'RECIBO_DE_IPRIANU'
                                            ) = 1
                        THEN
                           -- Bug 9685 - APD - 04/05/2009 - en lugar de coger la actividad de la tabla seguros,
                           -- llamar a la funci¿n pac_seguros.ff_get_actividad
                           SELECT iprianu, cgarant
                             INTO lcapital, lcgarant
                             FROM garanseg
                            WHERE sseguro = v_pol.sseguro
                              -- AND cgarant = 282
                              AND f_pargaranpro_v
                                     (v_pol.cramo,
                                      v_pol.cmodali,
                                      v_pol.ctipseg,
                                      v_pol.ccolect,
                                      pac_seguros.ff_get_actividad
                                                               (v_pol.sseguro,
                                                                nriesgo
                                                               ),
                                      cgarant,
                                      'TIPO'
                                     ) = 4
                              AND ffinefe IS NULL;
                        -- Bug 9685 - APD - 04/05/2009 - Fin
                        ELSE
                           -- Bug 9685 - APD - 04/05/2009 - en lugar de coger la actividad de la tabla seguros,
                           -- llamar a la funci¿n pac_seguros.ff_get_actividad
                           SELECT icapital, cgarant
                             INTO lcapital, lcgarant
                             FROM garanseg
                            WHERE sseguro = v_pol.sseguro
                              -- AND cgarant = 282
                              AND f_pargaranpro_v
                                     (v_pol.cramo,
                                      v_pol.cmodali,
                                      v_pol.ctipseg,
                                      v_pol.ccolect,
                                      pac_seguros.ff_get_actividad
                                                               (v_pol.sseguro,
                                                                nriesgo
                                                               ),
                                      cgarant,
                                      'TIPO'
                                     ) = 4
                              AND ffinefe IS NULL;
                        -- Bug 9685 - APD - 04/05/2009 - Fin
                        END IF;

                        lno282 := 1;
                     --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','TIENE GAR EXTRA lcgarant ='||lcgarant||'lcapital ='||lcapital);
                     EXCEPTION
                        WHEN NO_DATA_FOUND
                        THEN
                           --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','NO TIENE GAR EXTRA OK');
                           lno282 := 0;
                        WHEN OTHERS
                        THEN
                           ROLLBACK;
                           num_err := 1;
                           lmensaje := 103500;
                           p_tab_error (f_sysdate,
                                        f_user,
                                        'p_emitir_propuesta',
                                        13,
                                           'pcempres = '
                                        || pcempres
                                        || ' pnpoliza = '
                                        || pnpoliza
                                        || ' pncertif = '
                                        || pncertif
                                        || ' pcramo = '
                                        || pcramo
                                        || ' pcmodali = '
                                        || pcmodali
                                        || ' pctipseg = '
                                        || pctipseg
                                        || ' pccolect = '
                                        || pccolect
                                        || ' pcactivi = '
                                        || pcactivi
                                        || ' pmoneda = '
                                        || pmoneda
                                        || 'pcidioma = '
                                        || pcidioma,
                                        SQLERRM
                                       );
                     --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','FROM garanseg !=0 lmensaje='||lmensaje||' NUM_ERR='||NUM_ERR); --> BORRAR JGR
                     END;

                     --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','LN282 ='||LNO282);
                     IF lno282 = 1
                     THEN                   --Si tiene la garant¿a cgarant=282
                        --Prima extraordinaria
                        lcmovi := 1;
                        lnum_recibo := NULL;

                        --IF lnmovimi <> 0 THEN
                        IF lnmovimi <> 1
                        THEN
                           lnmovimi := NULL;

                           IF f_movseguro (v_pol.sseguro,
                                           NULL,
                                           500,
                                           1,
                                           lfefecto,
                                           NULL,
                                           v_pol.nsuplem + 1,
                                           1,
                                           NULL,
                                           lnmovimi
                                          ) = 0
                           THEN
                              UPDATE seguros
                                 SET nsuplem = v_pol.nsuplem + 1,
                                     ccartera = NULL
                               WHERE sseguro = v_pol.sseguro;
                           ELSE
                              ROLLBACK;
                              num_err := 1;
                              lmensaje := 104368;
                              --Error en la funci¿n F_MOVSEGURO
                              p_tab_error (f_sysdate,
                                           f_user,
                                           'p_emitir_propuesta',
                                           131,
                                              'pcempres = '
                                           || pcempres
                                           || ' pnpoliza = '
                                           || pnpoliza
                                           || ' pncertif = '
                                           || pncertif
                                           || ' pcramo = '
                                           || pcramo
                                           || ' pcmodali = '
                                           || pcmodali
                                           || ' pctipseg = '
                                           || pctipseg
                                           || ' pccolect = '
                                           || pccolect
                                           || ' pcactivi = '
                                           || pcactivi
                                           || ' pmoneda = '
                                           || pmoneda
                                           || 'pcidioma = '
                                           || pcidioma,
                                           f_axis_literales (lmensaje,
                                                             pcidioma
                                                            )
                                          );
                           --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','F_Movseguro() !=0 lmensaje='||lmensaje||' NUM_ERR='||NUM_ERR); --> BORRAR JGR
                           END IF;
                        END IF;
                     ELSE
                        IF f_parproductos_v (v_pol.sproduc,
                                             'RECIBO_DE_IPRIANU'
                                            ) = 1
                        THEN
                           -- Bug 9685 - APD - 04/05/2009 - en lugar de coger la actividad de la tabla seguros,
                           -- llamar a la funci¿n pac_seguros.ff_get_actividad
                           SELECT SUM (iprianu), MAX (cgarant)
                             INTO lcapital, lcgarant
                             FROM garanseg
                            WHERE sseguro = v_pol.sseguro
                              -- AND cgarant = 282
                              AND f_pargaranpro_v
                                     (v_pol.cramo,
                                      v_pol.cmodali,
                                      v_pol.ctipseg,
                                      v_pol.ccolect,
                                      pac_seguros.ff_get_actividad
                                                               (v_pol.sseguro,
                                                                nriesgo
                                                               ),
                                      cgarant,
                                      'TIPO'
                                     ) = 3
                              AND ffinefe IS NULL;
                        -- Bug 9685 - APD - 04/05/2009 - Fin
                        ELSE
                           -- Bug 9685 - APD - 04/05/2009 - en lugar de coger la actividad de la tabla seguros,
                           -- llamar a la funci¿n pac_seguros.ff_get_actividad
                           SELECT SUM (icapital), MAX (cgarant)
                             INTO lcapital, lcgarant
                             FROM garanseg
                            WHERE sseguro = v_pol.sseguro
                              -- AND cgarant = 282
                              AND f_pargaranpro_v
                                     (v_pol.cramo,
                                      v_pol.cmodali,
                                      v_pol.ctipseg,
                                      v_pol.ccolect,
                                      pac_seguros.ff_get_actividad
                                                               (v_pol.sseguro,
                                                                nriesgo
                                                               ),
                                      cgarant,
                                      'TIPO'
                                     ) = 3
                              AND ffinefe IS NULL;
                        -- Bug 9685 - APD - 04/05/2009 - Fin
                        END IF;

                        lno48 := 1;
                     END IF;

                     -- El tipo de recibo ser¿ de aportaci¿n extraordinaria
                     IF lnomesextra = 0 AND v_pol.cforpag <> 0
                     THEN
                        lctiprec := 4;
                     ELSE
                        BEGIN
                           SELECT 1
                             INTO xtraspas
                             FROM trasplainout
                            WHERE sseguro = v_pol.sseguro AND cestado = 4;

                           lctiprec := 10;                         -- Traspaso
                        EXCEPTION
                           WHEN OTHERS
                           THEN
                              xtraspas := 0;
                              lctiprec := 0;
                        END;
                     END IF;

                     --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','F_Recries(02) lno282='||lno282||' y lcgarnat ='||lcgarant||'importe ='||lcapital); --> BORRAR JGR
                     IF lno282 = 1
                     THEN
                        -- yil. 10/11/2008. No se generar¿ recibo si el importe es 0 y es un producto que admite
                        -- traspasos de entrada
                        IF lcapital <> 0
                        THEN                -- Bug 25001 -- ECP -- 06/12/2012
                           /*IF NOT(lcapital = 0
                                  AND NVL(f_parproductos_v(v_pol.sproduc, 'TDC234_IN'), 0) = 1) THEN*/ -- Bug 25001 -- ECP -- 06/12/2012
                              --BUG9028-XVM-01102009 inici
                              -- Bug.: 18852 - 08/09/2011 - ICV
                              -- Se mira si es nueva producci¿n o cartera para
                              -- aplicar como modo de comision un 1 o un 2
                           IF f_es_renovacion (v_pol.sseguro) = 0
                           THEN                                 -- es cartera
                              xcmodcom := 2;
                           ELSE                 -- si es 1 es nueva produccion
                              xcmodcom := 1;
                           END IF;

                           IF NVL
                                 (pac_parametros.f_parinstalacion_n
                                                             ('CALCULO_RECIBO'),
                                  1
                                 ) = 0
                           THEN
                              -- Bug 14775 - RSC - 10/08/2010 - AGA003 - Error en dades rebut plantilla Condicionat Particular AGA012
                              lmensaje :=
                                 pac_adm.f_recries (v_pol.ctipreb,
                                                    v_pol.sseguro,
                                                    v_pol.cagente,
                                                    f_sysdate,
                                                    lfefecto,
                                                    lfefecto + 1,
                                                    lctiprec,
                                                    NULL,
                                                    NULL,
                                                    xccobban,
                                                    NULL,
                                                    lsproces,
                                                    lctipmov,
                                                    'ANP',
                                                    xcmodcom,
                                                    lfcanua,
                                                    lcapital,
                                                    lcmovi,
                                                    pcempres,
                                                    lnmovimi,
                                                    lsituacion,
                                                    ximporx,
                                                    lnordapo,
                                                    lcgarant
                                                   );
                           ELSE
                              lmensaje :=
                                 f_recries
                                    (v_pol.ctipreb,
                                     v_pol.sseguro,
                                     v_pol.cagente,
                                     f_sysdate,
                                     lfefecto,
                                     lfefecto + 1,
                                     lctiprec,
                                     NULL,
                                     NULL,
                                     xccobban,
                                     NULL,
                                     lsproces,
                                     lctipmov,
                                     'ANP',
                                     xcmodcom,
                                     lfcanua,
                                     lcapital,
                                     lcmovi,
                                     NULL,
                                     lnmovimi,
                                     lsituacion,
                                     ximporx,
                                     lnordapo,
                                     lcgarant, -- BUG 21924 - MDS - 22/06/2012
                                     NULL,
                                     'CAR',
                                     lcdomper
                                    );
                           END IF;
                        --BUG9028-XVM-01102009 fi
                        END IF;
                     ELSIF     lno282 = 0
                           AND (   lnomesextra = 1
                                OR (lnomesextra = 0 AND v_pol.cforpag = 0)
                               )
                     THEN
                        --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','ENTRA A HACER EL RECIBO CON LCAPITAL ='||LCAPITAL);
                                                -- yil. 10/11/2008. No se generar¿ recibo si el importe es 0 y es un producto que admite
                                                -- traspasos de entrada
                        IF lcapital <> 0
                        THEN                -- Bug 25001 -- ECP -- 06/12/2012
                           /*IF NOT(lcapital = 0
                                  AND NVL(f_parproductos_v(v_pol.sproduc, 'TDC234_IN'), 0) = 1) THEN*/ -- Bug 25001 -- ECP -- 06/12/2012
                              --BUG9028-XVM-01102009 inici
                              -- Bug.: 18852 - 08/09/2011 - ICV
                              -- Se mira si es nueva producci¿n o cartera para
                              -- aplicar como modo de comision un 1 o un 2
                           IF f_es_renovacion (v_pol.sseguro) = 0
                           THEN                                 -- es cartera
                              xcmodcom := 2;
                           ELSE                 -- si es 1 es nueva produccion
                              xcmodcom := 1;
                           END IF;

                           IF NVL
                                 (pac_parametros.f_parinstalacion_n
                                                             ('CALCULO_RECIBO'),
                                  1
                                 ) = 0
                           THEN
                              -- Bug 14775 - RSC - 10/08/2010 - AGA003 - Error en dades rebut plantilla Condicionat Particular AGA012
                              lmensaje :=
                                 pac_adm.f_recries (v_pol.ctipreb,
                                                    v_pol.sseguro,
                                                    v_pol.cagente,
                                                    f_sysdate,
                                                    lfefecto,
                                                    lfvencim,
                                                    lctiprec,
                                                    NULL,
                                                    NULL,
                                                    xccobban,
                                                    NULL,
                                                    lsproces,
                                                    lctipmov,
                                                    'ANP',
                                                    xcmodcom,
                                                    lfcanua,
                                                    lcapital,
                                                    lcmovi,
                                                    pcempres,
                                                    lnmovimi,
                                                    lsituacion,
                                                    ximporx,
                                                    lnordapo,
                                                    lcgarant
                                                   );
                           ELSE
                              lmensaje :=
                                 f_recries
                                    (v_pol.ctipreb,
                                     v_pol.sseguro,
                                     v_pol.cagente,
                                     f_sysdate,
                                     lfefecto,
                                     lfvencim,
                                     lctiprec,
                                     NULL,
                                     NULL,
                                     xccobban,
                                     NULL,
                                     lsproces,
                                     lctipmov,
                                     'ANP',
                                     xcmodcom,
                                     lfcanua,
                                     lcapital,
                                     lcmovi,
                                     NULL,
                                     lnmovimi,
                                     lsituacion,
                                     ximporx,
                                     lnordapo,
                                     lcgarant, -- BUG 21924 - MDS - 22/06/2012
                                     NULL,
                                     'CAR',
                                     lcdomper
                                    );
                           END IF;
                        --BUG9028-XVM-01102009 fi
                        END IF;
                     END IF;

                     --P_CONTROL_error ('P_EMITIR_PROPUESTA','REA','LMENSAJE ='||LMENSAJE);
                     IF lmensaje <> 0
                     THEN
                        num_err := 1;
                        --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','F_Recries(02) lmensaje='||lmensaje||' NUM_ERR='||NUM_ERR); --> BORRAR JGR
                        ROLLBACK;
                        p_tab_error (f_sysdate,
                                     f_user,
                                     'p_emitir_propuesta',
                                     132,
                                        'pcempres = '
                                     || pcempres
                                     || ' pnpoliza = '
                                     || pnpoliza
                                     || ' pncertif = '
                                     || pncertif
                                     || ' pcramo = '
                                     || pcramo
                                     || ' pcmodali = '
                                     || pcmodali
                                     || ' pctipseg = '
                                     || pctipseg
                                     || ' pccolect = '
                                     || pccolect
                                     || ' pcactivi = '
                                     || pcactivi
                                     || ' pmoneda = '
                                     || pmoneda
                                     || 'pcidioma = '
                                     || pcidioma,
                                     f_axis_literales (lmensaje, pcidioma)
                                    );
                     END IF;
                    -- END IF;
                  --END IF;
                  -- 
                  -- Inicio IAXIS-7650 20/11/2019
                  -- 
                  -- Se comenta. Lo siguiente está generando doble recibo en bajas de amparo
                  --
                  /*ELSE
                     p_control_error ('p_emitir_propuesta',
                                      'REC',
                                         'f_recrieelse s -lctipmov->'
                                      || lctipmov
                                      || 'lahorro '
                                      || lahorro
                                      || 'v_pol.ctipreb-->'
                                      || v_pol.ctipreb
                                      || ', v_pol.sseguro, '
                                      || v_pol.sseguro
                                     );                       --> BORRAR JGR--
                     p_control_error ('p_emitir_propuesta',
                                      'REC',
                                         '.f_recries -->'
                                      || 1
                                      || 'v_pol.ctipreb-->'
                                      || v_pol.ctipreb
                                      || ', v_pol.sseguro, '
                                      || v_pol.sseguro
                                     );                       --> BORRAR JGR--

                     IF lcmotmov = 239
                     THEN
                        p_control_error ('p_emitir_propuesta',
                                         'REC',
                                            'f_recrieelse s -lctipmov->'
                                         || lctipmov
                                         || 'lahorro '
                                         || lahorro
                                         || 'v_pol.ctipreb-->'
                                         || v_pol.ctipreb
                                         || ', v_pol.sseguro, '
                                         || v_pol.sseguro
                                        );                    --> BORRAR JGR--
                        p_control_error ('p_emitir_propuesta',
                                         'REC',
                                            '.f_recries -->'
                                         || '1'
                                         || 'v_pol.ctipreb-->'
                                         || v_pol.ctipreb
                                         || ', v_pol.sseguro, '
                                         || v_pol.sseguro
                                        );                    --> BORRAR JGR--
                        lmensaje :=
                           f_recries (v_pol.ctipreb,
                                      v_pol.sseguro,
                                      v_pol.cagente,
                                      f_sysdate,
                                      lfefecto,
                                      lfvencim,
                                      lctiprec,
                                      NULL,
                                      NULL,
                                      xccobban,
                                      NULL,
                                      lsproces,
                                      lctipmov,
                                      'R',
                                      xcmodcom,
                                      lfcanua,
                                      0,
                                      lcmovi,
                                      NULL,
                                      lnmovimi,
                                      lsituacion,
                                      ximporx,
                                      lnordapo,
                                               -- BUG 21924 - MDS - 22/06/2012
                                      NULL,
                                      NULL,
                                      'CAR',
                                      lcdomper
                                     );
                  END IF;*/
                  -- 
                  -- Fin IAXIS-7650 20/11/2019
                  --
                  END IF;
               END IF;
            ELSIF lcmotmov IN (500, 270) --JGM: Cristina retoca para traspasos
            THEN
               --Aportaci¿n extraordinaria
               BEGIN
                  IF f_parproductos_v (v_pol.sproduc, 'RECIBO_DE_IPRIANU') =
                                                                            1
                  THEN
                     -- Bug 9685 - APD - 04/05/2009 - en lugar de coger la actividad de la tabla seguros,
                     -- llamar a la funci¿n pac_seguros.ff_get_actividad
                     SELECT iprianu, cgarant
                       INTO lcapital, lcgarant
                       FROM garanseg
                      WHERE sseguro = v_pol.sseguro
                        --AND cgarant = 282
                        AND f_pargaranpro_v
                                (v_pol.cramo,
                                 v_pol.cmodali,
                                 v_pol.ctipseg,
                                 v_pol.ccolect,
                                 pac_seguros.ff_get_actividad (v_pol.sseguro,
                                                               nriesgo
                                                              ),
                                 cgarant,
                                 'TIPO'
                                ) = 4
                        AND ffinefe IS NULL;
                  -- Bug 9685 - APD - 04/05/2009 - Fin
                  ELSE
                     -- Bug 9685 - APD - 04/05/2009 - en lugar de coger la actividad de la tabla seguros,
                     -- llamar a la funci¿n pac_seguros.ff_get_actividad
                     SELECT icapital, cgarant
                       INTO lcapital, lcgarant
                       FROM garanseg
                      WHERE sseguro = v_pol.sseguro
                        --AND cgarant = 282
                        AND f_pargaranpro_v
                                (v_pol.cramo,
                                 v_pol.cmodali,
                                 v_pol.ctipseg,
                                 v_pol.ccolect,
                                 pac_seguros.ff_get_actividad (v_pol.sseguro,
                                                               nriesgo
                                                              ),
                                 cgarant,
                                 'TIPO'
                                ) = 4
                        AND ffinefe IS NULL;
                  -- Bug 9685 - APD - 04/05/2009 - Fin
                  END IF;

                  lno282 := 1;
               EXCEPTION
                  WHEN NO_DATA_FOUND
                  THEN
                     lno282 := 0;
                  WHEN OTHERS
                  THEN
                     --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','SELECT garanseg SQLERRM='||SQLERRM||' NUM_ERR='||1); --> BORRAR JGR
                     ROLLBACK;
                     num_err := 1;
                     lmensaje := 103500;
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta',
                                  14,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  SQLERRM
                                 );
               END;

               --P_CONTROL_error ('P_EMITIR_PROPUESTA','PPA','lno282 ='||lno282||' lcapital ='||lcapital);
               IF lno282 = 1
               THEN
                  --Si tiene Prima extraordinaria
                                  -- 30/12/05 CPM: Controlamos los traspasos --JGM: Cristina retoca para traspasos
                  IF lcmotmov = 270
                  THEN
                     lctiprec := 10;
                  ELSE
                     -- 4/11/99 YIL. El tipo de recibo ser¿ 4, de aportaci¿n extraordinaria
                     lctiprec := 4;
                  END IF;

                  -- Si estem emeten una Extra i estem en una p¿lissa amb aportants
                  -- cal llegir de movaporpen qui ¿s l'aportant del moviment al que s'ha
                  -- d'assignar el rebut
                  IF v_pol.ctipreb = 4 AND lnordapo IS NULL
                  THEN
                     BEGIN
                        SELECT norden
                          INTO lnordapo
                          FROM movaporpen
                         WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi;
                     EXCEPTION
                        WHEN NO_DATA_FOUND
                        THEN
                           lnordapo := NULL;
                        WHEN OTHERS
                        THEN
                           lmensaje := SQLERRM;
                           num_err := 141031;
                           ROLLBACK;
                           p_tab_error (f_sysdate,
                                        f_user,
                                        'p_emitir_propuesta',
                                        15,
                                           'pcempres = '
                                        || pcempres
                                        || ' pnpoliza = '
                                        || pnpoliza
                                        || ' pncertif = '
                                        || pncertif
                                        || ' pcramo = '
                                        || pcramo
                                        || ' pcmodali = '
                                        || pcmodali
                                        || ' pctipseg = '
                                        || pctipseg
                                        || ' pccolect = '
                                        || pccolect
                                        || ' pcactivi = '
                                        || pcactivi
                                        || ' pmoneda = '
                                        || pmoneda
                                        || 'pcidioma = '
                                        || pcidioma,
                                        SQLERRM
                                       );
                     END;
                  END IF;

                  --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA',' VA A F_RECRIES NUM_ERR='||NUM_ERR||' '||lfefecto||' lmensaje='||lmensaje); --> BORRAR JGR
                  IF lmensaje = 0
                  THEN
                        --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','F_Recries(03) '); --> BORRAR JGR
                     --BUG9028-XVM-01102009 inici
                     -- Bug.: 18852 - 08/09/2011 - ICV
                         -- Se mira si es nueva producci¿n o cartera para
                         -- aplicar como modo de comision un 1 o un 2
                     IF f_es_renovacion (v_pol.sseguro) = 0
                     THEN                                       -- es cartera
                        xcmodcom := 2;
                     ELSE                       -- si es 1 es nueva produccion
                        xcmodcom := 1;
                     END IF;

                     IF NVL
                           (pac_parametros.f_parinstalacion_n
                                                             ('CALCULO_RECIBO'),
                            1
                           ) = 0
                     THEN
                        -- Bug 14775 - RSC - 10/08/2010 - AGA003 - Error en dades rebut plantilla Condicionat Particular AGA012
                        lmensaje :=
                           pac_adm.f_recries (v_pol.ctipreb,
                                              v_pol.sseguro,
                                              v_pol.cagente,
                                              f_sysdate,
                                              lfefecto,
                                              lfefecto + 1,
                                              lctiprec,
                                              NULL,
                                              NULL,
                                              xccobban,
                                              NULL,
                                              lsproces,
                                              lctipmov,
                                              'A',
                                              xcmodcom,
                                              lfcanua,
                                              lcapital,
                                              lcmovi,
                                              pcempres,
                                              lnmovimi,
                                              lsituacion,
                                              ximporx,
                                              lnordapo,
                                              lcgarant
                                             );
                     ELSE
                        lmensaje :=
                           f_recries
                                    (v_pol.ctipreb,
                                     v_pol.sseguro,
                                     v_pol.cagente,
                                     f_sysdate,
                                     lfefecto,
                                     lfefecto + 1,
                                     lctiprec,
                                     NULL,
                                     NULL,
                                     xccobban,
                                     NULL,
                                     lsproces,
                                     lctipmov,
                                     'A',
                                     xcmodcom,
                                     lfcanua,
                                     lcapital,
                                     lcmovi,
                                     NULL,
                                     lnmovimi,
                                     lsituacion,
                                     ximporx,
                                     lnordapo,
                                     lcgarant, -- BUG 21924 - MDS - 22/06/2012
                                     NULL,
                                     'CAR',
                                     lcdomper
                                    );
                     END IF;
                  --BUG9028-XVM-01102009 fi
                  END IF;

                  IF lmensaje <> 0
                  THEN
                     --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','F_Recries() lmensaje='||lmensaje||' NUM_ERR='||NUM_ERR); --> BORRAR JGR
                     num_err := 1;
                     ROLLBACK;
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta',
                                  151,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  f_axis_literales (lmensaje, pcidioma)
                                 );
                  ELSE
                     IF v_pol.ctipreb = 4
                     THEN
                        --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA',' va a borrar NUM_ERR='||NUM_ERR||' '||lfefecto); --> BORRAR JGR
                        BEGIN
                           DELETE FROM movaporpen
                                 WHERE sseguro = v_pol.sseguro
                                   AND nmovimi = lnmovimi;
                        EXCEPTION
                           WHEN OTHERS
                           THEN
                              --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','SQLERRM='||SQLERRM); --> BORRAR JGR
                              lmensaje := SQLERRM;
                              num_err := 141033;
                              ROLLBACK;
                              p_tab_error (f_sysdate,
                                           f_user,
                                           'p_emitir_propuesta',
                                           16,
                                              'pcempres = '
                                           || pcempres
                                           || ' pnpoliza = '
                                           || pnpoliza
                                           || ' pncertif = '
                                           || pncertif
                                           || ' pcramo = '
                                           || pcramo
                                           || ' pcmodali = '
                                           || pcmodali
                                           || ' pctipseg = '
                                           || pctipseg
                                           || ' pccolect = '
                                           || pccolect
                                           || ' pcactivi = '
                                           || pcactivi
                                           || ' pmoneda = '
                                           || pmoneda
                                           || 'pcidioma = '
                                           || pcidioma,
                                           SQLERRM
                                          );
                        END;
                     END IF;
                  END IF;
               END IF;
            END IF;
         ELSE
            ROLLBACK;
         END IF;

         --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','02-num_err='||num_err||' PINDICE_E='||PINDICE_E); --> BORRAR JGR
         IF num_err = 0
         THEN
            BEGIN
               --Miramos si el movimiento de seguro que produce la emisi¿n
               --ha de dejar la p¿liza pendiente de una nueva impresi¿n
               SELECT DECODE (cimpres,
                              1, 0,                               --Se imprime
                              0, 1,                            --No se imprime
                              1
                             )                                       --Tampoco
                 INTO xcimpres
                 FROM codimotmov
                WHERE cmotmov = lcmotmov;

               -- Ini IAXIS-5421 -- ECP -- 16/10/2019
               BEGIN
                  SELECT 1
                    INTO v_existe
                    FROM rango_dian_movseguro
                   WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi;
               EXCEPTION
                  WHEN NO_DATA_FOUND
                  THEN
                     v_existe := 0;
               END;

               IF v_existe = 0
               THEN
                  --INI SGM IAXIS 5273 Se dispara creación de cert. Dian desde este punto para no crearlo en cotizaciones
                  num_err :=
                     pac_rango_dian.f_asigna_rangodian (v_pol.sseguro,
                                                        lnmovimi
                                                       );

                  IF num_err <> 0
                  THEN
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta',
                                  1,
                                  'codigo de agente incorrecto',
                                  SQLERRM
                                 );
                  END IF;
               --FIN SGM IAXIS 5273 Se dispara creación de cert. Dian desde este punto para no crearlo en cotizaciones
               END IF;

               -- Ini IAXIS-5421 -- ECP -- 16/10/2019
               UPDATE movseguro
                  SET cimpres = xcimpres,
                      femisio = f_sysdate
                WHERE sseguro = v_pol.sseguro
                  AND femisio IS NULL
                  -- Ini 12244 --ECP-- 21/04/2014
                  AND fanulac IS NULL
                                     -- Fin 12244 --ECP-- 21/04/2014
               ;
            EXCEPTION
               WHEN OTHERS
               THEN
                  --P_CONTROL_ERROR('P_EMITIR_PROPUESTA','REA','02-SQLCODE='||SQLCODE||' SQLERRM='||SQLERRM); --> BORRAR JGR
                  lmensaje := SQLCODE;
                  num_err := 1;
                  ROLLBACK;
                  -- CONF-274-25/11/2016-JLTS- Ini
                  p_borrar_anususpensionseg (v_pol.sseguro);
                  -- CONF-274-25/11/2016-JLTS- Fin
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta',
                               17,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma,
                               SQLERRM
                              );
            END;
         END IF;

         IF num_err = 0
         THEN
            IF lgenrec = 1
            THEN                    -- genera recibo, hay cambio de garant¿as
               lmensaje :=
                     pac_provmat_formul.f_ins_garansegprovmat (v_pol.sseguro);

               IF lmensaje <> 0
               THEN
                  num_err := 1;
                  ROLLBACK;
                  -- CONF-274-25/11/2016-JLTS- Ini
                  p_borrar_anususpensionseg (v_pol.sseguro);
                  -- CONF-274-25/11/2016-JLTS- Fin
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta',
                               171,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma,
                               f_axis_literales (lmensaje, pcidioma)
                              );
               END IF;
            END IF;
         END IF;

         -- Clasificaci¿n FATCA. Podr¿amos haber hecho un Procedure. Si esto falla queremos que siga.
         -- 34989/209958: Se agreg¿ if
         IF NVL (f_parproductos_v (v_pol.sproduc, 'FATCA_CLASIFICA'), 0) = 1
         THEN
            num_err_aux := pac_seguros.f_fatca_clasifica (v_pol.sseguro);
         END IF;

         IF num_err = 0 AND lnmovimi <> 1
         THEN
            lmensaje := pk_suplementos.f_post_suplemento (v_pol.sseguro);

            IF lmensaje <> 0
            THEN
               num_err := 1;
               ROLLBACK;
               -- CONF-274-25/11/2016-JLTS- Ini
               p_borrar_anususpensionseg (v_pol.sseguro);
               -- CONF-274-25/11/2016-JLTS- Fin
               p_tab_error (f_sysdate,
                            f_user,
                            'p_emitir_propuesta',
                            18,
                               'pcempres = '
                            || pcempres
                            || ' pnpoliza = '
                            || pnpoliza
                            || ' pncertif = '
                            || pncertif
                            || ' pcramo = '
                            || pcramo
                            || ' pcmodali = '
                            || pcmodali
                            || ' pctipseg = '
                            || pctipseg
                            || ' pccolect = '
                            || pccolect
                            || ' pcactivi = '
                            || pcactivi
                            || ' pmoneda = '
                            || pmoneda
                            || 'pcidioma = '
                            || pcidioma,
                            lmensaje
                           );
            END IF;
         END IF;

         -- Bug 19715 - RSC - 10/12/2011 - LCOL: Migraci¿n de productos de Vida Individual
         IF num_err = 0
         THEN
            SELECT pac_parametros.f_parproducto_t (v_pol.sproduc,
                                                   'F_POST_EMISION'
                                                  )
              INTO v_funcion
              FROM DUAL;

            IF v_funcion IS NOT NULL
            THEN
               v_sproces := lsproces;
               v_sseguro := v_pol.sseguro;
               v_fefecto := TO_CHAR (lfefecto, 'dd/mm/yyyy');
               v_nmovimi := lnmovimi;
               ss :=
                     'begin :num_err := '
                  || v_funcion
                  || '(:v_sproces, :v_sseguro, :v_fefecto, :v_nmovimi, :v_tmensaje); end;';

               -- BUG 27642 - FAL - 30/04/2014
               EXECUTE IMMEDIATE ss
                           USING OUT    num_err,
                                 IN     v_sproces,
                                 IN     v_sseguro,
                                 IN     v_fefecto,
                                 IN     v_nmovimi,
                                 OUT    v_tmensaje;

               -- BUG 27642 - FAL - 30/04/2014
               IF num_err <> 0
               THEN
                  lmensaje := num_err;
                  pmensaje := v_tmensaje;     -- BUG 27642 - FAL - 30/04/2014
                  num_err := 1;
                  ROLLBACK;
                  -- CONF-274-25/11/2016-JLTS- Ini
                  p_borrar_anususpensionseg (v_pol.sseguro);
                  -- CONF-274-25/11/2016-JLTS- Fin
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta.f_pre_emision',
                               181,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma,
                               lmensaje
                              );
               END IF;
            END IF;
         END IF;

         -- Fin Bug 19715
         IF lctiprec IN (1, 9)
         THEN
            SELECT COUNT (*)
              INTO v_existe_susp
              FROM movseguro
             WHERE sseguro = v_pol.sseguro
               AND fefecto >= lfefecto
               AND cmotmov IN (391, pac_suspension.vcod_reinicio);
-- Existen movimientos suspensi¿n/reinicio posteriores -- CONF-274-25/11/2016-JLTS
         ELSE
            SELECT COUNT (*)
              INTO v_existe_susp
              FROM movseguro
             WHERE sseguro =
                      (SELECT sseguro
                         FROM seguros
                        WHERE npoliza = (SELECT npoliza
                                           FROM seguros
                                          WHERE sseguro = v_pol.sseguro)
                          AND ncertif = 0)
               AND fefecto >= lfefecto
               AND cmotmov IN (391, pac_suspension.vcod_reinicio);
         -- CONF-274-25/11/2016-JLTS- Se cambia 392 por pac_suspension.vcod_reinicio
         END IF;

         IF     v_existe_susp > 0
            AND NVL (f_parproductos_v (v_pol.sproduc, 'TRATA_REC_SUSPENSION'),
                     1
                    ) = 1
         THEN
            SELECT COUNT (*)
              INTO v_contareb
              FROM recibos
             WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi;

            IF lctiprec IN (1, 9)
            THEN                        -- Se ha generado recibo de suplemento
               --BUG 29229 - INICIO - DCT - 09/12/2013 - LCOL_T010-LCOL - Revision incidencias Suspensi¿n / Reinicio (VIII)
               num_err :=
                  pk_suplementos.f_pre_inicializacion_supl (v_pol.sseguro,
                                                            lfefecto
                                                           );

               IF num_err <> 0
               THEN
                  lmensaje := num_err;
                  num_err := 1;
                  ROLLBACK;
                  -- CONF-274-25/11/2016-JLTS- Ini
                  p_borrar_anususpensionseg (v_pol.sseguro);
                  -- CONF-274-25/11/2016-JLTS- Fin
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta.f_trata_suspension',
                               182,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma,
                               lmensaje
                              );
               END IF;

               IF v_contareb > 0
               THEN
-->>>>>>>>>>>>>>>>>> 10.- <<<<<<<<<<<<<<<<<<<<
                  SELECT nrecibo
                    INTO xnrecibosupl
                    FROM recibos
                   WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi;

                  --Se ha de generar un recibo complementario y correspondiente al periodo que ha estado suspendida.
                  num_err :=
                     pac_suspension.f_trata_recibo_suspende (v_pol.sseguro,
                                                             xnrecibosupl,
                                                             lfefecto,
                                                             lctiprec
                                                            );

                  IF num_err <> 0
                  THEN
                     lmensaje := num_err;
                     num_err := 1;
                     ROLLBACK;
                     -- CONF-274-25/11/2016-JLTS- Ini
                     p_borrar_anususpensionseg (v_pol.sseguro);
                     -- CONF-274-25/11/2016-JLTS- Fin
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta.f_trata_suspension',
                                  1822,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  lmensaje
                                 );
                  END IF;
               END IF;

               FOR regs IN (SELECT   *
                                FROM movseguro
                               WHERE sseguro = v_pol.sseguro
                                 AND fefecto >= lfefecto
                                 AND cmotmov IN
                                          (391, pac_suspension.vcod_reinicio)
                            -- CONF-274-25/11/2016-JLTS- Se cambia 392 por pac_suspension.vcod_reinicio
                            ORDER BY nmovimi ASC)
               LOOP
-->>>>>>>>>>>>>>>>>>> 9.4.- <<<<<<<<<<<<<<<<<<
--Se deben recrear los movimientos de suspensi¿n / reinicio pero sin hacer nada con recibos.
-- Necesitamos recuperar algunos valores de suspensionseg
               -- CONF-274-25/11/2016-JLTS- Se cambia el campo a.fvigencia por NVL(a.fvigencia,a.ffinal) y se cambia la tabla anulsuspensionseg por suspensionseg
                  SELECT ttexto, NVL (a.fvigencia, a.ffinal)
                    INTO v_ttexto, v_fvigencia
                    FROM anususpensionseg a
                   WHERE sseguro = v_pol.sseguro
                     AND cmotmov = regs.cmotmov
                     AND nmovimi = regs.nmovimi;

                  -- llamamos a suspensi¿n / reinicio pero sin tratar recibos.
                  num_err :=
                     pac_suspension.f_set_mov (v_pol.sseguro,
                                               regs.cmotmov,
                                               regs.fefecto,
                                               v_fvigencia,
                                               v_ttexto,
                                               NULL,
                                               0
                                              );

                  ---> Suspende/Reinicia pero no trates recibos.
                  IF num_err <> 0
                  THEN
                     lmensaje := num_err;
                     num_err := 1;
                     ROLLBACK;
                     -- CONF-274-25/11/2016-JLTS- Ini
                     p_borrar_anususpensionseg (v_pol.sseguro);
                     -- CONF-274-25/11/2016-JLTS- Fin
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta.f_trata_suspension',
                                  1823,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  lmensaje
                                 );
                  END IF;
               END LOOP;
            ELSIF lctiprec = 0
            THEN
-->>>>>>>>>>>>>>>>>>> 11.- <<<<<<<<<<<<<<<<<<
               v_nrecibos := '';

               FOR regs IN (SELECT *
                              FROM recibos
                             WHERE sseguro = v_pol.sseguro
                               AND nmovimi = lnmovimi)
               LOOP
                  v_lista.EXTEND;
                  v_lista (v_lista.LAST) := ob_lista_id ();
                  v_lista (v_lista.LAST).idd := regs.nrecibo;
                  v_nrecibos := v_nrecibos || regs.nrecibo || ',';
               END LOOP;

               v_nrecibos := RTRIM (v_nrecibos, ',');

               -->>>>>>>>>>>>>>> 11.2.- <<<<<<<<<<<<<<<<<
               IF v_lista IS NOT NULL
               THEN
                  IF v_lista.COUNT > 0
                  THEN
                     num_err :=
                        pac_gestion_rec.f_agruparecibo (v_sproduc,
                                                        lfcapro,
                                                        f_sysdate,
                                                        v_cempres,
                                                        v_lista,
                                                        1,
                                                        0,
                                                        0
                                                       );

                     -- commitpag = 0 --> No queremos enviar a cobro este recibo!!
                     IF num_err <> 0
                     THEN
                        lmensaje := num_err;
                        num_err := 1;
                        ROLLBACK;
                        -- CONF-274-25/11/2016-JLTS- Ini
                        p_borrar_anususpensionseg (v_pol.sseguro);
                        -- CONF-274-25/11/2016-JLTS- Fin
                        p_tab_error (f_sysdate,
                                     f_user,
                                     'p_emitir_propuesta.f_trata_suspension',
                                     183,
                                        'pcempres = '
                                     || pcempres
                                     || ' pnpoliza = '
                                     || pnpoliza
                                     || ' pncertif = '
                                     || pncertif
                                     || ' pcramo = '
                                     || pcramo
                                     || ' pcmodali = '
                                     || pcmodali
                                     || ' pctipseg = '
                                     || pctipseg
                                     || ' pccolect = '
                                     || pccolect
                                     || ' pcactivi = '
                                     || pcactivi
                                     || ' pmoneda = '
                                     || pmoneda
                                     || 'pcidioma = '
                                     || pcidioma,
                                     lmensaje
                                    );
                     END IF;
                  END IF;
               END IF;

               -->>>>>>>>>>>>>>> 11.3.- <<<<<<<<<<<<<<<<<
               IF num_err = 0
               THEN
                  v_sel :=
                        'SELECT nrecunif FROM adm_recunif '
                     || 'WHERE nrecibo IN('
                     || v_nrecibos
                     || ')'
                     || 'GROUP BY nrecunif';

                  OPEN v_cur FOR v_sel;

                  FETCH v_cur
                   INTO v_nrecunif;

                  CLOSE v_cur;
               END IF;

               SELECT MIN (fefecto)
                 INTO v_fefecto_min
                 FROM recibos
                WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi;

               UPDATE recibos
                  SET fefecto = v_fefecto_min
                WHERE nrecibo = v_nrecunif;

               -->>>>>>>>>>>>>>> 11.4.- <<<<<<<<<<<<<<<<<
               IF num_err = 0
               THEN
                  num_err :=
                     pac_suspension.f_trata_recibo_suspende (v_pol.sseguro,
                                                             v_nrecunif,
                                                             lfefecto,
                                                             lctiprec
                                                            );

                  IF num_err <> 0
                  THEN
                     lmensaje := num_err;
                     num_err := 1;
                     ROLLBACK;
                     -- CONF-274-25/11/2016-JLTS- Ini
                     p_borrar_anususpensionseg (v_pol.sseguro);
                     -- CONF-274-25/11/2016-JLTS- Fin
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta.f_trata_suspension',
                                  184,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  lmensaje
                                 );
                  END IF;
               END IF;

               -->>>>>>>>>>>>>>> 11.5.- <<<<<<<<<<<<<<<<<
               IF num_err = 0
               THEN
                  num_err := pac_gestion_rec.f_borra_recibo (v_nrecunif);

                  IF num_err <> 0
                  THEN
                     lmensaje := num_err;
                     num_err := 1;
                     ROLLBACK;
                     -- CONF-274-25/11/2016-JLTS- Ini
                     p_borrar_anususpensionseg (v_pol.sseguro);
                     -- CONF-274-25/11/2016-JLTS- Fin
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta.f_trata_suspension',
                                  185,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  lmensaje
                                 );
                  END IF;
               END IF;                              --IF num_err = 0 THEN 11.5

               --Debemos realizar los movimientos de anulac¿n de la suspension y reinicio
               FOR regs IN (SELECT   *
                                FROM movseguro
                               WHERE sseguro =
                                        (SELECT sseguro
                                           FROM seguros
                                          WHERE npoliza =
                                                   (SELECT npoliza
                                                      FROM seguros
                                                     WHERE sseguro =
                                                                 v_pol.sseguro)
                                            AND ncertif = 0)
                                 AND fefecto >= lfefecto
                                 AND cmotmov IN
                                          (391, pac_suspension.vcod_reinicio)
                            -- CONF-274-25/11/2016-JLTS- Se cambia 392 por pac_suspension.vcod_reinicio
                            ORDER BY nmovimi ASC)
               LOOP
-->>>>>>>>>>>>>>>>>>> 9.4.- <<<<<<<<<<<<<<<<<<
--Se deben recrear los movimientos de suspensi¿n / reinicio pero sin hacer nada con recibos.
-- Necesitamos recuperar algunos valores de suspensionseg
                  SELECT ttexto, fvigencia, sseguro
                    INTO v_ttexto, v_fvigencia, v_sseguro_0
                    FROM suspensionseg
                   WHERE sseguro =
                            (SELECT sseguro
                               FROM seguros
                              WHERE npoliza = (SELECT npoliza
                                                 FROM seguros
                                                WHERE sseguro = v_pol.sseguro)
                                AND ncertif = 0)
                     AND cmotmov = regs.cmotmov
                     AND nmovimi = regs.nmovimi;

                  -- llamamos a suspensi¿n / reinicio pero sin tratar recibos.
                  num_err :=
                     pac_suspension.f_set_mov (v_pol.sseguro,   --v_sseguro_0,
                                               regs.cmotmov,
                                               regs.fefecto,
                                               v_fvigencia,
                                               v_ttexto,
                                               NULL,
                                               0
                                              );

                  ---> Suspende/Reinicia pero no trates recibos.
                  IF num_err <> 0
                  THEN
                     lmensaje := num_err;
                     num_err := 1;
                     ROLLBACK;
                     -- CONF-274-25/11/2016-JLTS- Ini
                     p_borrar_anususpensionseg (v_pol.sseguro);
                     -- CONF-274-25/11/2016-JLTS- Fin
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta.f_trata_suspension',
                                  1823,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  lmensaje
                                 );
                  END IF;
               END LOOP;
            ------
            END IF;
         END IF;

         --BUG 29229 - FIN - DCT - 09/12/2013 - LCOL_T010-LCOL - Revision incidencias Suspensi¿n / Reinicio (VIII)

         --JRH  12/2007 Si el producto pide un plan de rentas (por periodo o periodo anualidad) y estamos en Nueva Producci¿n
         --lo creamos
         IF     NVL (f_parproductos_v (v_pol.sproduc, 'PLAN_RENTAS'), 0) <> 0
            AND lctipmov = 0
         THEN
            lmensaje :=
                       pk_rentas.f_insertplanrentas (v_pol.sseguro, lnmovimi);

            IF lmensaje <> 0
            THEN
               num_err := 1;
               ROLLBACK;
               -- CONF-274-25/11/2016-JLTS- Ini
               p_borrar_anususpensionseg (v_pol.sseguro);
               -- CONF-274-25/11/2016-JLTS- Fin
               p_tab_error (f_sysdate,
                            f_user,
                            'p_emitir_propuesta',
                            19,
                               'pcempres = '
                            || pcempres
                            || ' pnpoliza = '
                            || pnpoliza
                            || ' pncertif = '
                            || pncertif
                            || ' pcramo = '
                            || pcramo
                            || ' pcmodali = '
                            || pcmodali
                            || ' pctipseg = '
                            || pctipseg
                            || ' pccolect = '
                            || pccolect
                            || ' pcactivi = '
                            || pcactivi
                            || ' pmoneda = '
                            || pmoneda
                            || 'pcidioma = '
                            || pcidioma,
                            lmensaje
                           );
            END IF;
         END IF;

         IF num_err = 0
         THEN
            -- Si se asigna el numero de p¿liza en la emisi¿n
            IF     NVL (f_parproductos_v (v_pol.sproduc, 'NPOLIZA_EN_EMISION'),
                        0
                       ) = 1
               AND lctipmov = 0
            THEN                                   -- solo en Nueva Producci¿n
               -- Bug 7854 y 8745 - 12/02/2008 - RSC - Adaptaci¿n iAxis a productos colectivos con certificados
               IF    lcsubpro = 3
                  OR NVL (f_parproductos_v (v_pol.sproduc,
                                            'ADMITE_CERTIFICADOS'
                                           ),
                          0
                         ) = 1
               THEN                                              -- colectivos
                  BEGIN
                     -- Bug 16095 - 04/11/2010 - Si 'CERTIFICADO_GLOBAL' = 1, entonces el ncertif
                     -- ser¿ a nivel de todos los colectivos
                     IF NVL (f_parproductos_v (v_pol.sproduc,
                                               'CERTIFICADO_GLOBAL'
                                              ),
                             0
                            ) = 1
                     THEN     -- ¿Certificado a nivel de todos los colectivos?
                        SELECT NVL (MAX (ncertif), 0) + 1
                          INTO v_ncertif
                          FROM seguros
                         WHERE sproduc = v_pol.sproduc
                           AND sseguro <> v_pol.sseguro
                           AND csituac <> 4;   -- que no sea propuesta de alta
                     -- Fin Bug 16095 - APD - 04/11/2010
                     ELSE
                        SELECT NVL (MAX (ncertif), 0) + 1
                          INTO v_ncertif
                          FROM seguros
                         WHERE npoliza = v_pol.npoliza
                           AND sseguro <> v_pol.sseguro
                           AND csituac <> 4;   -- que no sea propuesta de alta
                     END IF;
                  EXCEPTION
                     WHEN OTHERS
                     THEN
                        lmensaje := 101919;
                        num_err := 1;
                        -- ERROR AL LEER DATOS DE LA TABLA SEGUROS
                        ROLLBACK;
                        -- CONF-274-25/11/2016-JLTS- Ini
                        p_borrar_anususpensionseg (v_pol.sseguro);
                        -- CONF-274-25/11/2016-JLTS- Fin
                        p_tab_error (f_sysdate,
                                     f_user,
                                     'p_emitir_propuesta',
                                     20,
                                        'pcempres = '
                                     || pcempres
                                     || ' pnpoliza = '
                                     || pnpoliza
                                     || ' pncertif = '
                                     || pncertif
                                     || ' pcramo = '
                                     || pcramo
                                     || ' pcmodali = '
                                     || pcmodali
                                     || ' pctipseg = '
                                     || pctipseg
                                     || ' pccolect = '
                                     || pccolect
                                     || ' pcactivi = '
                                     || pcactivi
                                     || ' pmoneda = '
                                     || pmoneda
                                     || 'pcidioma = '
                                     || pcidioma,
                                     SQLERRM
                                    );
                  END;
               ELSE
                  -- BUG15617:DRA:23/08/2010:Inici
                  v_npoliza_cnv :=
                     NVL (f_parproductos_v (v_pol.sproduc,
                                            'NPOLIZA_CNVPOLIZAS'
                                           ),
                          0
                         );

                  IF v_npoliza_cnv IN (1, 2)
                  THEN
                     -- BUG16372:DRA:19/10/2010:Inici
                     v_npoliza_ini := f_npoliza (NULL, v_pol.sseguro);

                     IF LENGTH (v_npoliza_ini) > 8
                     THEN
                        lmensaje := 9901434;
                     -- El n¿mero de p¿lissa ha de ser num¿ric i de 8 d¿gits com a m¿xim
                     END IF;

                     BEGIN
                        v_npoliza := TO_NUMBER (v_npoliza_ini);
                     EXCEPTION
                        WHEN OTHERS
                        THEN
                           lmensaje := 9901434;
                     -- El n¿mero de p¿lissa ha de ser num¿ric i de 8 d¿gits com a m¿xim
                     END;

                     IF lmensaje <> 0
                     THEN
                        num_err := 1;
                        ROLLBACK;
                        -- CONF-274-25/11/2016-JLTS- Ini
                        p_borrar_anususpensionseg (v_pol.sseguro);
                        -- CONF-274-25/11/2016-JLTS- Fin
                        p_tab_error (f_sysdate,
                                     f_user,
                                     'p_emitir_propuesta',
                                     20,
                                        'pcempres = '
                                     || pcempres
                                     || ' pnpoliza = '
                                     || pnpoliza
                                     || ' pncertif = '
                                     || pncertif
                                     || ' pcramo = '
                                     || pcramo
                                     || ' pcmodali = '
                                     || pcmodali
                                     || ' pctipseg = '
                                     || pctipseg
                                     || ' pccolect = '
                                     || pccolect
                                     || ' pcactivi = '
                                     || pcactivi
                                     || ' pmoneda = '
                                     || pmoneda
                                     || 'pcidioma = '
                                     || pcidioma
                                     || ' npolissa_ini='
                                     || v_npoliza_ini,
                                     f_axis_literales (lmensaje, f_usu_idioma)
                                    );
                     END IF;

                     -- BUG16372:DRA:19/10/2010:Fi
                     IF v_npoliza IS NULL AND v_npoliza_cnv = 2
                     THEN
                        -- El numero de p¿liza inicial debe estar informado
                        lmensaje := 120006;     -- Error al llegir CNVPOLIZAS
                        num_err := 1;
                        ROLLBACK;
                        -- CONF-274-25/11/2016-JLTS- Ini
                        p_borrar_anususpensionseg (v_pol.sseguro);
                        -- CONF-274-25/11/2016-JLTS- Fin
                        p_tab_error (f_sysdate,
                                     f_user,
                                     'p_emitir_propuesta',
                                     21,
                                        'pcempres = '
                                     || pcempres
                                     || ' pnpoliza = '
                                     || pnpoliza
                                     || ' pncertif = '
                                     || pncertif
                                     || ' pcramo = '
                                     || pcramo
                                     || ' pcmodali = '
                                     || pcmodali
                                     || ' pctipseg = '
                                     || pctipseg
                                     || ' pccolect = '
                                     || pccolect
                                     || ' pcactivi = '
                                     || pcactivi
                                     || ' pmoneda = '
                                     || pmoneda
                                     || 'pcidioma = '
                                     || pcidioma,
                                     f_axis_literales (lmensaje, pcidioma)
                                    );
                     END IF;
                  END IF;

                  IF v_npoliza IS NULL AND num_err = 0
                  THEN
                     -- Bug 9720 - APD - 28/04/2009 - Antes de llamar a la funci¿n f_contador se deber¿ verificar el parproducto
                     -- 'NPOLIZA_PREFIJO' devuelva un valor. En caso de que no est¿ informado se llamar¿ a la f_contador
                     -- con el cramo (como se est¿ haciendo en la actualidad), en caso contrario se deber¿ llamar con el
                     -- resultado del parproducto
                     v_npoliza_prefijo :=
                          f_parproductos_v (v_pol.sproduc, 'NPOLIZA_PREFIJO');

                     IF v_npoliza_prefijo IS NOT NULL
                     THEN
                        --v_pol.cramo := v_npoliza_prefijo;
                        v_aux := v_npoliza_prefijo;                   --> JRH
                     ELSE
                        v_aux := v_pol.cramo;                          -->JRH
                     END IF;

                     -- Bug 9720 - APD - 28/04/2009 - Fin

                     -- BUG 17008 - 15/12/2010 - JMP - Llamar a PAC_PROPIO.F_CONTADOR2 para la generaci¿n del n¿ de p¿liza
                     IF NVL (f_parproductos_v (v_pol.sproduc, 'AMA_PROPUESTA'),
                             0
                            ) = 1
                     THEN
                        v_npoliza :=
                           pac_propio.f_contador2 (v_pol.cempres, '01',
                                                   v_aux);
                     ELSE                                                --JRH
                        v_npoliza :=
                           pac_propio.f_contador2 (v_pol.cempres, '02',
                                                   v_aux);
                     END IF;
                  END IF;
               -- BUG15617:DRA:23/08/2010:Fi
               END IF;

               -- BUG : 24685 2013-02-25 AEG Se asigna numero de poliza manual.
               BEGIN
                  SELECT ctipoasignum, npolizamanual, sproduc,
                         cempres, cagente, cramo
                    INTO v_ctipoasignum, v_npolizamanual, v_sproduc,
                         v_cempres, v_cagente, v_cramo
                    FROM seguros
                   WHERE sseguro = v_pol.sseguro;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'others--p_emitir_propuesta.pol_man',
                                  21,
                                     'v_ctipoasignum = '
                                  || v_ctipoasignum
                                  || ' v_npolizamanual, = '
                                  || v_npolizamanual
                                  || ' v_sproduc = '
                                  || v_sproduc
                                  || ' v_cempres = '
                                  || v_cempres
                                  || ' v_cagente = '
                                  || v_cagente,
                                  SQLERRM
                                 );
               END;

               IF v_ctipoasignum = 1
               THEN
                  v_npolizamanual_real :=
                     pac_prod_comu.f_obtener_polizamanual (v_pol.sproduc,
                                                           v_npolizamanual
                                                          );

                  IF v_npolizamanual_real IS NULL
                  THEN
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta.obtener_pol_real',
                                  21,
                                     'v_ctipoasignum = '
                                  || v_ctipoasignum
                                  || ' v_npolizamanual, = '
                                  || v_npolizamanual
                                  || ' v_sproduc = '
                                  || v_sproduc
                                  || ' v_cempres = '
                                  || v_cempres
                                  || ' v_cagente = '
                                  || v_cagente
                                  || ' ,v_err = '
                                  || v_err,
                                  SQLERRM
                                 );
                     RAISE errores;
                  END IF;

                  v_err :=
                     pac_validaciones.f_valida_polizamanual (v_ctipoasignum,
                                                             v_npolizamanual,
                                                             v_pol.sseguro,
                                                             v_sproduc,
                                                             v_cempres,
                                                             v_cagente,
                                                             'POL'
                                                            );

                  IF v_err <> 0
                  THEN
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta.pol_man',
                                  21,
                                     'v_ctipoasignum = '
                                  || v_ctipoasignum
                                  || ' v_npolizamanual, = '
                                  || v_npolizamanual
                                  || ' v_sproduc = '
                                  || v_sproduc
                                  || ' v_cempres = '
                                  || v_cempres
                                  || ' v_cagente = '
                                  || v_cagente
                                  || ' ,v_err = '
                                  || v_err,
                                  SQLERRM
                                 );
                     RAISE errores;
                  ELSE
                     v_err :=
                        pac_prod_comu.f_asignarango (2,
                                                     v_cramo,
                                                     v_npolizamanual
                                                    );

                     IF v_err <> 0
                     THEN
                        p_tab_error (f_sysdate,
                                     f_user,
                                     'p_emitir_propuesta.f_asignarango',
                                     21,
                                        'v_ctipoasignum = '
                                     || v_ctipoasignum
                                     || ' v_npolizamanual, = '
                                     || v_npolizamanual
                                     || ' v_sproduc = '
                                     || v_sproduc
                                     || ' v_cempres = '
                                     || v_cempres
                                     || ' v_cramo = '
                                     || v_cramo
                                     || ' ,v_err = '
                                     || v_err,
                                     SQLERRM
                                    );
                        RAISE errores;
                     END IF;

                     v_npoliza := v_npolizamanual_real;
                  END IF;
               END IF;

               -- fin BUG : 24685 2013-02-25 AEG Se asigna numero de poliza manual.
               BEGIN
                  UPDATE seguros
                     SET npoliza = NVL (v_npoliza, npoliza),
                         ncertif = NVL (v_ncertif, ncertif)
                   WHERE sseguro = v_pol.sseguro;

                  -- Bug 23940 - APD - 19/11/2012 - bloquear la poliza en emision si por defecto
                  -- debe quedar bloqueada
                  num_err := pac_propio.f_act_cbloqueocol (v_pol.sseguro);
               -- fin Bug 23940 - APD - 19/11/2012
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     num_err := 1;
                     ROLLBACK;
                     -- CONF-274-25/11/2016-JLTS- Ini
                     p_borrar_anususpensionseg (v_pol.sseguro);
                     -- CONF-274-25/11/2016-JLTS- Fin
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta',
                                  22,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  SQLERRM
                                 );
               END;
            END IF;
         END IF;

         IF num_err = 1
         THEN
            pindice_e := pindice_e + 1;
            ltexto := f_axis_literales (lmensaje, pcidioma);
            v_num_err_lin :=
                       f_proceslin (lsproces, ltexto, v_pol.sseguro, nprolin);
            p_tab_error (f_sysdate,
                         f_user,
                         'p_emitir_propuesta',
                         23,
                            'pcempres = '
                         || pcempres
                         || ' pnpoliza = '
                         || pnpoliza
                         || ' pncertif = '
                         || pncertif
                         || ' pcramo = '
                         || pcramo
                         || ' pcmodali = '
                         || pcmodali
                         || ' pctipseg = '
                         || pctipseg
                         || ' pccolect = '
                         || pccolect
                         || ' pcactivi = '
                         || pcactivi
                         || ' pmoneda = '
                         || pmoneda
                         || 'pcidioma = '
                         || pcidioma,
                         f_axis_literales (lmensaje, pcidioma)
                        );
            COMMIT;

            --Posem el creteni = 1 si esta a 6
            UPDATE seguros
               SET creteni = 1,
                   ccartera = NULL
             WHERE sseguro = v_pol.sseguro AND creteni = 99;
         ELSE               -- Si todo ha ido bien que calcule un nuevo numrec
            lnumrec := NULL;                           -- no s'utilitza ?????

            UPDATE estseguros
               SET csituac = 2                                       --Emitido
             WHERE sseguro = v_pol.sseguro;

            -- BUG19069:DRA:03/10/2011:Inici
            /* SGM IAXIS-5347 Errores en valores de comision/ se comenta pues re calcula las comisiones con valores errados
            IF pac_corretaje.f_tiene_corretaje(v_pol.sseguro, lnmovimi) = 1 THEN
               num_err := pac_corretaje.f_reparto_corretaje(v_pol.sseguro, lnmovimi, NULL);
            END IF;*/
            IF num_err <> 0
            THEN
               ROLLBACK;
               -- CONF-274-25/11/2016-JLTS- Ini
               p_borrar_anususpensionseg (v_pol.sseguro);
               -- CONF-274-25/11/2016-JLTS- Fin
               pindice_e := pindice_e + 1;
               ltexto := f_axis_literales (num_err, pcidioma);
               v_num_err_lin :=
                       f_proceslin (lsproces, ltexto, v_pol.sseguro, nprolin);
               p_tab_error (f_sysdate,
                            f_user,
                            'p_emitir_propuesta',
                            231,
                               'pcempres = '
                            || pcempres
                            || ' pnpoliza = '
                            || pnpoliza
                            || ' pncertif = '
                            || pncertif
                            || ' pcramo = '
                            || pcramo
                            || ' pcmodali = '
                            || pcmodali
                            || ' pctipseg = '
                            || pctipseg
                            || ' pccolect = '
                            || pccolect
                            || ' pcactivi = '
                            || pcactivi
                            || ' pmoneda = '
                            || pmoneda
                            || 'pcidioma = '
                            || pcidioma
                            || 'num_err = '
                            || num_err,
                            f_axis_literales (lmensaje, pcidioma)
                           );
            END IF;

            -- BUG19069:DRA:29/09/2011:Fi

            -- ini BUG 0022701 - 03/09/2012 - JMF
            IF num_err = 0
            THEN
               IF pac_retorno.f_tiene_retorno (NULL,
                                               v_pol.sseguro,
                                               lnmovimi,
                                               'SEG'
                                              ) = 1
               THEN
                  num_err :=
                     pac_retorno.f_generar_retorno (v_pol.sseguro,
                                                    lnmovimi,
                                                    NULL,
                                                    NULL
                                                   );
               END IF;
            END IF;

            -- fin BUG 0022701 - 03/09/2012 - JMF
            IF num_err <> 0
            THEN
               ROLLBACK;
               -- CONF-274-25/11/2016-JLTS- Ini
               p_borrar_anususpensionseg (v_pol.sseguro);
               -- CONF-274-25/11/2016-JLTS- Fin
               pindice_e := pindice_e + 1;
               ltexto := f_axis_literales (num_err, pcidioma);
               v_num_err_lin :=
                       f_proceslin (lsproces, ltexto, v_pol.sseguro, nprolin);
               p_tab_error (f_sysdate,
                            f_user,
                            'p_emitir_propuesta',
                            232,
                               'pcempres = '
                            || pcempres
                            || ' pnpoliza = '
                            || pnpoliza
                            || ' pncertif = '
                            || pncertif
                            || ' pcramo = '
                            || pcramo
                            || ' pcmodali = '
                            || pcmodali
                            || ' pctipseg = '
                            || pctipseg
                            || ' pccolect = '
                            || pccolect
                            || ' pcactivi = '
                            || pcactivi
                            || ' pmoneda = '
                            || pmoneda
                            || 'pcidioma = '
                            || pcidioma
                            || 'num_err = '
                            || num_err,
                            f_axis_literales (lmensaje, pcidioma)
                           );
            END IF;
         END IF;

         -- SE INFORMA LA FECHA DE BAJA DE LA GARANTIA DE PRIMA EXTRA
         -- PORQUE SINO AL EMITIR EL PROXIMO SUPLEMENTO GENERARIA
         -- RECIBO DE EXTRA
         IF num_err = 0
         THEN
            -- Bug 9685 - APD - 04/05/2009 - en lugar de coger la actividad de la tabla seguros,
            -- llamar a la funci¿n pac_seguros.ff_get_actividad
            UPDATE garanseg
               SET ffinefe = finiefe + 1
             WHERE sseguro = v_pol.sseguro
               AND f_pargaranpro_v
                                (v_pol.cramo,
                                 v_pol.cmodali,
                                 v_pol.ctipseg,
                                 v_pol.ccolect,
                                 pac_seguros.ff_get_actividad (v_pol.sseguro,
                                                               nriesgo
                                                              ),
                                 cgarant,
                                 'TIPO'
                                ) IN (4, 12)
               AND ffinefe IS NULL;

            -- Bug 9685 - APD - 04/05/2009 - Fin

            -- INI bug 19276 jbn reemplazos
            FOR cur IN (SELECT r.sseguro, s.csituac, s.cagente, r.sreempl
                                                                         -- BUG 18423 - I - 27/12/2011 - JLB - LCOL000 - Multimoneda
                               ,
                               s.sproduc, r.ctipo
                                     --LECG 15/11/2012 BUG: 24714 - Inserta el r.ctipo
                          -- BUG 18423 - I - 27/12/2011 - JLB - LCOL000 - Multimoneda
                        FROM   reemplazos r, seguros s
                         WHERE r.sreempl = s.sseguro
                           AND r.sseguro = v_pol.sseguro)
            LOOP
               IF cur.csituac = 0
               THEN                                                -- vigente
                  -- si la poliza de reemplazo no est¿ anulada (esta vigente) se debe anular
                  num_err :=
                     pac_anulacion.f_anula_poliza_reemplazo
                        (cur.sreempl,
                         (CASE
                             WHEN cur.ctipo = 1
                                THEN 302
                             WHEN cur.ctipo = 2
                                THEN 337
                             WHEN cur.ctipo = 3
                                THEN 336
                          END
                         ),                       --LECG 15/11/2012 BUG: 24714
                         -- BUG 18423 - I - 27/12/2011 - JLB - LCOL000 - Multimoneda
                                        -- f_parinstalacion_n('MONEDAINST'),
                         pac_monedas.f_moneda_producto (cur.sproduc),
                         -- BUG 18423 - I - 27/12/2011 - JLB - LCOL000 - Multimoneda
                         v_pol.fefecto,
                         
                         -- Bug 26947/0144288 - APD - 28/05/2013
                         (CASE
                             WHEN cur.ctipo = 1
                                THEN 1
                             WHEN cur.ctipo = 2
                                THEN 0
                             WHEN cur.ctipo = 3
                                THEN 0
                          END
                         )
                          -- fin Bug 26947/0144288 - APD - 28/05/2013
                     ,
                         1,
                         cur.cagente,
                         NULL,
                         NULL
                        );

                  -- Ini Bug 25119  --ECP -- 28/02/2013
                  IF num_err = 9903126
                  THEN
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta',
                                  2331,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma
                                  || 'num_err = '
                                  || num_err,
                                  ltexto
                                 );
                     num_err := 0;
                  END IF;

                      -- Fin Bug 25119  --ECP -- 28/02/2013
                  -- Bug 21850 - RSC - 03/04/2012
                  IF num_err <> 0
                  THEN
                     ROLLBACK;
                     -- CONF-274-25/11/2016-JLTS- Ini
                     p_borrar_anususpensionseg (v_pol.sseguro);
                     -- CONF-274-25/11/2016-JLTS- Fin
                     pindice_e := pindice_e + 1;
                     ltexto := f_axis_literales (num_err, pcidioma);
                     v_num_err_lin :=
                        f_proceslin (lsproces, ltexto, v_pol.sseguro,
                                     nprolin);
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta',
                                  233,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma
                                  || 'num_err = '
                                  || num_err,
                                  ltexto
                                 );
                  END IF;
               -- Fin Bug 21850
               END IF;
            END LOOP;

            -- FI bug 19276 jbn reemplazos
            IF num_err = 0
            THEN
               IF pcommit IS NULL
               THEN
                  COMMIT;
               END IF;

               --Si todo ha ido bien generamos los documentos de la p¿liza;
               IF lgesdoc = 'SI'
               THEN
                  lsentencia :=
                     'begin :num_err := pac_gestimpdocu.f_genera_formulario(''ALCTR118'', :v_pol.sseguro, :lnmovimi); end;';

                  EXECUTE IMMEDIATE lsentencia
                              USING OUT    num_err,
                                    IN     v_pol.sseguro,
                                    IN     lnmovimi;

                  IF num_err = -1
                  THEN
                     ROLLBACK;
                     -- CONF-274-25/11/2016-JLTS- Ini
                     p_borrar_anususpensionseg (v_pol.sseguro);
                     -- CONF-274-25/11/2016-JLTS- Fin
                     ltexto := f_axis_literales (112551, pcidioma);
                     v_num_err_lin :=
                        f_proceslin (lsproces, ltexto, v_pol.sseguro,
                                     nprolin);
                     COMMIT;
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta',
                                  24,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  ltexto
                                 );
                  ELSE
                     COMMIT;
                  END IF;
               END IF;
            END IF;

            -- BUG23853:DRA:29/10/2012:Inici
            -- Si tiene prima m¿nima, miramos si hay que crear un recibo con esta
            IF num_err = 0
            THEN
               IF NVL (f_parproductos_v (v_pol.sproduc, 'PRIMA_MINIMA'), 0) =
                                                                            1
               THEN
                  -- Bug 23853 - APD - 07/01/2012 - el valor de prima minima se obtiene de la
                  -- respuesta a la pregunta 4821
                  --v_iprimin := NVL(f_parproductos_v(v_pol.sproduc, 'VALOR_PRIMA_MINIMA'), 0);
                  num_err :=
                     pac_preguntas.f_get_pregunpolseg (v_pol.sseguro,
                                                       4821,
                                                       'SEG',
                                                       v_iprimin
                                                      );

                  -- fin Bug 23853 - APD - 07/01/2012
                  SELECT NVL (SUM (iprianu / v_pol.cforpag), 0)
                    INTO v_sumiprianu
                    FROM garanseg
                   WHERE sseguro = v_pol.sseguro AND nmovimi = lnmovimi;

                  IF NVL (v_sumiprianu, 0) < v_iprimin
                  THEN
                     v_imprec := v_iprimin - NVL (v_sumiprianu, 0);
                     num_err :=
                        pac_gestion_rec.f_genrec_primin_col (v_pol.sseguro,
                                                             lnmovimi,
                                                             lctiprec,
                                                             f_sysdate,
                                                             lfefecto,
                                                             lfvencim,
                                                             v_imprec,
                                                             v_nrecprimin,
                                                             'R',
                                                             lsproces,
                                                             'SEG'
                                                            );
                  END IF;
               END IF;

               IF num_err <> 0
               THEN
                  ROLLBACK;
                  -- CONF-274-25/11/2016-JLTS- Ini
                  p_borrar_anususpensionseg (v_pol.sseguro);
                  -- CONF-274-25/11/2016-JLTS- Fin
                  pindice_e := pindice_e + 1;
                  ltexto := f_axis_literales (num_err, pcidioma);
                  v_num_err_lin :=
                       f_proceslin (lsproces, ltexto, v_pol.sseguro, nprolin);
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta',
                               26,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma
                               || 'num_err = '
                               || num_err,
                               f_axis_literales (lmensaje, pcidioma)
                              );
               END IF;
            END IF;

            -- BUG23853:DRA:29/10/2012:Fi

            -- Bug 25542 - APD - 16/01/2013
            -- Se actualiza la antiguedad de las personas de la poliza
            IF num_err = 0
            THEN
               num_err :=
                        pac_persona.f_antiguedad_personas_pol (v_pol.sseguro);

               IF num_err <> 0
               THEN
                  ROLLBACK;
                  -- CONF-274-25/11/2016-JLTS- Ini
                  p_borrar_anususpensionseg (v_pol.sseguro);
                  -- CONF-274-25/11/2016-JLTS- Fin
                  pindice_e := pindice_e + 1;
                  ltexto := f_axis_literales (num_err, pcidioma);
                  v_num_err_lin :=
                       f_proceslin (lsproces, ltexto, v_pol.sseguro, nprolin);
                  p_tab_error (f_sysdate,
                               f_user,
                               'p_emitir_propuesta',
                               27,
                                  'pcempres = '
                               || pcempres
                               || ' pnpoliza = '
                               || pnpoliza
                               || ' pncertif = '
                               || pncertif
                               || ' pcramo = '
                               || pcramo
                               || ' pcmodali = '
                               || pcmodali
                               || ' pctipseg = '
                               || pctipseg
                               || ' pccolect = '
                               || pccolect
                               || ' pcactivi = '
                               || pcactivi
                               || ' pmoneda = '
                               || pmoneda
                               || 'pcidioma = '
                               || pcidioma
                               || 'num_err = '
                               || num_err,
                               f_axis_literales (lmensaje, pcidioma)
                              );
               END IF;
            END IF;

            -- Fin Bug 25542 - APD - 16/01/2013
            IF num_err = 0
            THEN
               --si es colectivo administrado no viene por aqui
               IF     NVL (pac_parametros.f_parempresa_n (pcempres,
                                                          'ENVIO_SRI'
                                                         ),
                           0
                          ) = 1
                  AND num_err = 0
                  AND (   NVL (f_parproductos_v (v_pol.sproduc,
                                                 'ADMITE_CERTIFICADOS'
                                                ),
                               0
                              ) = 0
                       OR (    NVL (f_parproductos_v (v_pol.sproduc,
                                                      'ADMITE_CERTIFICADOS'
                                                     ),
                                    0
                                   ) = 1
                           AND pac_seguros.f_es_col_admin (v_pol.sseguro,
                                                           'SEG'
                                                          ) <> 1
                          )
                      )
               THEN
                  num_err :=
                     pac_sri.p_envio_sri (pcempres,
                                          v_pol.sseguro,
                                          lnmovimi,
                                          1
                                         );

                  --Si ha dado error
                  IF num_err <> 0
                  THEN
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta',
                                  29,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  num_err
                                 );
                     --la emisi¿n continua normalmente
                     num_err := 0;
                  END IF;
               END IF;
            END IF;

            --Si todo ha ido bien, incluso la documentaci¿n enviamos a SAP
            --Bug.: 20923 - 14/01/2012 - ICV
            IF num_err = 0
            THEN
               IF     NVL (pac_parametros.f_parempresa_n (pcempres,
                                                          'GESTIONA_COBPAG'
                                                         ),
                           0
                          ) = 1
                  AND num_err = 0
               THEN
                  num_err :=
                     pac_ctrl_env_recibos.f_proc_recpag_mov (pcempres,
                                                             v_pol.sseguro,
                                                             lnmovimi,
                                                             4,
                                                             lsproces
                                                            );

                  --Si ha dado error
                  IF num_err <> 0
                  THEN
                     --ROLLBACK;
                     IF pcommit IS NULL
                     THEN
                        COMMIT;         --Grabamos los datos de la interficie
                     END IF;

                     /*pindice_e := pindice_e + 1;
                     ltexto := f_axis_literales(num_err, pcidioma);
                     v_num_err_lin := f_proceslin(lsproces, ltexto, v_pol.sseguro, nprolin);*/
                     --De momento no se marca como error porque puede haberse enviado alguno de los recibos
                     --Al marcarla como error se har¿ rollback en la capa md y se perdera el recibo enviado.
                     p_tab_error (f_sysdate,
                                  f_user,
                                  'p_emitir_propuesta',
                                  28,
                                     'pcempres = '
                                  || pcempres
                                  || ' pnpoliza = '
                                  || pnpoliza
                                  || ' pncertif = '
                                  || pncertif
                                  || ' pcramo = '
                                  || pcramo
                                  || ' pcmodali = '
                                  || pcmodali
                                  || ' pctipseg = '
                                  || pctipseg
                                  || ' pccolect = '
                                  || pccolect
                                  || ' pcactivi = '
                                  || pcactivi
                                  || ' pmoneda = '
                                  || pmoneda
                                  || 'pcidioma = '
                                  || pcidioma,
                                  num_err
                                 );
                  ELSE
                     IF pcommit IS NULL
                     THEN
                        COMMIT;
                     END IF;
                  END IF;
               END IF;
            END IF;

            -- BUG 25720 - FAL - 02/09/2013
            IF num_err = 0
            THEN
               IF NVL (pac_parametros.f_parempresa_n (pcempres,
                                                      'MAIL_AVIS_NUMPOL'
                                                     ),
                       0
                      ) = 1
               THEN
                  npoldispo :=
                     pac_propio.f_get_numpol_dispo (pcempres,
                                                    '02',
                                                    v_pol.cramo
                                                   );

                  IF npoldispo <
                        pac_parametros.f_parproducto_n (v_pol.sproduc,
                                                        'AVISO_MIN_POL_DISPO'
                                                       )
                  THEN
                     IF v_pol.cramo = 106
                     THEN
                        num_err :=
                           pac_correo.f_mail (80,
                                              v_pol.sseguro,
                                              NULL,
                                              3,
                                              NULL,
                                              v_mail,
                                              v_asunto,
                                              v_from,
                                              v_to,
                                              v_to2,
                                              v_error,
                                              NULL,
                                              NULL,
                                              NULL,
                                              NULL,
                                              NULL,
                                              v_pol.cramo
                                             );
                     ELSIF v_pol.cramo = 107
                     THEN
                        num_err :=
                           pac_correo.f_mail (81,
                                              v_pol.sseguro,
                                              NULL,
                                              3,
                                              NULL,
                                              v_mail,
                                              v_asunto,
                                              v_from,
                                              v_to,
                                              v_to2,
                                              v_error,
                                              NULL,
                                              NULL,
                                              NULL,
                                              NULL,
                                              NULL,
                                              v_pol.cramo
                                             );
                     END IF;
                  END IF;
               END IF;
            END IF;
         -- FI BUG 25720 - FAL - 02/09/2013
         END IF;                                        --End if todo correcto

         IF NVL
               (pac_parametros.f_parempresa_n
                                           (pac_md_common.f_get_cxtempresa (),
                                            'MAIL_CAMBIOS_ESTADO'
                                           ),
                0
               ) = 1
         THEN
            IF NVL (pac_parametros.f_parproducto_n (v_pol.sproduc,
                                                    'MAIL_SITUACION_POL'
                                                   ),
                    0
                   ) = 1
            THEN
               IF v_pol.csituac = 0 AND v_pol.creteni = 0
               THEN
                  num_err :=
                     pac_correo.f_destinatario (pscorreo      => 315,
                                                psseguro      => v_pol.sseguro,
                                                p_to          => p_to,
                                                p_to2         => p_to2,
                                                pcmotmov      => NULL
                                               );
                  num_err :=
                     pac_correo.f_origen (pscorreo      => 315,
                                          p_from        => p_from,
                                          paviso        => NULL
                                         );
                  num_err :=
                     pac_correo.f_asunto (pscorreo      => 315,
                                          pcidioma      => 8,
                                          psubject      => psubject,
                                          psseguro      => v_pol.sseguro,
                                          pcmotmov      => NULL,
                                          ptasunto      => NULL
                                         );
                  num_err :=
                     pac_correo.f_cuerpo (pscorreo      => 315,
                                          pcidioma      => 8,
                                          ptexto        => ptexto,
                                          psseguro      => v_pol.sseguro,
                                          pnriesgo      => 1,
                                          pnsinies      => NULL,
                                          pcmotmov      => NULL,
                                          ptcuerpo      => NULL,
                                          pcramo        => 801
                                         );
                  num_err :=
                     pac_md_informes.f_enviar_mail (piddoc            => NULL,
                                                    pmailgrc          => p_to,
                                                    prutafichero      => NULL,
                                                    pfichero          => NULL,
                                                    psubject          => psubject,
                                                    pcuerpo           => ptexto,
                                                    pmailcc           => NULL,
                                                    pmailcco          => NULL,
                                                    pdirectorio       => NULL,
                                                    pfrom             => p_from,
                                                    pdirectorio2      => NULL,
                                                    pfichero2         => NULL
                                                   );
               END IF;
            END IF;
         END IF;
      -- INI -IAXIS-2099 -19/02/2020
        DECLARE
          mensajes t_iax_mensajes;
          v_sperson per_personas.sperson%TYPE;
          vnumerr  number := 0;
        BEGIN
					BEGIN
					  select t.sperson
              INTO v_sperson
              from tomadores t
             where t.sseguro = v_pol.sseguro
               and exists (select 1
                             from per_personas p
                            where p.sperson = t.sperson
                              and p.ctipper = 2) -- Persona Jurídica unicamente
               and rownum = 1;
          EXCEPTION
						WHEN NO_DATA_FOUND THEN
							v_sperson := null;
          END;
          IF v_sperson IS NOT NULL THEN
            num_err := PAC_FINANCIERA.f_grab_agenda_no_inf_fin(v_sperson,mensajes);
            IF num_err != 0 THEN
							pindice_e := pindice_e + 1;
              vnumerr := 9903168;
              pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
              lmensaje := f_axis_literales(vnumerr, 8);
              ROLLBACK;
              p_tab_error (f_sysdate,
                           f_user,
                           'p_emitir_propuesta',
                           30,
                           'pcempres = '
                           || pcempres
                           || ' pnpoliza = '
                           || pnpoliza
                           || ' pncertif = '
                           || pncertif
                           || ' pcramo = '
                           || pcramo
                           || ' pcmodali = '
                           || pcmodali
                           || ' pctipseg = '
                           || pctipseg
                           || ' pccolect = '
                           || pccolect
                           || ' pcactivi = '
                           || pcactivi
                           || ' pmoneda = '
                           || pmoneda
                           || 'pcidioma = '
                           || pcidioma,
                           lmensaje
                           );
            END IF;
          END IF;
        END;
        -- FIN -IAXIS-2099 -19/02/2020
      END LOOP;                                               -- Cursor Poliza

      CLOSE c_pol;

      IF psproces IS NULL
      THEN
         IF f_procesfin (lsproces, num_err) = 0
         THEN
            NULL;
         END IF;
      END IF;
   EXCEPTION
      WHEN OTHERS
      THEN
         ROLLBACK;
         -- CONF-274-25/11/2016-JLTS- Ini
         p_borrar_anususpensionseg (v_pol.sseguro);

         -- CONF-274-25/11/2016-JLTS- Fin
         IF c_pol%ISOPEN
         THEN
            CLOSE c_pol;
         END IF;

         pindice_e := pindice_e + 1;
         p_tab_error (f_sysdate,
                      f_user,
                      'p_emitir_propuesta',
                      99,
                         'pcempres = '
                      || pcempres
                      || ' pnpoliza = '
                      || pnpoliza
                      || ' pncertif = '
                      || pncertif
                      || ' pcramo = '
                      || pcramo
                      || ' pcmodali = '
                      || pcmodali
                      || ' pctipseg = '
                      || pctipseg
                      || ' pccolect = '
                      || pccolect
                      || ' pcactivi = '
                      || pcactivi
                      || ' pmoneda = '
                      || pmoneda
                      || 'pcidioma = '
                      || pcidioma,
                      SQLERRM
                     );
   END;
--
EXCEPTION
   WHEN errores
   THEN
      p_tab_error (f_sysdate,
                   f_user,
                   'p_emitir_propuesta',
                   0,
                      'pcempres = '
                   || pcempres
                   || ' pnpoliza = '
                   || pnpoliza
                   || ' pncertif = '
                   || pncertif
                   || ' pcramo = '
                   || pcramo
                   || ' pcmodali = '
                   || pcmodali
                   || ' pctipseg = '
                   || pctipseg
                   || ' pccolect = '
                   || pccolect
                   || ' pcactivi = '
                   || pcactivi
                   || ' pmoneda = '
                   || pmoneda
                   || 'pcidioma = '
                   || pcidioma,
                   SQLERRM
                  );
   WHEN OTHERS
   THEN
      p_tab_error (f_sysdate,
                   f_user,
                   'p_emitir_propuesta',
                   0,
                      'pcempres = '
                   || pcempres
                   || ' pnpoliza = '
                   || pnpoliza
                   || ' pncertif = '
                   || pncertif
                   || ' pcramo = '
                   || pcramo
                   || ' pcmodali = '
                   || pcmodali
                   || ' pctipseg = '
                   || pctipseg
                   || ' pccolect = '
                   || pccolect
                   || ' pcactivi = '
                   || pcactivi
                   || ' pmoneda = '
                   || pmoneda
                   || 'pcidioma = '
                   || pcidioma,
                   SQLERRM
                  );
END p_emitir_propuesta;
/
