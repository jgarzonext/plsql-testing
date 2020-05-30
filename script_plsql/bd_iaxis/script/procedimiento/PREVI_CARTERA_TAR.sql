--------------------------------------------------------
--  DDL for Procedure PREVI_CARTERA_TAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."PREVI_CARTERA_TAR" (
   pcempres IN NUMBER,
   pmes IN NUMBER,
   panyo IN NUMBER,
   pnpoliza IN NUMBER,
   pncertif IN NUMBER,
   pcramo IN NUMBER,
   pcmodali IN NUMBER,
   pctipseg IN NUMBER,
   pccolect IN NUMBER,
   pcactivi IN NUMBER,
   pcidioma IN NUMBER,
   psproces IN NUMBER,
   indice OUT NUMBER,
   indice_error OUT NUMBER,
   prenuevan IN NUMBER DEFAULT 0) IS
      /******************************************************************************
      NOMBRE:       PREVI_CARTERA_TAR
      PROPÓSITO:    Realizar el previo de cartera.
      REVISIONES:

      Ver        Fecha        Autor             Descripción
      ---------  ----------  ---------------  ------------------------------------
       1.0       -            -               1. Creación de función
      8.0        14/05/2009    APD          10. Bug 10053: Se modifica la funcion f_maxapor_pp por pac_ppa_planes.ff_importe_por_aportar_persona
   ******************************************************************************/
   parms_transitorios pac_parm_tarifas.parms_transitorios_tabtyb;
   num_lin        NUMBER;
   lfcartera      VARCHAR2(10);
   lfcartera2     VARCHAR2(10);
   pnrecibo       recibos.nrecibo%TYPE;
   recibosi       NUMBER;
   prima          NUMBER;
   pcsubpro       NUMBER;
   num_err        NUMBER := 0;
   prestacion     NUMBER;
   recpendi       NUMBER;
   texto          VARCHAR2(400);
   algun_error    NUMBER := 0;
   fcarpronueva   DATE;
   fcarantnueva   DATE;
   fcaranunueva   DATE;
   nanualinueva   NUMBER;
   nfraccinueva   NUMBER;
   tipo           NUMBER;
   pcobjase       NUMBER;
   fec            DATE;
   pnmovimi       NUMBER;
   pfemisio       DATE;
   texto2         VARCHAR2(60);
   pcagrpro       NUMBER;
   num            NUMBER;
   piregula       NUMBER;
   v_factor       NUMBER;
   num_risc       NUMBER;
   pcmovimi       NUMBER;
   pnimport2      NUMBER;
   modcom         NUMBER;
   lbonifica      NUMBER;
   laplica_bonifica NUMBER;
   lcumple        NUMBER;
   lcactivi       NUMBER;
   lmov           NUMBER;   -- No serveix per rès, és un par. de sortida per la cartera
   lanu           NUMBER;   -- No serveix per rès, és un par. de sortida per la cartera
   lsproduc_ant   NUMBER;
   lcprimin       NUMBER;
   liprimin       NUMBER;
   lcclapri       NUMBER;
   lcgarant_regu  NUMBER;
   lnorden        NUMBER;
   pcmoneda       NUMBER;
   pnedamar       NUMBER;
   pciedmar       NUMBER;

   TYPE t_cursor IS REF CURSOR;

   c_seguro       t_cursor;
   reg            seguros%ROWTYPE;
   v_sel          VARCHAR2(4000);
-- reg            c_seguro%ROWTYPE;
   v_mensa        VARCHAR2(100);

   CURSOR productos IS
      SELECT cramo, cmodali, ctipseg, ccolect
        FROM productos;

   CURSOR c_motextra IS
      SELECT DISTINCT (sseguro) sseguro
                 FROM extrarec
                WHERE nrecibo IS NULL
                  AND ADD_MONTHS(falta, f_parinstalacion_n('CEXTRNMES')) <= f_sysdate;

   -- RSC 06/02/2008 -----------------------------------------------------------
   /*
    Se debe tener en cuenta que para cada límite que se añada en este función como
    tratamiento para los cúmulos se deberá crear una tabla de este tipo. La razón es
    que utilizamos un hash de este tipo para ir almacenando los valores de "aportaciones
    pendientes" que se permiten según el límite que estemos tratando para cada persona.
    Ejemplo: Al tratar la primera póliza de la persona X de un producto PIAS se le permiten 200 ¬.
             Si el previo de cartera dice que generará un recibo de 200¬ como aportación
             periodica entonces esta persona X tendrá 0¬ pendientes para el resto de pólizas
             del mismo tipo. Es decir en iteraciones posteriores ya no tendrá 200¬ pendientes
             sino 0.
             Este asunto lo solucionamos con estos hash.
             Hemos de crear un TABLE de este tipo para cada tipo de límite que tratemos.

             Ahora mismo se trata de la siguiente manera:

             IF NVL(f_parproductos_v(reg.sproduc, 'APORTMAXIMAS'),0) = 1 THEN        ----> PPA
               vhpersonppa(vpersona) := vhpersonppa(vpersona) - prima;
             ELSIF NVL(f_parproductos_v(reg.sproduc, 'TIPO_LIMITE'),0) <> 0 THEN     ----> Pias
               vhpersonpias(vpersona) := vhpersonpias(vpersona) - prima;
             END IF;

             Si se añaden más se deberá modificar la condición
             NVL(f_parproductos_v(reg.sproduc, 'TIPO_LIMITE'),0) <> 0  (PIAS)
             por NVL(f_parproductos_v(reg.sproduc, 'TIPO_LIMITE'),0) = 1 y el resto
             de límites con el numero que le toque.
   */
   TYPE assoc_array_person IS TABLE OF NUMBER
      INDEX BY PLS_INTEGER;   --- Table para PIAS

   vhpersonpias   assoc_array_person;
   vhpersonppa    assoc_array_person;
   vpersona       NUMBER;
   -- BUG 9153 - 04-05-09 - RSC - Suplementos automáticos
   n_retafrac     NUMBER(1);
   v_cursor       NUMBER;
   ss             VARCHAR2(3000);
   funcion        VARCHAR2(40);
   v_filas        NUMBER;
   -- Fin Bug 9153
   vnriesgo       NUMBER;   -- Bug 10053 - APD - 08/05/2009

