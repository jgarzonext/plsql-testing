--------------------------------------------------------
--  DDL for Package Body PAC_DESCARGAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_DESCARGAS" IS
/******************************************************************************
   NOMBRE:       PAC_INT_ONLINE

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        23/08/2011   JMC             1. Creaci�n del package.
******************************************************************************/

   /***************************************************************************
      FUNCTION f_set_peticion
      Funci�n que inicia el proceso de descarga.
         param in  pccoddes:     C�digo de descarga.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_set_peticion(
      pccoddes IN NUMBER,
      psseqdwl IN NUMBER DEFAULT NULL,
      pnnumfil IN NUMBER DEFAULT NULL,
      psseqout OUT NUMBER)
      RETURN NUMBER IS
      v_sseqdwl      NUMBER;
      vtraza         NUMBER := 0;
      vsinterf       NUMBER;
      verror         NUMBER;
      vsmapead       NUMBER;
      vlinea_ida     VARCHAR2(200);
      vcinterf       int_servicios.cinterf%TYPE;
      vmax           NUMBER;
      vcresul        int_resultado.cresultado%TYPE;
      vnerror        int_resultado.nerror%TYPE;
   BEGIN
      --Obtenemos n�mero de secuencia de descarga.
      SELECT sseqdwl.NEXTVAL
        INTO v_sseqdwl
        FROM DUAL;

      psseqout := v_sseqdwl;
      --Obtenemos el servicio para ejecutar la descarga.
      vtraza := 1;

      SELECT cinterf
        INTO vcinterf
        FROM dwl_coddescarga
       WHERE ccoddes = pccoddes;

      --Inciamos la creaci�n del XML
      vtraza := 2;
      pac_int_online.p_inicializar_sinterf;
      vsinterf := pac_int_online.f_obtener_sinterf;

      --Grabamos la descarga en estado inicial.
      INSERT INTO dwl_descargas
                  (sseqdwl, ccoddes, fdescar, cestdes, sinterf)
           VALUES (v_sseqdwl, pccoddes, f_sysdate, 1, vsinterf);

      --En caso fichero informado, grabamos detalle descarga
      IF psseqdwl IS NOT NULL THEN
         FOR x IN (SELECT   treforg, trefdes
                       FROM dwl_detdescargas
                      WHERE sseqdwl = psseqdwl
                        AND(nnumfil = pnnumfil
                            OR pnnumfil IS NULL)
                        AND cestado = 0
                   ORDER BY nnumfil) LOOP
            SELECT NVL(MAX(nnumfil), 0) + 1
              INTO vmax
              FROM dwl_detdescargas
             WHERE sseqdwl = v_sseqdwl;

            INSERT INTO dwl_detdescargas
                        (sseqdwl, nnumfil, treforg, trefdes)
                 VALUES (v_sseqdwl, vmax, x.treforg, x.trefdes);
         END LOOP;
--         INSERT INTO dwl_detdescargas
--                     (sseqdwl, nnumfil, treforg, trefdes)
--            SELECT   v_sseqdwl, vmax, treforg, trefdes
--                FROM dwl_detdescargas
--               WHERE sseqdwl = psseqdwl
--                 AND(nnumfil = pnnumfil
--                     OR pnnumfil IS NULL)
--                 AND cestado = 0
--            ORDER BY nnumfil;
      END IF;

      COMMIT;
      vlinea_ida := v_sseqdwl;

      IF psseqdwl IS NOT NULL THEN
         vlinea_ida := vlinea_ida || '|' || psseqdwl;
      END IF;

      verror := pac_int_online.f_int(pac_md_common.f_get_cxtempresa, vsinterf, vcinterf,
                                     vlinea_ida);
      COMMIT;

      IF verror <> 0 THEN
         p_tab_error(f_sysdate, f_user, 'PAC_DESCARGAS.f_set_peticion', vtraza,
                     'Error al ejecutar interficie',
                     'Error:' || verror || ', par�metros: pccoddes=' || pccoddes
                     || ', vsinterf=' || vsinterf || ', vsmapead=' || vsmapead);
         RETURN 5;
      END IF;

      BEGIN
         SELECT cresultado, nerror
           INTO vcresul, vnerror
           FROM int_resultado
          WHERE sinterf = vsinterf;
      EXCEPTION
         WHEN OTHERS THEN
            vcresul := NULL;
            vnerror := NULL;
      END;

      IF vcresul = '0'
         AND vnerror = '0' THEN
         UPDATE dwl_descargas
            SET cestdes = 0
          WHERE sseqdwl = v_sseqdwl;

         COMMIT;
      ELSE
         UPDATE dwl_descargas
            SET cestdes = 99
          WHERE sseqdwl = v_sseqdwl;

         COMMIT;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         ROLLBACK;
         p_tab_error(f_sysdate, f_user, 'PAC_DESCARGAS.f_set_peticion', vtraza,
                     'WHEN OTHERS par�metros: pccoddes=' || pccoddes || ', vsinterf='
                     || vsinterf,
                     SQLERRM);
         RETURN 9;
   END f_set_peticion;

   /***************************************************************************
      FUNCTION f_es_descarg
      Funci�n que inicia si un fichero se encuentra en situaci�n de ser
      descargado.
         param in  ptreforg:     Nombre del fichero.
         return:                0-No, 1-Si
   ***************************************************************************/
   FUNCTION f_es_descarg(ptreforg IN VARCHAR2)
      RETURN NUMBER IS
      v_return       NUMBER;
   BEGIN
      SELECT DECODE(COUNT(*), 0, 1, 0)
        INTO v_return
        FROM dwl_detdescargas dd, dwl_descargas d, dwl_coddescarga c
       WHERE dd.treforg = ptreforg
         AND dd.sseqdwl = d.sseqdwl
         AND c.ccoddes = d.ccoddes
         AND c.ctippet = 1
         AND dd.cestado = 0;

      RETURN v_return;
   END f_es_descarg;

   /***************************************************************************
      FUNCTION f_set_peticion_from_lst
      Funci�n que realiza la descarga de un fichero que se encuentra en la peticion
      de listado de fiheros y si se descarga correctamente la confima.
      (Esta funci�n de llamara desde la pantalla).
         param in  psseqdwl:     Secuencia de descarga (listado).
         param in  pnnumfil:     N�mero fichero de la descarga (listado).
         param out  psseqout:    Secuencia de la descarga del fichero.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_set_peticion_from_lst(
      psseqdwl IN NUMBER DEFAULT NULL,
      pnnumfil IN NUMBER DEFAULT NULL,
      psseqout OUT NUMBER)
      RETURN NUMBER IS
      vtraza         NUMBER := 1;
      vccompani      companias.ccompani%TYPE;
      vccoddes       dwl_coddescarga.ccoddes%TYPE;
      vctipfch       dwl_coddescarga.ctipfch%TYPE;
      num_err        NUMBER;
   BEGIN
      --obtenemos la compa�ia de la secuencia de descarga.
      SELECT ccompani, ctipfch
        INTO vccompani, vctipfch
        FROM dwl_descargas d, dwl_coddescarga c
       WHERE c.ccoddes = d.ccoddes
         AND d.sseqdwl = psseqdwl;

      vtraza := 2;

      --Obtenemos el c�digo de descarga correspondiente al tipo pertici�n Descarga
      --de la compa�ia.
      SELECT ccoddes
        INTO vccoddes
        FROM dwl_coddescarga
       WHERE ccompani = vccompani
         AND ctipfch = vctipfch
         AND ctippet = 1;   --Descarga

      vtraza := 3;
      num_err := f_set_peticion(vccoddes, psseqdwl, pnnumfil, psseqout);

      IF num_err <> 0 THEN
         p_tab_error(f_sysdate, f_user, 'PAC_DESCARGAS.f_set_peticion_from_lst', vtraza,
                     'Error al ejecutar f_set_peticion',
                     'Error:' || num_err || ', par�metros: pccoddes=' || vccoddes
                     || ', psseqdwl=' || psseqdwl || ', pnnumfil=' || pnnumfil);
         RETURN 5;
      END IF;

      vtraza := 4;

      --Obtenemos el c�digo de descarga correspondiente al tipo pertici�n Confirmaci�n
      --de la compa�ia.
      SELECT ccoddes
        INTO vccoddes
        FROM dwl_coddescarga
       WHERE ccompani = vccompani
         AND ctipfch = vctipfch
         AND ctippet = 2;   --Confirmaci�n

      vtraza := 5;
      num_err := f_set_peticion(vccoddes, psseqout, NULL, psseqout);

      IF num_err <> 0 THEN
         p_tab_error(f_sysdate, f_user, 'PAC_DESCARGAS.f_set_peticion_from_lst', vtraza,
                     'Error al ejecutar f_set_peticion',
                     'Error:' || num_err || ', par�metros: pccoddes=' || vccoddes
                     || ', psseqdwl=' || psseqdwl || ', pnnumfil=' || pnnumfil);
         RETURN 5;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_DESCARGAS.f_set_peticion_from_lst', vtraza,
                     'WHEN OTHERS par�metros: psseqdwl=' || psseqdwl || ', pnnumfil='
                     || pnnumfil,
                     SQLERRM);
         RETURN 9;
   END f_set_peticion_from_lst;

   /***************************************************************************
      FUNCTION F_DESCARGA_FICHEROS
      Funci�n que mirara en los hosts de las compa�ias si hay ficheros de
      p�lizas o recibos (dependiendo del par�metro) por descargar . En caso de
      haberlos y que los distintos procesos se realicen correctamente, los
      descargara, los confirmara y los procesara para cargarlos en iAXIS.
      param in  pccompani:     C�digo compa�ia.
      param in  pctipfch:      Tipo fichero 1-p�liza 2-Recibo.
      return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_descarga_ficheros(pccompani IN NUMBER, pctipfch IN NUMBER, psproces IN NUMBER)
      RETURN NUMBER IS
      vtraza         NUMBER := 1;
      vsproces       procesoscab.sproces%TYPE;
      vnumerr        NUMBER;
      fcont          BOOLEAN := TRUE;
      vsseqdwl       dwl_descargas.sseqdwl%TYPE;
      vdummy         NUMBER;
      vccoddes       dwl_coddescarga.ccoddes%TYPE;
   BEGIN
      IF psproces IS NOT NULL THEN
         vsproces := psproces;
      ELSE
         vnumerr := f_procesini(f_user, pac_md_common.f_get_cxtempresa(), 'DESCARGA_FICHERO',
                                'Descarga y carga de ficheros', vsproces);
      END IF;

      -- Por cada una de las compa�ias y tipo de fichero
      FOR x IN (SELECT DISTINCT d.ccompani, d.ctipfch
                           FROM dwl_coddescarga d, companias c
                          WHERE d.ccompani = c.ccompani
                            AND(d.ccompani = pccompani
                                OR pccompani IS NULL)
                            AND(d.ctipfch = pctipfch
                                OR pctipfch IS NULL)
                       ORDER BY d.ccompani, d.ctipfch) LOOP
         fcont := TRUE;

         --Obtenemos c�digo de descarga, tipo petici�n "3-Listado"
         BEGIN
            SELECT ccoddes
              INTO vccoddes
              FROM dwl_coddescarga
             WHERE ccompani = x.ccompani
               AND ctipfch = x.ctipfch
               AND ctippet = 3;
         EXCEPTION
            WHEN NO_DATA_FOUND THEN
               vnumerr :=
                  f_proceslin
                         (vsproces,
                          'Compa�ia sin c�digo de descarga-tipo petici�n 3 definido. Cia:'
                          || x.ccompani || ',tipo fichero:' || x.ctipfch,
                          0, vdummy);
               fcont := FALSE;
            WHEN OTHERS THEN
               vnumerr :=
                  f_proceslin
                     (vsproces,
                      'Error incontrolado al obtener c�digo de descarga-tipo petici�n 3 definido. Cia:'
                      || x.ccompani || ',tipo fichero:' || x.ctipfch,
                      0, vdummy);
               p_tab_error(f_sysdate, f_user, 'PAC_DESCARGAS.f_descarga_ficheros', vtraza,
                           'WHEN OTHERS', SQLERRM);
               fcont := FALSE;
         END;

         IF fcont THEN
            --Llamamos al servicio para obtener la lista de ficheros
            --para descargar
            vnumerr := f_set_peticion(vccoddes, NULL, NULL, vsseqdwl);

            IF vnumerr <> 0 THEN
               fcont := FALSE;
               vnumerr := f_proceslin(vsproces,
                                      'Error al obtener el listado de ficheros. Cia:'
                                      || x.ccompani || ',tipo fichero:' || x.ctipfch,
                                      0, vdummy);
            END IF;

            IF fcont THEN
               vtraza := 2;

               --Obtenemos c�digo de descarga, tipo petici�n "1-Descarga"
               BEGIN
                  SELECT ccoddes
                    INTO vccoddes
                    FROM dwl_coddescarga
                   WHERE ccompani = x.ccompani
                     AND ctipfch = x.ctipfch
                     AND ctippet = 1;
               EXCEPTION
                  WHEN NO_DATA_FOUND THEN
                     vnumerr :=
                        f_proceslin
                           (vsproces,
                            'Compa�ia sin c�digo de descarga-tipo petici�n 1 definido. Cia:'
                            || x.ccompani || ',tipo fichero:' || x.ctipfch,
                            0, vdummy);
                     fcont := FALSE;
                  WHEN OTHERS THEN
                     vnumerr :=
                        f_proceslin
                           (vsproces,
                            'Error incontrolado al obtener c�digo de descarga-tipo petici�n 1. Cia:'
                            || x.ccompani || ',tipo fichero:' || x.ctipfch,
                            0, vdummy);
                     p_tab_error(f_sysdate, f_user, 'PAC_DESCARGAS.f_descarga_ficheros',
                                 vtraza, 'WHEN OTHERS', SQLERRM);
                     fcont := FALSE;
               END;

               IF fcont THEN
                  --Basandonos en la descarga anterior tipo listado de ficheros, procedemos
                  --a la descarga de los ficheros.
                  --Llamamos al servicio para descargar los ficheros
                  vnumerr := f_set_peticion(vccoddes, vsseqdwl, NULL, vsseqdwl);

                  IF vnumerr <> 0 THEN
                     fcont := FALSE;
                     vnumerr := f_proceslin(vsproces,
                                            'Error al descargar los ficheros. Cia:'
                                            || x.ccompani || ',tipo fichero.' || x.ctipfch,
                                            0, vdummy);
                  END IF;

                  IF fcont THEN
                     vtraza := 3;

                     --Obtenemos c�digo de descarga, tipo petici�n "2-Confirmaci�n"
                     BEGIN
                        SELECT ccoddes
                          INTO vccoddes
                          FROM dwl_coddescarga
                         WHERE ccompani = x.ccompani
                           AND ctipfch = x.ctipfch
                           AND ctippet = 2;
                     EXCEPTION
                        WHEN NO_DATA_FOUND THEN
                           vnumerr :=
                              f_proceslin
                                 (vsproces,
                                  'Compa�ia sin c�digo de descarga-tipo petici�n 2 definido. Cia:'
                                  || x.ccompani || ', tipo fichero:' || x.ctipfch,
                                  0, vdummy);
                           fcont := FALSE;
                        WHEN OTHERS THEN
                           vnumerr :=
                              f_proceslin
                                 (vsproces,
                                  'Error incontrolado al obtener c�digo de descarga-tipo petici�n 2. Cia:'
                                  || x.ccompani || ', tipo fichero:' || x.ctipfch,
                                  0, vdummy);
                           p_tab_error(f_sysdate, f_user, 'PAC_DESCARGAS.f_descarga_ficheros',
                                       vtraza, 'WHEN OTHERS', SQLERRM);
                           fcont := FALSE;
                     END;

                     IF fcont THEN
                              --Confirmamos los fiheros descargados en la descarga anterior, de esta
                              --manera ya no apareceran cuando se solicite un listado de ficheros
                        --Llamamos al servicio para confirmar los ficheros
                        vnumerr := f_set_peticion(vccoddes, vsseqdwl, NULL, vsseqdwl);

                        IF vnumerr <> 0 THEN
                           fcont := FALSE;
                           vnumerr := f_proceslin(vsproces,
                                                  'Error al confirmar los ficheros. Cia;'
                                                  || x.ccompani || ', tipo fichero:'
                                                  || x.ctipfch,
                                                  0, vdummy);
                        END IF;
                     END IF;
                  END IF;
               END IF;
            END IF;
         END IF;
      END LOOP;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_DESCARGAS.f_descarga_ficheros', vtraza,
                     'WHEN OTHERS', SQLERRM);
         vnumerr := f_procesfin(vsproces, 99);
         RETURN 99;
   END f_descarga_ficheros;

      /***************************************************************************
      FUNCTION F_SET_PETICION_LST_FILES
      Funci�n que realizara la petici�n de listado de ficheros para una compa�ia
      y tipo de listado. Esta funci�n se lanzara desde la pantalla.
      param in  pccompani:     C�digo compa�ia.
      param in  pctipfch:      Tipo fichero 1-p�liza 2-Recibo.
      param in  psseqout       N�mero de secuencia de descarga.
      return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_set_peticion_lst_files(
      pccompani IN NUMBER,
      pctipfch IN NUMBER,
      psseqout OUT NUMBER)
      RETURN NUMBER IS
      vccoddes       dwl_coddescarga.ccoddes%TYPE;
      vtraza         NUMBER := 1;
      num_err        NUMBER;
   BEGIN
      --Obtenemos el c�digo de descarga de listado de ficheros para
      --la compa�ia y tipo de fichero pasados por par�metros.
      SELECT ccoddes
        INTO vccoddes
        FROM dwl_coddescarga
       WHERE ccompani = pccompani
         AND ctipfch = pctipfch
         AND ctippet = 3;   --Listado

      vtraza := 3;
      num_err := f_set_peticion(vccoddes, NULL, NULL, psseqout);

      IF num_err <> 0 THEN
         p_tab_error(f_sysdate, f_user, 'PAC_DESCARGAS.f_set_peticion_lst_files', vtraza,
                     'Error al ejecutar f_set_peticion',
                     'Error:' || num_err || ', par�metros: pccompani=' || pccompani
                     || ', pctipfch=' || pctipfch);
         RETURN 5;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_DESCARGAS.f_set_peticion_lst_files', vtraza,
                     'WHEN OTHERS par�metros: pccompani=' || pccompani || ', pctipfch='
                     || pctipfch,
                     SQLERRM);
         RETURN 9;
   END f_set_peticion_lst_files;
END pac_descargas;

/

  GRANT EXECUTE ON "AXIS"."PAC_DESCARGAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_DESCARGAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_DESCARGAS" TO "PROGRAMADORESCSI";