-----------------------------------------------------------------------------
   FUNCTION validar_regulariza(psseguro IN NUMBER)
      RETURN NUMBER IS
--Declaración de variables:
      xcpregun       NUMBER;
      xcrespue       NUMBER;
      xsregula       NUMBER;
   BEGIN
      BEGIN
         SELECT cpregun, crespue
           INTO xcpregun, xcrespue
           FROM pregunseg
          WHERE sseguro = psseguro
            AND cpregun = 80
            AND crespue = 1;
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            RETURN 1000;
         WHEN TOO_MANY_ROWS THEN
            NULL;
         WHEN OTHERS THEN
            RETURN 107649;
      END;

      BEGIN
         SELECT sregula
           INTO xsregula
           FROM regularizaciones
          WHERE sseguro = psseguro
            AND fregula IS NULL;
      EXCEPTION
         WHEN OTHERS THEN
            RETURN 107649;
      END;

      RETURN 0;
   END;
BEGIN
   -- SMF llamamos a los suplementos por cartera,llenamos las tablas de
   -- carteraaux para saber que polizas, o productos estan pasando el
   -- previo.
   ----DBMS_OUTPUT.put_line(' ALLA VA ');
   indice := 0;
   indice_error := 0;

   BEGIN
      IF (pcramo IS NOT NULL
          OR pcmodali IS NOT NULL
          OR pctipseg IS NOT NULL
          OR pccolect IS NOT NULL
          OR pnpoliza IS NOT NULL) THEN
              -- JLB - 17/10/2013 -- bloqueo de la cartera
        --  INSERT INTO carteraaux(sproces, cramo, cmodali, ctipseg, ccolect, cactivi, npoliza, ncertif,cbloqueo, fcartera )
        --                 VALUES (psproces, pcramo, pcmodali, pctipseg, pccolect, pcactivi, pnpoliza, pncertif, 0, f_sysdate);
          num_err := pac_dincartera.f_insert_carteraaux(psproces,
                             pcramo,
                            pcmodali,
                             pctipseg,
                             pccolect,
                             pcactivi,
                             pnpoliza,
                             pncertif,
                             0,
                             f_sysdate);
                   -- JLB - F - 17/10/2013 -- bloqueo de la cartera
      ELSE
         FOR c IN productos LOOP
          -- JLB - I 17/10/2013 -- bloqueo de la cartera
            --INSERT INTO carteraaux(sproces, cramo, cmodali, ctipseg, ccolect, cactivi, npoliza, ncertif, cbloqueo, fcartera)
              --           VALUES (psproces, c.cramo, c.cmodali, c.ctipseg, c.ccolect, NULL, NULL, null,  0, f_sysdate );
            num_err := pac_dincartera.f_insert_carteraaux(psproces,
                             c.cramo,
                            c.cmodali,
                             c.ctipseg,
                             c.ccolect,
                             null,
                             null,
                             null,
                             0,
                             f_sysdate);
             -- JLB - 17/10/2013 -- bloqueo de la cartera
         END LOOP;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         NULL;
   END;

   lfcartera := TO_CHAR(LAST_DAY(TO_DATE(LPAD(pmes, 2, '0') || panyo, 'mmyyyy')), 'dd/mm/yyyy');
   ----DBMS_OUTPUT.put_line('lfcartera '|| lfcartera);
   -- No controlamos el posible error de suplem_car ya que el proceso solo
   -- sirve para generar un listado informativo de las polizas que se
   -- verían modificadas por la cartera real.

   -- Bug 9153 - 08/05/2009 - RSC -  Suplementos automáticos
   -- Este suplemento ya no tiene sentido. Comentado aqui y comentado
   -- en PAC_DINCARTERA
   /*
      num_err := pac_suplem.f_suplem_car(psproces, indice_error,
                                         TO_DATE('01' || LPAD(pmes, 2, '0') || panyo,
                                                 'dd/mm/yyyy'),
                                         TO_DATE('01' || LPAD(pmes, 2, '0') || panyo,
                                                 'dd/mm/yyyy'),
                                         1);
   */
   -- Fin Bug 9153
   indice := indice_error;
   -- Construim la select dinàmicament
   lfcartera2 := TO_CHAR(LAST_DAY(TO_DATE(LPAD(pmes, 2, '0') || panyo, 'mmyyyy')) + 1,
                         'dd/mm/yyyy');
   ----DBMS_OUTPUT.put_line('lfcartera2 '|| lfcartera2);
   -- SMF: creteni = 0 and csituac =0 se cambia por
   -- ((csituac = 5) or (creteni = 0 and csituac not in (7,8,9,10)))
   -- Se añade a la select OR (csituac = 5 AND ccartera = 1)
   -- Para que pasen el previo aquellas polizas en prop.de Suplem.
   v_sel :=
      ' SELECT * FROM seguros ' || ' WHERE cempres = ' || pcempres || ' AND ((csituac = 5) or '
      || ' (creteni = 0 and csituac not in (7,8,9,10))) ' || ' AND fcarpro < to_date('''
      || lfcartera2 || ''',''dd/mm/yyyy'')' || ' AND ( fvencim >  to_date(''' || lfcartera
      || ''',''dd/mm/yyyy'')' || '       OR    (fvencim <= to_date(''' || lfcartera
      || ''',''dd/mm/yyyy'') ' || ' AND to_char(fvencim,''mmyyyy'') =''' || LPAD(pmes, 2, '0')
      || panyo || '''' || ' AND fvencim > fcarpro  '
      || ' AND nvl(f_parproductos_v(sproduc,''RECMESVENCI''),1) = 1) '
      || 'OR fvencim is null ) '
      || ' AND ( EXISTS (SELECT sseguro FROM movseguro m WHERE sseguro = seguros.sseguro '
      || ' AND nmovimi = ( SELECT MAX(nmovimi) FROM movseguro m3 '
      || ' WHERE m3.sseguro = m.sseguro ' || '  AND trunc(m3.fefecto)<= ' || ' to_date('''
      || lfcartera || ''',''dd/mm/yyyy'')' || ' AND m3.cmovseg <> 6) '
      || ' AND cmovseg <> 3 AND femisio IS NOT NULL )' || ' OR (csituac = 5 AND ccartera = 1))'
      || ' AND  f_produsu(cramo,cmodali,ctipseg,ccolect,3)=1 '
      || ' AND  nvl(f_ultima_cartera(sseguro, fcarpro), fcarpro) >= fcarpro ';

   --  '  AND NOT EXISTS ( SELECT SPRESTAPLAN FROM PRESTAPLAN ' ||
      --  'WHERE SSEGURO = SEGUROS.SSEGURO  ) ' ||
   --  ' AND ( F_Recpen_Pp ( SEGUROS.SSEGURO,1) < 2 AND SEGUROS.CAGRPRO = 11 )  ';
   IF pnpoliza IS NOT NULL THEN
      v_sel := v_sel || ' AND npoliza = ' || pnpoliza;
   END IF;

   IF pncertif IS NOT NULL THEN
      v_sel := v_sel || ' AND ncertif = ' || pncertif;
   END IF;

   IF pcramo IS NOT NULL THEN
      v_sel := v_sel || ' AND cramo = ' || pcramo;
   END IF;

   IF pcmodali IS NOT NULL THEN
      v_sel := v_sel || ' AND cmodali = ' || pcmodali;
   END IF;

   IF pctipseg IS NOT NULL THEN
      v_sel := v_sel || ' AND ctipseg = ' || pctipseg;
   END IF;

   IF pccolect IS NOT NULL THEN
      v_sel := v_sel || ' AND ccolect = ' || pccolect;
   END IF;

   -- 28/6/2005.yil. Si el parámetro esá informado sólo se hace el previo de las que renuevan
   IF prenuevan = 1 THEN   -- SÓLO LAS QUE RENUEVAN
      v_sel := v_sel || ' AND fcarpro = fcaranu';
   END IF;

--   INSERT INTO INFORMES_ERR VALUES ( v_sel ) ;
   v_sel := v_sel || ' ORDER BY NPOLIZA ';

   INSERT INTO informes_err
        VALUES (v_sel);

   lsproduc_ant := 0;

   OPEN c_seguro FOR v_sel;

   LOOP
      FETCH c_seguro
       INTO reg;

      EXIT WHEN c_seguro%NOTFOUND;

      ----DBMS_OUTPUT.put_line(' polissa '|| reg.sseguro);
      IF reg.fcarpro IS NOT NULL THEN
         indice := indice + 1;
         algun_error := 0;
         num_err := 0;
         pnmovimi := NULL;

         IF reg.sproduc <> lsproduc_ant THEN
            lsproduc_ant := reg.sproduc;
---------------------------------------------------------
-------------------------------------------------
-- Mirem si el producte contempla la prima mínima
-------------------------------------------------
-- Si s'ha de comprovar la prima mínima, cal veure si hi ha garantia
-- de regularització.
            pac_dincartera.garantia_regularitzacio(reg.cramo, reg.cmodali, reg.ctipseg,
                                                   reg.ccolect, lcprimin, liprimin, lcclapri,
                                                   lcgarant_regu, lnorden);
---------------------------------------------------------
         END IF;

         WHILE reg.fcarpro <(LAST_DAY(TO_DATE(LPAD(pmes, 2, '0') || panyo, 'mmyyyy')) + 1)
          AND algun_error = 0
          AND(reg.fcarpro < reg.fvencim
              OR reg.fvencim IS NULL) LOOP
            -- BUG 9153 - 04-05-09 - RSC - Suplementos automáticos
            n_retafrac := NULL;

            IF NVL(f_parproductos_v(reg.sproduc, 'FRACCIONARIO'), 0) = 1 THEN
               SELECT MAX(tvalpar)
                 INTO funcion
                 FROM detparpro
                WHERE cparpro = 'F_PRFRACCIONARIAS'
                  AND cidioma = 2
                  AND cvalpar = (SELECT cvalpar
                                   FROM parproductos
                                  WHERE sproduc = reg.sproduc
                                    AND cparpro = 'F_PRFRACCIONARIAS');

               IF funcion IS NOT NULL THEN
                  ss := 'begin :n_retafrac := ' || funcion || '; end;';

                  IF DBMS_SQL.is_open(v_cursor) THEN
                     DBMS_SQL.close_cursor(v_cursor);
                  END IF;

                  v_cursor := DBMS_SQL.open_cursor;
                  DBMS_SQL.parse(v_cursor, ss, DBMS_SQL.native);

                  IF INSTR(ss, ':psseguro') > 0 THEN
                     DBMS_SQL.bind_variable(v_cursor, ':psseguro', reg.sseguro);
                  END IF;

                  IF INSTR(ss, ':pfecha') > 0 THEN
                     DBMS_SQL.bind_variable(v_cursor, ':pfecha', reg.fcarpro);
                  END IF;

                  IF INSTR(ss, ':n_retafrac') > 0 THEN
                     DBMS_SQL.bind_variable(v_cursor, ':n_retafrac', num_err);
                  END IF;

                  v_filas := DBMS_SQL.EXECUTE(v_cursor);
                  DBMS_SQL.variable_value(v_cursor, 'n_retafrac', n_retafrac);

                  IF DBMS_SQL.is_open(v_cursor) THEN
                     DBMS_SQL.close_cursor(v_cursor);
                  END IF;
               END IF;
            END IF;

            -- Fin Bug 9153
            IF algun_error = 0 THEN
               --SMF Como ahora los de propuesta de suplementos entra por la
               --select añadimos a la condición reg.csituac <> 5 para que no
               --entren por el IF.

               -- BUG 9153 - 04-05-09 - RSC - Suplementos automáticos
               -- Añadimos renovación si le toca renovar o si cumpla años (n_retafrac = 1)
               IF (reg.fcarpro = reg.fcaranu
                   AND reg.csituac <> 5
                   AND n_retafrac IS NULL)
                  OR(n_retafrac = 1) THEN
                  --Bug 9685 - APD - 17/04/2009 - Se busca el parámetro num_risc riesgos personales
                  BEGIN
                     SELECT COUNT(*)
                       INTO num_risc
                       FROM riesgos
                      WHERE sperson IS NOT NULL
                        AND sseguro = reg.sseguro;
                  EXCEPTION
                     WHEN OTHERS THEN
                        num_risc := 0;
                  END;

                  --Bug 9685 - APD - 17/04/2009 - Fin

                  -- Bug 9685 - APD - 17/04/2009 - en lugar de coger la acticad de la tabla seguros, llamar a la función pac_seguros.ff_get_actividad
                  ----DBMS_OUTPUT.PUT_LINE ( 'RENOVAMOS');
                  -- Veure si s'ha de fer algun canvi a la pòlissa abans de renovar
                  -- (ara només implementat canvi d'activitat)
                  lcumple := 0;
                  num_err :=
                     pac_cambiocartera.cambiocartera
                                                   ('P', reg.sproduc,
                                                    pac_seguros.ff_get_actividad(reg.sseguro,
                                                                                 num_risc),
                                                    reg.sseguro, reg.cramo, reg.cmodali,
                                                    reg.ctipseg, reg.ccolect, reg.fcaranu,
                                                    reg.nsuplem, lcumple, lcactivi);

                  -- Bug 9685 - APD - 17/04/2009 - Fin
                  IF lcumple = 1 THEN
                     -- La pòlissa serà modificada en la cartera. En el previ només avisem
                     --                        num_err := 110406;
                     -- Canviem l'activitat per que tarifi amb la nova
                     reg.cactivi := lcactivi;
                  -- Bug 9685 - APD - 17/04/2009 - en lugar de coger la actividad de la tabla seguros, llamar a la función pac_seguros.ff_get_actividad
                  ELSE
                     reg.cactivi := pac_seguros.ff_get_actividad(reg.sseguro, num_risc);
                  -- Bug 9685 - APD - 17/04/2009 - Fin
                  END IF;

                  IF num_err = 0 THEN
                     -- La pòlissa renova , cal comprovar si te bonificació
                     -- per no sinistralitat
                     num_err := pac_bonifica.f_bonifica_poliza(reg.cramo, reg.cmodali,
                                                               reg.ctipseg, reg.ccolect,
                                                               reg.sseguro, reg.fcaranu,
                                                               reg.fefecto, lbonifica,
                                                               laplica_bonifica);
                  END IF;

                  IF num_err <> 0 THEN
                     algun_error := 1;
                     indice_error := indice_error + 1;
                  ELSE
                     --
                     -- FGG, 14/02/2000,. Para ver si está informado
                     -- el % de regularización.
                     num_err := validar_regulariza(reg.sseguro);

                     ----DBMS_OUTPUT.PUT_LINE ( 'VALIDAR REGULARIZACIÓN' || NUM_ERR );
                     IF num_err <> 0
                        AND num_err <> 1000 THEN
                        algun_error := 1;
                        indice_error := indice_error + 1;
                     ELSE
                        num_err := 0;

                        BEGIN
                           SELECT csubpro, cobjase, cagrpro,
-- JLB - I - BUG 18423 COjo la moneda del producto
                                          -- DECODE(cdivisa, 3, 1, 2),,
                                  pac_monedas.f_moneda_producto(sproduc),
-- JLB - F - BUG 18423 COjo la moneda del producto
                                                                         nedamar, ciedmar
                             INTO pcsubpro, pcobjase, pcagrpro,
                                  pcmoneda, pnedamar, pciedmar
                             FROM productos
                            WHERE cramo = reg.cramo
                              AND ctipseg = reg.ctipseg
                              AND ccolect = reg.ccolect
                              AND cmodali = reg.cmodali;
                        EXCEPTION
                           WHEN OTHERS THEN
                              algun_error := 1;
--                                 message('Campo csubpro de la tabla productos nulo');pause;
                        END;

                        --21/9/98: YIL. Se buscan los datos necesarios
                        -- para calcular las tarifas.
                        BEGIN
                           SELECT cgtarif
                             INTO tipo
                             FROM codiram
                            WHERE cramo = reg.cramo;
                        EXCEPTION
                           WHEN NO_DATA_FOUND THEN
                              num_err := 101904;
                        END;

                        --25/11/98 YIL. Se busca el parámetro num_risc
                        -- riesgos personales
                        BEGIN
                           SELECT COUNT(*)
                             INTO num_risc
                             FROM riesgos
                            WHERE sperson IS NOT NULL
                              AND sseguro = reg.sseguro;
                        EXCEPTION
                           WHEN OTHERS THEN
                              num_risc := 0;
                        END;

--                        DBMS_OUTPUT.put_line('abans de tarifar ' || reg.fefecto);
                        num_err := pac_dincartera.f_garantarifa_sgt('P', reg.sseguro,
                                                                    reg.cramo, reg.cmodali,
                                                                    pcobjase, reg.ctipseg,
                                                                    reg.ccolect, tipo,
                                                                    reg.nduraci, psproces,
                                                                    reg.ndurcob, reg.fcarpro,
                                                                    pmes, panyo, tipo,
                                                                    pcagrpro, reg.ctarman,
                                                                    reg.cactivi, num_risc,
                                                                    NULL, reg.fefecto, lmov,
                                                                    lanu, pcmoneda,
                                                                    parms_transitorios,
                                                                    lbonifica,
                                                                    laplica_bonifica,
                                                                    reg.sproduc, reg.cforpag,
                                                                    pcidioma, lcgarant_regu,
                                                                    lnorden, lcprimin,
                                                                    liprimin, lcclapri,
                                                                    pnedamar, pciedmar,
                                                                    reg.fcaranu);

                        --SMF borramos las tablas temporales para agilizar el previo
                        DELETE      tmp_garancar
                              WHERE sseguro = reg.sseguro
                                AND sproces = psproces;

                        DELETE      pregungarancar
                              WHERE sseguro = reg.sseguro
                                AND sproces = psproces;

                        DELETE      preguncar
                              WHERE sseguro = reg.sseguro
                                AND sproces = psproces;

                        ----DBMS_OUTPUT.put_line(
                         --  'pac_tarifas.f_garantarifa_sgt '|| num_err);

                        --message('2el ch_cartas es ' || :busqueda.ch_cartas);pause;
                        IF num_err = 0 THEN
                           --Ya están todas las garantías de GARANSEG tarificadas---
                           --Llamamos la función que actualiza datos de la próxima cartera-----
                           num_err := f_acproxcar(reg.sseguro, reg.fcarant, reg.fcarpro,
                                                  reg.fcaranu, reg.nanuali, reg.nfracci,
                                                  reg.frenova);

                           ----DBMS_OUTPUT.put_line('acproxcar '|| num_err);
                           IF num_err <> 0 THEN
                              algun_error := 1;
                              indice_error := indice_error + 1;
                           ELSE
                              --15/1/99 YIL. Se controlan las pólizas de ahorro
                              IF pcagrpro = 2 THEN   ---es una póliza de ahorro
                                 pcmovimi := 2;   -- indica aportación periódica
                              ELSE
                                 pcmovimi := NULL;
                              END IF;

                              --2/10/98 YIL. Se utiliza la función f_recries para calcular el recibo
                              --24/3/1999 YIL. Si la forma de pago es única no se calcula recibo
                              IF reg.cforpag <> 0 THEN
                                 --Llamamos la función de calcular recibos
                                 pfemisio := TO_DATE('1/' || TO_CHAR(TO_NUMBER(pmes)) || '/'
                                                     || TO_CHAR(panyo),
                                                     'dd/mm/yyyy');
                                 ----DBMS_OUTPUT.PUT_LINE ( '>>>>>>> RENOVAMOS');
                                                  -- Vamos a calcular si podemos hacer el recibo y no superamos
                                           -- el límite de aportaciones maximas solo en pp.
                                           ----DBMS_OUTPUT.put_line ( 'prima mínima: ' || liprimin ) ;
                                 recibosi := 1;
                                 -- Si tieneparte de prestaciones en PP NO GENERAMOS RECIBO
                                 prestacion := 0;

                                 IF reg.cagrpro = 11 THEN
                                    SELECT COUNT(1)
                                      INTO prestacion
                                      FROM prestaplan
                                     WHERE prestaplan.sseguro = reg.sseguro;
                                 END IF;

                                 -- Sí el producto es de ahorro, se busca el número de recibos pendientes que tiene la póliza
                                 IF f_prod_ahorro(reg.sproduc) = 1 THEN
                                    SELECT f_recpen_pp(reg.sseguro, 1)
                                      INTO recpendi
                                      FROM DUAL;
                                 ELSE
                                    recpendi := 0;
                                 END IF;

                                 IF prestacion > 0
                                    OR recpendi > 1 THEN
                                    recibosi := 0;
                                 --ELSIF REG.CAGRPRO = 11 AND PRESTACION = 0
                                 --AND recpendi < 2 THEN -- Planes de Pensiones
                                 ELSIF (NVL(f_parproductos_v(reg.sproduc, 'APORTMAXIMAS'), 0) =
                                                                                              1
                                        OR NVL(f_parproductos_v(reg.sproduc, 'TIPO_LIMITE'), 0) <>
                                                                                              0)
                                       AND prestacion = 0
                                       AND recpendi < 2 THEN   -- Planes de Pensiones y PIAS (RSC 01/02/2008)
                                    DECLARE
                                       pendiente      NUMBER;
                                    BEGIN
                                       SELECT riesgos.sperson, riesgos.nriesgo
                                         INTO vpersona, vnriesgo
                                         FROM riesgos
                                        WHERE riesgos.sseguro = reg.sseguro
                                          AND riesgos.fanulac IS NULL;

                                       IF NVL(f_parproductos_v(reg.sproduc, 'APORTMAXIMAS'), 0) =
                                                                                              1 THEN   -- PPA
                                          IF vhpersonppa.EXISTS(vpersona) THEN
                                             pendiente := vhpersonppa(vpersona);
                                          ELSE
                                             -- Bug 10053 - APD - 08/05/2009 - se sustituye la funcion f_maxapor_pp por
                                             -- pac_ppa_planes.ff_importe_por_aportar_persona
                                             /*
                                             SELECT f_maxapor_pp(vpersona, panyo, reg.sseguro)
                                               INTO pendiente
                                               FROM DUAL;
                                              */
                                             pendiente :=
                                                pac_ppa_planes.ff_importe_por_aportar_persona
                                                                                 (panyo,
                                                                                  reg.sseguro,
                                                                                  vnriesgo,
                                                                                  vpersona);
                                             -- Bug 10053 - APD - 08/05/2009 - fin
                                             vhpersonppa(vpersona) := pendiente;
                                          END IF;
                                       ELSIF NVL(f_parproductos_v(reg.sproduc, 'TIPO_LIMITE'),
                                                 0) <> 0 THEN   -- PIAS
                                          IF vhpersonpias.EXISTS(vpersona) THEN
                                             pendiente := vhpersonpias(vpersona);
                                          ELSE
                                             SELECT pac_limites_ahorro.ff_importe_por_aportar_persona
                                                              (panyo,
                                                               f_parproductos_v(reg.sproduc,
                                                                                'TIPO_LIMITE'),
                                                               vpersona, reg.fcarpro)
                                               INTO pendiente
                                               FROM DUAL;

                                             vhpersonpias(vpersona) := pendiente;
                                          END IF;
                                       END IF;

                                       ----DBMS_OUTPUT.PUT_LINE ( '>>>> >>>> >>>> EL MÁXIMO ES ' || PENDIENTE );
                                       IF pendiente <= 0 THEN   ---> HA superado el límite de aportaciones
                                          recibosi := 0;
                                       --ELSIF PENDIENTE > 0 AND PENDIENTE < liprimin THEN -- > El importe es inferior a la prima mínima
                                       --  recibosi := 0;
                                       ELSIF pendiente > 0 THEN
                                          --AND PENDIENTE >=  liprimin THEN
                                          -- En este caso el importe es el de la prima o la diferencia entre lo pendeinte y la prima.
                                          SELECT icapital
                                            INTO prima
                                            FROM garancar
                                           WHERE garancar.sseguro = reg.sseguro
                                             AND garancar.cgarant = 48
                                             AND garancar.ffinefe IS NULL
                                             AND sproces = psproces;

                                          ----DBMS_OUTPUT.put_line ( 'prima ' || prima || ' pendiente ' || pendiente );
                                          IF prima > pendiente THEN
                                             UPDATE garancar
                                                SET ipritar = pendiente,
                                                    icaptot = pendiente,
                                                    iprianu = pendiente * reg.cforpag,
                                                    ipritot = pendiente * reg.cforpag
                                              WHERE cgarant = 48
                                                AND sseguro = reg.sseguro
                                                AND garancar.ffinefe IS NULL
                                                AND sproces = psproces;

                                             NULL;
                                          END IF;

                                          ----DBMS_OUTPUT.PUT_LINE ( 'eL IMPORTE ES ' || PRIMA );
                                          recibosi := 2;
                                       END IF;
                                    EXCEPTION
                                       WHEN NO_DATA_FOUND THEN
                                          recibosi := 0;
                                    END;
                                 END IF;   --> Fin de planes de pensiones o PIAS

                                 ----DBMS_OUTPUT.PUT_LINE ( 'RECIBOSI ' || RECIBOSI );
                                 IF recibosi IN(1, 2) THEN
                                    --BUG9028-XVM-01102009 inici

                                    -- Bug 19777/95194 - 26/10/2011 -AMC
                                    IF f_es_renovacion(reg.sseguro) = 0 THEN   -- es cartera
                                       modcom := 2;
                                    ELSE   -- si es 1 es nueva produccion
                                       modcom := 1;
                                    END IF;

                                    IF NVL
                                          (pac_parametros.f_parinstalacion_n('CALCULO_RECIBO'),
                                           1) = 0 THEN
                                       num_err :=
                                          pac_adm.f_recries(reg.ctipreb, reg.sseguro, NULL,
                                                            pfemisio, reg.fcarant,
                                                            reg.fcarpro, 3, reg.nanuali,
                                                            reg.nfracci, NULL, NULL, psproces,
                                                            21, 'P', modcom, reg.fcaranu,
                                                            NULL, pcmovimi, pcempres,
                                                            pnmovimi, 1, pnimport2);
                                    ELSE
                                       num_err :=
                                          f_recries(reg.ctipreb, reg.sseguro, NULL, pfemisio,
                                                    reg.fcarant, reg.fcarpro, 3, reg.nanuali,
                                                    reg.nfracci, NULL, NULL, psproces, 21,
                                                    'P', modcom, reg.fcaranu, NULL, pcmovimi,
                                                    pcempres, pnmovimi, 1, pnimport2);
                                    END IF;

                                    -- Fi Bug 19777/95194 - 26/10/2011 -AMC

                                    --BUG9028-XVM-01102009 fi

                                    -- RSC 06/02/2008 Actualizamos lo que le queda pendiente a esta persona
                                    -- para que al intentar generar otro recibo en la cartera de esta persona
                                    -- tenga en cuenta los límites de pendiente que tiene actualmente una vez
                                    -- generado ya algun recibo previo en la cartera.
                                    IF NVL(f_parproductos_v(reg.sproduc, 'APORTMAXIMAS'), 0) =
                                                                                              1 THEN
                                       vhpersonppa(vpersona) := vhpersonppa(vpersona) - prima;
                                    ELSIF NVL(f_parproductos_v(reg.sproduc, 'TIPO_LIMITE'), 0) <>
                                                                                              0 THEN
                                       vhpersonpias(vpersona) := vhpersonpias(vpersona)
                                                                 - prima;
                                    END IF;
                                 ELSE
                                    num_err := 0;
                                 END IF;

                                 ----DBMS_OUTPUT.put_line(pnimport2 || 'alberto f_recries '|| num_err);
                                 IF num_err <> 0 THEN
                                    algun_error := 1;
                                    indice_error := indice_error + 1;
                                 END IF;
                              END IF;   -- De si la forma de pago no es única.
                           END IF;   -- De sin error en f_acproxcar
                        ELSE   -- De error en f_garantarifa
                           --message('Falla garantarifa error='||num_err);pause;
                           algun_error := 1;
                           indice_error := indice_error + 1;
--                              EXIT;
                        END IF;
                     END IF;   -- Validar regulariza
                  END IF;   -- Bonificacio
               ELSE   --  fcarpro <> fcaranu
                      --Llamamos la función que actualiza datos de la próxima cartera-----
                  ----DBMS_OUTPUT.PUT_LINE ( 'FCARANT: ' || REG.FCARANT
                            --                                    || 'FCARPRO: ' || REG.FCARPRO
                            --                           || 'FCARANU: ' || REG.FCARANU
                            --                        || 'NANUALI: ' || REG.NANUALI
                            --                        || 'NFRACCI: ' || REG.NFRACCI );
                  num_err := f_acproxcar(reg.sseguro, reg.fcarant, reg.fcarpro, reg.fcaranu,
                                         reg.nanuali, reg.nfracci, reg.frenova);

                  ----DBMS_OUTPUT.put_line('acproxcar 2 '|| num_err);
                  IF num_err <> 0 THEN
                     algun_error := 1;
                     indice_error := indice_error + 1;
                  ELSE
                     --15/1/99 YIL. Se controlan las pólizas de ahorro
                     IF pcagrpro = 2 THEN   ---es una póliza de ahorro
                        pcmovimi := 2;   -- indica aportación periódica
                     ELSE
                        pcmovimi := NULL;
                     END IF;

                     --message('3el ch_cartas es ' || :busqueda.ch_cartas);pause;
                     --Llamamos la función de calcular recibos
                     pfemisio := TO_DATE('1/' || TO_CHAR(TO_NUMBER(pmes)) || '/'
                                         || TO_CHAR(panyo),
                                         'dd/mm/yyyy');

                     -- 17/6/99 YIL. Se mira si es nueva producción o cartera para
                     -- aplicar como modo de comision un 1 o un 2
                     IF f_es_renovacion(reg.sseguro) = 0 THEN   -- es cartera
                        modcom := 2;
                     ELSE   -- si es 1 es nueva produccion
                        modcom := 1;
                     END IF;

                     --Averiguamos el nmovimi
                     num_err := f_buscanmovimi(reg.sseguro, 1, 1, pnmovimi);

                     ----DBMS_OUTPUT.put_line('f_busca '|| num_err);
                     IF num_err <> 0 THEN
                        algun_error := 1;
                        indice_error := indice_error + 1;
                     ELSE
                         --********** PLANES DE PENSIONES **********
                         -- Vamos a calcular si podemos hacer el recibo y no superamos
                        -- el límite de aportaciones maximas solo en pp.
--                        DBMS_OUTPUT.put_line(pnimport2 || 'nO ES RENOVACION prima mínima: '
--                                             || liprimin);
                        recibosi := 1;
                        -- Si tieneparte de prestaciones en PP NO GENERAMOS RECIBO
                        prestacion := 0;

                        IF reg.cagrpro = 11 THEN
                           SELECT COUNT(1)
                             INTO prestacion
                             FROM prestaplan
                            WHERE prestaplan.sseguro = reg.sseguro;
                        END IF;

                        -- Sí el producto es de ahorro, se busca el número de recibos pendientes que tiene la póliza
                        IF f_prod_ahorro(reg.sproduc) = 1 THEN
                           SELECT f_recpen_pp(reg.sseguro, 1)
                             INTO recpendi
                             FROM DUAL;
                        ELSE
                           recpendi := 0;
                        END IF;

                        IF prestacion > 0
                           OR recpendi > 1 THEN
                           recibosi := 0;
                        -- ELSIF REG.CAGRPRO = 11 AND PRESTACION = 0 THEN -- Planes de Pensiones
                        ELSIF (NVL(f_parproductos_v(reg.sproduc, 'APORTMAXIMAS'), 0) = 1
                               OR NVL(f_parproductos_v(reg.sproduc, 'TIPO_LIMITE'), 0) <> 0)
                              AND prestacion = 0 THEN
                           DECLARE
                              pendiente      NUMBER;
                           BEGIN
--                              DBMS_OUTPUT.put_line('ENTRAMOS A BUSCAR EL RIESGO'
--                                                   || reg.sseguro);
                              SELECT riesgos.sperson, riesgos.nriesgo
                                INTO vpersona, vnriesgo
                                FROM riesgos
                               WHERE riesgos.sseguro = reg.sseguro
                                 AND riesgos.fanulac IS NULL;

                              IF NVL(f_parproductos_v(reg.sproduc, 'APORTMAXIMAS'), 0) = 1 THEN
                                 IF vhpersonppa.EXISTS(vpersona) THEN
                                    pendiente := vhpersonppa(vpersona);
                                 ELSE
                                    -- Bug 10053 - APD - 08/05/2009 - se sustituye la funcion f_maxapor_pp por
                                    -- pac_ppa_planes.ff_importe_por_aportar_persona
                                    /*
                                    SELECT f_maxapor_pp(vpersona, panyo, reg.sseguro)
                                      INTO pendiente
                                      FROM DUAL;
                                     */
                                    pendiente :=
                                       pac_ppa_planes.ff_importe_por_aportar_persona
                                                                                 (panyo,
                                                                                  reg.sseguro,
                                                                                  vnriesgo,
                                                                                  vpersona);
                                    -- Bug 10053 - APD - 08/05/2009 - fin
                                    vhpersonppa(vpersona) := pendiente;
                                 END IF;
                              ELSIF NVL(f_parproductos_v(reg.sproduc, 'TIPO_LIMITE'), 0) <> 0 THEN
                                 IF vhpersonpias.EXISTS(vpersona) THEN
                                    pendiente := vhpersonpias(vpersona);
                                 ELSE
                                    SELECT pac_limites_ahorro.ff_importe_por_aportar_persona
                                                              (panyo,
                                                               f_parproductos_v(reg.sproduc,
                                                                                'TIPO_LIMITE'),
                                                               vpersona, reg.fcarpro)
                                      INTO pendiente
                                      FROM DUAL;

                                    vhpersonpias(vpersona) := pendiente;
                                 END IF;
                              END IF;

--                              DBMS_OUTPUT.put_line
--                                                 ('>>>> >>>> >>>> no renueva  EL MÁXIMO ES '
--                                                  || pendiente || ' liprimin ' || liprimin);
                              IF pendiente <= 0 THEN   ---> HA superado el límite de aportaciones
                                 recibosi := 0;
                              --ELSIF PENDIENTE > 0 AND PENDIENTE < liprimin THEN -- > El importe es inferior a la prima mínima
                              --  recibosi := 0;
                              ELSIF pendiente > 0 THEN   --AND PENDIENTE >=  liprimin THEN
                                 -- En este caso el importe es el de la prima o la diferencia entre lo pendiente y la prima.
                                 BEGIN
                                    SELECT icapital
                                      INTO prima
                                      FROM garanseg
                                     WHERE garanseg.sseguro = reg.sseguro
                                       AND garanseg.cgarant = 48
                                       AND garanseg.ffinefe IS NULL;
                                 --BEGIN
                                                 --SELECT ICAPITAL  INTO PRIMA
                                                 --FROM GARANCAR
                                                 --WHERE GARANCAR.SSEGURO = REG.SSEGURO
                                                 --AND GARANCAR.CGARANT = 48
                                                 --AND GARANCAR.FFINEFE  IS NULL
                                                 --AND SPROCES = psproces;
                                 EXCEPTION
                                    WHEN OTHERS THEN
                                       NULL;
                                 END;

--                                 DBMS_OUTPUT.put_line('prima ' || prima || ' pendiente '
--                                                      || pendiente);
                                 IF prima > pendiente THEN
--                                    DBMS_OUTPUT.put_line('prima es mayor que pendiente');
                                    prima := pendiente;
                                  --UPDATE GARANCAR
                                  --SET IPRITAR = PENDIENTE
                                   --      ,  ICAPTOT = PENDIENTE
                                        --   ,  IPRIANU = PENDIENTE * REG.CFORPAG
                                        --   , IPRITOT = PENDIENTE * REG.CFORPAG
                                  --WHERE CGARANT = 48
                                  --AND SSEGURO = reg.sseguro
                                  --AND GARANCAR.FFINEFE IS NULL
                                 -- AND sproces = psproces;
                                 END IF;

--                                 DBMS_OUTPUT.put_line('prima ' || prima || ' pendiente '
--                                                      || pendiente);
                                 recibosi := 2;
                              END IF;
                           EXCEPTION
                              WHEN OTHERS THEN
                                 recibosi := 0;
                           END;
                        END IF;   --> Fin de planes de pensiones o PIAS

                        IF recibosi IN(1, 2) THEN
                           --BUG9028-XVM-01102009 inici
                           IF NVL(pac_parametros.f_parinstalacion_n('CALCULO_RECIBO'), 1) = 0 THEN
                              num_err := pac_adm.f_recries(reg.ctipreb, reg.sseguro, NULL,
                                                           pfemisio, reg.fcarant, reg.fcarpro,
                                                           3, reg.nanuali, reg.nfracci, NULL,
                                                           NULL, psproces, 22, 'P', modcom,
                                                           reg.fcaranu, NULL, pcmovimi,
                                                           pcempres, pnmovimi, 1, pnimport2);
                           ELSE
                              num_err := f_recries(reg.ctipreb, reg.sseguro, NULL, pfemisio,
                                                   reg.fcarant, reg.fcarpro, 3, reg.nanuali,
                                                   reg.nfracci, NULL, NULL, psproces, 22, 'P',
                                                   modcom, reg.fcaranu, NULL, pcmovimi,
                                                   pcempres, pnmovimi, 1, pnimport2);
                           END IF;

                                    --BUG9028-XVM-01102009 fi
                           -- RSC 06/02/2008 Actualizamos lo que le queda pendiente a esta persona
                           -- para que al intentar generar otro recibo en la cartera de esta persona
                           -- tenga en cuenta los límites de pendiente que tiene actualmente una vez
                           -- generado ya algun recibo previo en la cartera.
                           IF NVL(f_parproductos_v(reg.sproduc, 'APORTMAXIMAS'), 0) = 1 THEN
                              vhpersonppa(vpersona) := vhpersonppa(vpersona) - prima;
                           ELSIF NVL(f_parproductos_v(reg.sproduc, 'TIPO_LIMITE'), 0) <> 0 THEN
                              vhpersonpias(vpersona) := vhpersonpias(vpersona) - prima;
                           END IF;

                           -- Si el recibo es de planes de pensiones puede que revalorize
                           -- con lo que modificamos el informe revalorizado para que se visualice
                           -- en el listado.
                           IF NVL(f_parproductos_v(reg.sproduc, 'APORTMAXIMAS'), 0) = 1
                              OR NVL(f_parproductos_v(reg.sproduc, 'TIPO_LIMITE'), 0) <> 0 THEN
                              --UPDATE detreciboscar
                              --SET  iconcep = prima
                              --WHERE nrecibo = ( SELECT MAX(nrecibo) FROM reciboscar WHERE SSEGURO = reg.sseguro
                                     --                                     AND detreciboscar.nrecibo = reciboscar.nrecibo )
                              --AND CGARANT = 48;
                              UPDATE vdetreciboscar
                                 SET iprinet = prima,
                                     itotpri = prima,
                                     itotalr = prima
                               WHERE nrecibo = (SELECT MAX(nrecibo)
                                                  FROM reciboscar
                                                 WHERE sseguro = reg.sseguro
                                                   AND vdetreciboscar.nrecibo =
                                                                             reciboscar.nrecibo);
                           END IF;
--                           DBMS_OUTPUT.put_line('f_recries 2 ' || num_err);
                        END IF;

                        IF num_err <> 0 THEN
                           algun_error := 1;
                           indice_error := indice_error + 1;
                        END IF;
                     END IF;
                  END IF;   -- f_acproxcar
               END IF;   -- fcaranu=fcarpro
            ELSE   -- if anlgun error
               -- indice_error := indice_error + 1;
               EXIT;
            END IF;   -- if algun error

            IF algun_error = 0 THEN
               --22/10/98 YIL. Se borran los registros de GARANCAR
               COMMIT;
            ELSE
               ROLLBACK;
               texto := f_axis_literales(num_err, pcidioma);
                ----DBMS_OUTPUT.put_line(
               --    ' rollback '|| num_err || texto || psproces);
               texto := texto || '.' || reg.sseguro;
               num_lin := NULL;
               num_err := f_proceslin(psproces, texto, reg.sseguro, num_lin);

               IF num_err = 0 THEN
                  COMMIT;
               END IF;
            END IF;
         END LOOP;
--         ELSE
--            message('fcarpro is null');
--            message('fcarpro is null');
      END IF;
   END LOOP;

   CLOSE c_seguro;

--
-- Por ultimo, trataremos los recibos extraordinarios
--
   FOR r_dat IN c_motextra LOOP
      num_err := f_prevrecriesextra(r_dat.sseguro, pcempres, psproces, 'P', pnrecibo);
   END LOOP;

     -- JLB - I - 17/10/2013 -- bloqueo de la cartera
    num_err  := pac_dincartera.f_delete_carteraaux(psproces);
   -- JLB - F- 17/10/2013 -- bloqueo de la cartera
EXCEPTION
   WHEN OTHERS THEN
      -- BUG -21546_108724- 09/02/2012 - JLTS - Cierre de posibles cursores abiertos
      IF c_seguro%ISOPEN THEN
         CLOSE c_seguro;
      END IF;
       -- JLB - I - 17/10/2013 -- bloqueo de la cartera
    num_err  := pac_dincartera.f_delete_carteraaux(psproces);
   -- JLB - F- 17/10/2013 -- bloqueo de la cartera
--      DBMS_OUTPUT.put_line(' Error ' || SQLERRM);
      NULL;
END;

/

  GRANT EXECUTE ON "AXIS"."PREVI_CARTERA_TAR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PREVI_CARTERA_TAR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PREVI_CARTERA_TAR" TO "PROGRAMADORESCSI";
