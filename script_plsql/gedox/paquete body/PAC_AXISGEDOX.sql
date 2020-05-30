create or replace PACKAGE BODY pac_axisgedox IS
/******************************************************************************
   NOMBRE:      PAC_AXISGEDOX
   PROPÓSITO:   Gestión Documental

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0
   2.0
   3.0
   4.0
   5.0
   6.0
   7.0
   8.0        12/03/2009    DCT             Creación de la Función: f_get_catdoc
******************************************************************************/
   FUNCTION buscaparametro_t(p_cod IN VARCHAR2)
      RETURN VARCHAR2 IS
   BEGIN
      RETURN f_parinstalagedox_t(p_cod);
   END buscaparametro_t;

   PROCEDURE grabacabecera(
      p_usu IN VARCHAR2,
      p_fil IN VARCHAR2,
      p_des IN VARCHAR2,
      p_tip IN NUMBER,
      p_nuemod IN NUMBER,   -- 1 nuevo, 2 modifica
      p_cat IN NUMBER,
      p_error IN OUT VARCHAR2,
      p_iddoc IN OUT NUMBER,
	  --JAVENDANO BUG: CONF-236 22/08/2016
	  P_FARCHIV IN DATE DEFAULT NULL,
	  P_FELIMIN IN DATE DEFAULT NULL,
	  P_FCADUCI IN DATE DEFAULT NULL) IS
      -- guardamos información cabecera en tablas gedox (solo lo nuevo).
      v_dir          parinstalagedox.tvalpar%TYPE;
      n_err          NUMBER;
   BEGIN
      v_dir := buscaparametro_t('DIRTEMPDB');
--p_control_error('PRD_DOC_GEDOX',' grabacabecera','Paso 01 '|| v_dir);
      n_err := pac_gedox.file_load(UPPER(p_usu), p_fil, v_dir, p_des, NVL(p_tip, 1), p_nuemod,
                                   p_cat, p_error, p_iddoc, p_farchiv, p_felimin, p_fcaduci);
--p_control_error('PRD_DOC_GEDOX',' grabacabecera','Paso 02 '|| p_iddoc);
      
   END grabacabecera;

   PROCEDURE actualizacabecera(
      p_doc NUMBER,
      p_aut VARCHAR2,
      p_cat NUMBER,
      p_des VARCHAR2,
      p_fic VARCHAR2) IS
   BEGIN
      UPDATE gedox
         SET autor = p_aut,
             idcat = p_cat,
             tdescrip = p_des,
             fichero = p_fic
       WHERE iddoc = p_doc;
   END actualizacabecera;

   FUNCTION existeusuario(p_usu VARCHAR2)
      RETURN NUMBER IS
      n_ret          NUMBER;
   BEGIN
      SELECT COUNT(1)
        INTO n_ret
        FROM gdxusuarios
       WHERE cusuari = SUBSTR(p_usu, 1, 20);

      RETURN n_ret;
   END existeusuario;

   FUNCTION existeparametro(p_parametro IN VARCHAR2)
      RETURN NUMBER IS
      v_num          NUMBER;
   BEGIN
      SELECT COUNT(*)
        INTO v_num
        FROM gdxcatcodparam
       WHERE cparcat = '' || p_parametro || '';

      IF v_num > 0 THEN
         v_num := 1;
      END IF;

      RETURN v_num;
   END existeparametro;

   FUNCTION existeparametrocat(
      p_parametro IN VARCHAR2,
      p_categoria IN gdxcatcodparam.idcat%TYPE)
      RETURN NUMBER IS
      v_num          NUMBER;
   BEGIN
      SELECT COUNT(*)
        INTO v_num
        FROM gdxcatcodparam
       WHERE cparcat = '' || p_parametro || ''
         AND idcat = p_categoria;

      IF v_num > 0 THEN
         v_num := 1;
      END IF;

      RETURN v_num;
   END existeparametrocat;

   FUNCTION existedocumento(p_documento IN NUMBER)
      RETURN NUMBER IS
      v_num          NUMBER;
   BEGIN
      SELECT COUNT(*)
        INTO v_num
        FROM gedox
       WHERE iddoc = p_documento;

      IF v_num > 0 THEN
         v_num := 1;
      END IF;

      RETURN v_num;
   END existedocumento;

   FUNCTION f_es_numero(p_valor IN VARCHAR2)
      RETURN BOOLEAN IS
      v_num          NUMBER;
   BEGIN
      v_num := TO_NUMBER(p_valor);
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN FALSE;
   END f_es_numero;

   FUNCTION f_es_fecha(p_valor IN VARCHAR2)
      RETURN BOOLEAN IS
      v_num          DATE;
   BEGIN
      v_num := TO_DATE(p_valor, 'dd/mm/yyyy');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN FALSE;
   END f_es_fecha;

   FUNCTION f_tipo_parametro(p_parametro IN gdxcatcodparam.cparcat%TYPE)
      RETURN gdxcatcodparam.ctippar%TYPE IS
      v_retorno      gdxcatcodparam.ctippar%TYPE;
   BEGIN
      SELECT ctippar
        INTO v_retorno
        FROM gdxcatcodparam
       WHERE cparcat = '' || p_parametro || '';

      RETURN v_retorno;
   END f_tipo_parametro;

   FUNCTION f_desc_tipo_param(
      p_tipo_param IN gdxcatcodparam.ctippar%TYPE,
      p_idioma IN gdxidiomas.cidioma%TYPE)
      RETURN gdx_tipospar.ttippar%TYPE IS
      v_retorno      gdx_tipospar.ttippar%TYPE;
   BEGIN
      SELECT ttippar
        INTO v_retorno
        FROM gdx_tipospar
       WHERE ctippar = p_tipo_param
         AND cidioma = p_idioma;

      RETURN v_retorno;
   END f_desc_tipo_param;

   PROCEDURE consultagedox(
      p_fil IN NUMBER,   -- Numero de filtro
      p_val IN VARCHAR2,   -- Valor condición
      p_selgedox IN OUT type_tgedox,   -- Valores en la matriz
      p_total IN OUT NUMBER   -- Número total de registros
                           ) IS
      TYPE t_refcursor IS REF CURSOR;

      c0             t_refcursor;
      v_consulta     VARCHAR2(2000);

      -- Filtrado por descripción
      CURSOR c1 IS
         SELECT   *
             FROM gedox a
            WHERE LOWER(tdescrip) LIKE '''%' || LOWER(p_val) || '%'''
         ORDER BY iddoc;

      -- Filtrado por autor
      CURSOR c2 IS
         SELECT   *
             FROM gedox a
            WHERE UPPER(autor) = UPPER(p_val)
         ORDER BY iddoc;
   BEGIN
      IF p_fil = 0 THEN
         p_total := 1;
         v_consulta := 'select * from gedox a ' || p_val || ' order by iddoc';

         OPEN c0 FOR v_consulta;

         LOOP
            FETCH c0
             INTO p_selgedox(p_total);

            EXIT WHEN c0%NOTFOUND;
            p_total := p_total + 1;
         END LOOP;

         p_total := p_total - 1;

         CLOSE c0;
      ELSIF p_fil = 1 THEN
         -- Filtrado por descripción
         p_total := 1;

         OPEN c1;

         LOOP
            FETCH c1
             INTO p_selgedox(p_total);

            EXIT WHEN c1%NOTFOUND;
            p_total := p_total + 1;
         END LOOP;

         p_total := p_total - 1;

         CLOSE c1;
      ELSIF p_fil = 2 THEN
         -- Filtrado por autor
         p_total := 1;

         OPEN c2;

         LOOP
            FETCH c2
             INTO p_selgedox(p_total);

            EXIT WHEN c2%NOTFOUND;
            p_total := p_total + 1;
         END LOOP;

         p_total := p_total - 1;

         CLOSE c2;
      END IF;
   END consultagedox;

   PROCEDURE consultagedox(
      p_fil IN NUMBER,   -- Numero de filtro
      p_val IN VARCHAR2,   -- Valor condición
      p_param IN t_parametros,   -- Valores de los parámetros de búsqueda
      p_selgedox IN OUT type_tgedox,   -- Valores en la matriz
      p_total IN OUT NUMBER   -- Número total de registros
                           ) IS
      TYPE t_refcursor IS REF CURSOR;

      c0             t_refcursor;
      v_consulta     VARCHAR2(2000);
      v_aux          dgxpargedox%ROWTYPE;
      v_where0       VARCHAR2(4000);
      v_where        VARCHAR2(4000);
      v_indice       NUMBER;
      v_error        BOOLEAN := FALSE;
   BEGIN
      IF p_fil = 0
         OR(p_fil = 3
            AND p_param.COUNT = 0) THEN
         consultagedox(0, p_val, p_selgedox, p_total);
      ELSIF p_fil = 1 THEN
         consultagedox(1, NULL, p_selgedox, p_total);
      ELSIF p_fil = 2 THEN
         consultagedox(2, NULL, p_selgedox, p_total);
      ELSIF p_fil = 3
            AND p_param.COUNT > 0 THEN
         -- se comprueban que los tipos de los parámetros coincidan con los que hay en la base de datos y que los valores asociados sean coherentes con estos tipos.
         v_indice := p_param.FIRST;

         WHILE v_indice IS NOT NULL
          AND NOT v_error LOOP
            IF (p_param(v_indice).tipo = 3
                AND NOT f_es_numero(p_param(v_indice).valor))
               OR(p_param(v_indice).tipo = 5
                  AND NOT f_es_fecha(p_param(v_indice).valor))
               OR(p_param(v_indice).tipo != f_tipo_parametro(p_param(v_indice).parametro)) THEN
               v_error := FALSE;
            ELSE
               v_indice := p_param.NEXT(v_indice);
            END IF;
         END LOOP;

         IF NOT v_error THEN
            p_total := 1;
            v_consulta := 'select * from gedox a';
            v_where0 := p_val;
            v_indice := p_param.FIRST;

            WHILE v_indice IS NOT NULL LOOP
               IF v_where IS NOT NULL THEN
                  v_where := v_where || ' or ';
               END IF;

               v_where := v_where || '(cparcat = ''' || p_param(v_indice).parametro
                          || ''' and ';

               IF p_param(v_indice).tipo = 3 THEN
                  v_where := v_where || 'cvalpar = ' || TO_NUMBER(p_param(v_indice).valor)
                             || ')';
               ELSIF p_param(v_indice).tipo = 4 THEN
                  v_where := v_where || 'tvalpar = ' || p_param(v_indice).valor || ')';
               ELSIF p_param(v_indice).tipo = 5 THEN
                  v_where := v_where || 'fvalpar = '
                             || TO_DATE(p_param(v_indice).valor, 'dd/mm/yyyy') || ')';
               END IF;

               v_indice := p_param.NEXT(v_indice);
            END LOOP;

            IF v_where IS NOT NULL THEN
               v_where := 'select iddoc from dgxpargedox where ' || v_where
                          || ' group by iddoc having count(*) = ' || p_param.COUNT;
            END IF;

            IF TRIM(v_where0) IS NOT NULL THEN
               v_consulta := v_consulta || v_where0;
            END IF;

            IF v_where IS NOT NULL THEN
               IF TRIM(v_where0) IS NOT NULL THEN
                  v_consulta := v_consulta || ' and';
               ELSE
                  v_consulta := v_consulta || ' where';
               END IF;

               v_consulta := v_consulta || ' iddoc in (' || v_where || ')';
            END IF;

            v_consulta := v_consulta || ' order by iddoc';

            OPEN c0 FOR v_consulta;

            LOOP
               FETCH c0
                INTO p_selgedox(p_total);

               EXIT WHEN c0%NOTFOUND;
               p_total := p_total + 1;
            END LOOP;

            p_total := p_total - 1;

            CLOSE c0;
         ELSE
            raise_application_error
                          (-20001,
                           'Hay alguna incoherencia entre valores y tipos de los parámetros.');
         END IF;
      END IF;
   END consultagedox;

   FUNCTION categoria(p_cat IN NUMBER, p_idi IN NUMBER)
      RETURN VARCHAR2 IS
      v_ret          detcategor.tdescrip%TYPE;
   BEGIN
      IF p_cat IS NULL
         OR p_idi IS NULL THEN
         v_ret := NULL;
      ELSE
         SELECT MAX(tdescrip)
           INTO v_ret
           FROM detcategor
          WHERE idcat = p_cat
            AND cidioma = p_idi;
      END IF;

      RETURN v_ret;
   END;

   PROCEDURE verdoc(p_doc IN NUMBER, p_fic IN OUT VARCHAR2, p_err IN OUT NUMBER) IS
   BEGIN
      p_err := pac_gedox.f_verdoc(p_doc, p_fic);
   END verdoc;

   PROCEDURE actualizacabecera_click(p_doc NUMBER) IS
   BEGIN
      UPDATE gedox
         SET click = NVL(click, 0) + 1
       WHERE iddoc = p_doc;
   END actualizacabecera_click;

   PROCEDURE actualiza_gedoxdb(
      p_tfichero VARCHAR2,
      p_iddoc NUMBER,
      p_errortxt IN OUT VARCHAR2,
      dirpdfgdx IN VARCHAR2 DEFAULT NULL) IS
      ablob          BLOB;
      abfile         BFILE := BFILENAME(NVL(dirpdfgdx, 'GEDOXTEMPORAL'), p_tfichero);
      amount         INTEGER;
      asize          INTEGER;
      n_conta        NUMBER;
   BEGIN
      p_errortxt := NULL;

IF (dbms_lob.fileexists(abfile) = 1) THEN
      dbms_output.put_line('Archivo Existe en el servidor');    
        
      SELECT COUNT(1)
        INTO n_conta
        FROM gedoxdb
       WHERE iddoc = p_iddoc;
       
      IF n_conta = 0 THEN
         INSERT INTO gedoxdb
                     (contenido, iddoc)
              VALUES (EMPTY_BLOB(), p_iddoc);
      
      ELSIF n_conta = 1 THEN
         UPDATE gedoxdb
            SET contenido = EMPTY_BLOB()
          WHERE iddoc = p_iddoc;
     
      ELSE
         RAISE TOO_MANY_ROWS;
      END IF;
      
      SELECT contenido
            INTO ablob
            FROM gedoxdb
           WHERE iddoc = p_iddoc
      FOR UPDATE;
      
--p_control_error('PRD_DOC_GEDOX','actualiza_gedoxdb','Paso 00 dirpdfgdx='||dirpdfgdx||' p_tfichero='||p_tfichero);
--p_control_error('PRD_DOC_GEDOX','actualiza_gedoxdb','Paso 01:'||p_tfichero);
--dbms_output.put_line('Paso 01 '||p_tfichero);
      DBMS_LOB.fileopen(abfile, DBMS_LOB.file_readonly);
--p_control_error('PRD_DOC_GEDOX','actualiza_gedoxdb','Paso 02');
      asize := DBMS_LOB.getlength(abfile);
--p_control_error('PRD_DOC_GEDOX','actualiza_gedoxdb','Paso 03');
--dbms_output.put_line('Size of input file: ' || asize);
      DBMS_LOB.loadfromfile(ablob, abfile, asize);
--p_control_error('PRD_DOC_GEDOX','actualiza_gedoxdb','Paso 04');
--dbms_output.put_line('After loadfromfile');
      DBMS_LOB.fileclose(abfile);
        COMMIT;
     ELSE 
        dbms_output.put_line('El Archivo no existe en el servidor');
    END IF;
    
   EXCEPTION
      WHEN OTHERS THEN
		dbms_output.put_line(SQLERRM||' - '||SQLCODE||' - '||dbms_utility.format_error_backtrace);
         p_errortxt := SQLCODE || ' ' || SQLERRM;
         p_control_error('PRD_DOC_GEDOX','Error',SQLCODE || ' ' || SQLERRM);
         -- dramon 28-8-08: bug mantis 7392. Si el fichero está abierto lo cerramos
         IF DBMS_LOB.fileisopen(abfile) = 1 THEN
            DBMS_LOB.fileclose(abfile);
         END IF;
   END actualiza_gedoxdb;

   PROCEDURE borrar_documento(p_iddoc IN NUMBER, p_errortxt IN OUT VARCHAR2) IS
   BEGIN
      p_errortxt := NULL;

      DELETE FROM gedoxdb
            WHERE iddoc = p_iddoc;

      DELETE FROM gedox
            WHERE iddoc = p_iddoc;
   EXCEPTION
      WHEN OTHERS THEN
         p_errortxt := SQLCODE || '  ' || SQLERRM;
   END borrar_documento;

   FUNCTION f_get_categorias(p_idioma IN gdxidiomas.cidioma%TYPE)
      RETURN t_categorias IS
      v_indice       NUMBER := 1;
      v_retorno      t_categorias;

      CURSOR c_categorias(pidioma_loc IN gdxidiomas.cidioma%TYPE) IS
         SELECT   c.idcat AS categoria,
                  DECODE(NVL(c.idpadre, 0),
                         0, d.tdescrip,
                         categoria(c.idpadre, pidioma_loc) || '.' || d.tdescrip)
                                                                               AS descripcion,
                  c.idpadre AS padre, c.norden AS orden
             FROM codicategor c, detcategor d
            WHERE d.cidioma = pidioma_loc
              AND c.idcat = d.idcat
         ORDER BY descripcion, c.idcat;
   BEGIN
      FOR vc_categorias IN c_categorias(p_idioma) LOOP
         v_retorno(v_indice).categoria := vc_categorias.categoria;
         v_retorno(v_indice).descripcion := vc_categorias.descripcion;
         v_retorno(v_indice).padre := vc_categorias.padre;
         v_retorno(v_indice).orden := vc_categorias.orden;
         v_indice := v_indice + 1;
      END LOOP;

      RETURN v_retorno;
   END f_get_categorias;

   FUNCTION f_get_param_cat(
      p_categoria IN codicategor.idcat%TYPE,
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_idioma IN gdxidiomas.cidioma%TYPE)
      RETURN t_parametros IS
      v_indice       NUMBER := 1;
      v_retorno      t_parametros;

      CURSOR c_parametros(
         pcategoria_loc IN codicategor.idcat%TYPE,
         pdoc_loc IN dgxpargedox.iddoc%TYPE,
         pidioma_loc IN gdxidiomas.cidioma%TYPE) IS
         SELECT   c.cparcat AS parametro, d.tparcat AS descripcion, c.ctippar AS tipo,
                  NVL(DECODE(c.ctippar,
                             3, TO_CHAR(f_get_valor_parametro_n(pdoc_loc, c.cparcat)),
                             4, f_get_valor_parametro_t(pdoc_loc, c.cparcat),
                             5, TO_CHAR(f_get_valor_parametro_f(pdoc_loc, c.cparcat),
                                        'dd/mm/yyyy')),
                      c.tdefecto) AS valor,
                  f_desc_tipo_param(c.ctippar, pidioma_loc) AS desc_tipo,
                  c.cobliga AS obligatorio
             FROM gdxcatcodparam c, gdxcatdesparam d
            WHERE c.idcat = pcategoria_loc
              AND d.cparcat = c.cparcat
              AND d.cidioma = pidioma_loc
         ORDER BY c.norden;
   BEGIN
      FOR vc_parametros IN c_parametros(p_categoria, p_documento, p_idioma) LOOP
         v_retorno(v_indice).parametro := vc_parametros.parametro;
         v_retorno(v_indice).descripcion := vc_parametros.descripcion;
         v_retorno(v_indice).valor := vc_parametros.valor;
         v_retorno(v_indice).tipo := vc_parametros.tipo;
         v_retorno(v_indice).desc_tipo := vc_parametros.desc_tipo;
         v_retorno(v_indice).obligatorio := vc_parametros.obligatorio;
         v_indice := v_indice + 1;
      END LOOP;

      RETURN v_retorno;
   END f_get_param_cat;

   FUNCTION f_get_parametros(
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_idioma IN gdxidiomas.cidioma%TYPE)
      RETURN t_parametros IS
      v_indice       NUMBER := 1;
      v_retorno      t_parametros;

      CURSOR c_parametros(
         pdoc_loc IN dgxpargedox.iddoc%TYPE,
         pidioma_loc IN gdxidiomas.cidioma%TYPE) IS
         SELECT   c.cparcat AS parametro, d.tparcat AS descripcion, c.ctippar AS tipo,
                  NVL(DECODE(c.ctippar,
                             3, TO_CHAR(v.cvalpar),
                             4, v.tvalpar,
                             5, TO_CHAR(v.fvalpar, 'dd/mm/yyyy')),
                      c.tdefecto) AS valor,
                  f_desc_tipo_param(c.ctippar, pidioma_loc) AS desc_tipo,
                  c.cobliga AS obligatorio
             FROM dgxpargedox v, gdxcatcodparam c, gdxcatdesparam d
            WHERE v.iddoc = pdoc_loc
              AND c.cparcat = v.cparcat
              AND d.cparcat = c.cparcat
              AND d.cidioma = pidioma_loc
         ORDER BY c.norden;
   BEGIN
      FOR vc_parametros IN c_parametros(p_documento, p_idioma) LOOP
         v_retorno(v_indice).parametro := vc_parametros.parametro;
         v_retorno(v_indice).descripcion := vc_parametros.descripcion;
         v_retorno(v_indice).valor := vc_parametros.valor;
         v_retorno(v_indice).tipo := vc_parametros.tipo;
         v_retorno(v_indice).desc_tipo := vc_parametros.desc_tipo;
         v_retorno(v_indice).obligatorio := vc_parametros.obligatorio;
         v_indice := v_indice + 1;
      END LOOP;

      RETURN v_retorno;
   END f_get_parametros;

   FUNCTION f_get_valor_parametro_n(
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_parametro IN gdxcatcodparam.cparcat%TYPE)
      RETURN dgxpargedox.cvalpar%TYPE IS
      v_retorno      dgxpargedox.cvalpar%TYPE;
   BEGIN
      BEGIN
         SELECT cvalpar
           INTO v_retorno
           FROM dgxpargedox
          WHERE iddoc = p_documento
            AND cparcat = p_parametro;
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            v_retorno := NULL;
      END;

      RETURN v_retorno;
   END f_get_valor_parametro_n;

   FUNCTION f_get_valor_parametro_t(
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_parametro IN gdxcatcodparam.cparcat%TYPE)
      RETURN dgxpargedox.tvalpar%TYPE IS
      v_retorno      dgxpargedox.tvalpar%TYPE;
   BEGIN
      BEGIN
         SELECT tvalpar
           INTO v_retorno
           FROM dgxpargedox
          WHERE iddoc = p_documento
            AND cparcat = p_parametro;
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            v_retorno := NULL;
      END;

      RETURN v_retorno;
   END f_get_valor_parametro_t;

   FUNCTION f_get_valor_parametro_f(
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_parametro IN gdxcatcodparam.cparcat%TYPE)
      RETURN dgxpargedox.fvalpar%TYPE IS
      v_retorno      dgxpargedox.fvalpar%TYPE;
   BEGIN
      BEGIN
         SELECT fvalpar
           INTO v_retorno
           FROM dgxpargedox
          WHERE iddoc = p_documento
            AND cparcat = p_parametro;
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            v_retorno := NULL;
      END;

      RETURN v_retorno;
   END f_get_valor_parametro_f;

   PROCEDURE p_guarda_parametro(
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_parametro IN gdxcatcodparam.cparcat%TYPE,
      p_valor IN VARCHAR2,
      p_usuario IN VARCHAR2) IS
      v_tipo         gdxcatcodparam.ctippar%TYPE;
      v_cvalpar      dgxpargedox.cvalpar%TYPE;
      v_tvalpar      dgxpargedox.tvalpar%TYPE;
      v_fvalpar      dgxpargedox.fvalpar%TYPE;
   BEGIN
      SELECT ctippar
        INTO v_tipo
        FROM gdxcatcodparam
       WHERE cparcat = p_parametro;

      IF v_tipo = 3 THEN
         IF NOT f_es_numero(p_valor) THEN
            raise_application_error(-20001,
                                    'El valor del parámetro ''' || p_parametro
                                    || ''' debe ser numÃ©rico.');
         ELSE
            v_cvalpar := TO_NUMBER(p_valor);
         END IF;
      ELSIF v_tipo = 4 THEN
         v_tvalpar := p_valor;
      ELSIF v_tipo = 5 THEN
         IF NOT f_es_fecha(p_valor) THEN
            raise_application_error(-20001,
                                    'El valor del parámetro ''' || p_parametro
                                    || ''' debe ser una fecha (dd/mm/yyyy).');
         ELSE
            v_fvalpar := TO_DATE(p_valor, 'dd/mm/yyyy');
         END IF;
      END IF;

      INSERT INTO dgxpargedox
                  (iddoc, cparcat, cvalpar, tvalpar, fvalpar, cusualta,
                   falta)
           VALUES (p_documento, p_parametro, v_cvalpar, v_tvalpar, v_fvalpar, p_usuario,
                   gdx_sysdate);
   END p_guarda_parametro;

   --(JAS)28.05.2008 - Recupera la descripción de un documento
   FUNCTION f_get_descdoc(p_doc IN NUMBER)
      RETURN VARCHAR2 IS
      vdescdoc       gedox.tdescrip%TYPE;
   BEGIN
      IF p_doc IS NULL THEN
         RETURN NULL;
      END IF;

      SELECT g.tdescrip
        INTO vdescdoc
        FROM gedox g
       WHERE g.iddoc = p_doc;

      RETURN vdescdoc;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN NULL;
   END f_get_descdoc;

   --(JAS)28.05.2008 - Recupera el nombre del fichero de un documento
   FUNCTION f_get_filedoc(p_doc IN NUMBER)
      RETURN VARCHAR2 IS
      vfiledoc       gedox.tdescrip%TYPE;
   BEGIN
      IF p_doc IS NULL THEN
         RETURN NULL;
      END IF;

      SELECT g.fichero
        INTO vfiledoc
        FROM gedox g
       WHERE g.iddoc = p_doc;

      RETURN vfiledoc;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN NULL;
   END f_get_filedoc;

   FUNCTION f_get_secuencia(pid OUT NUMBER)
      RETURN NUMBER IS
      n_err          NUMBER(1) := 0;
   BEGIN
      BEGIN
         SELECT seq_idfichero.NEXTVAL
           INTO pid
           FROM DUAL;
      EXCEPTION
         WHEN OTHERS THEN
            RETURN SQLCODE;
      END;

      RETURN n_err;
   END f_get_secuencia;

   FUNCTION f_lista_categorias(pcidioma IN NUMBER)
      RETURN sys_refcursor IS
      vsquery        VARCHAR2(1000);
      cur            sys_refcursor;
   BEGIN
      vsquery := 'select IDCAT,TDESCRIP ' || 'from detcategor ' || 'where CIDIOMA = '
                 || pcidioma || ' order by tdescrip, idcat';

      OPEN cur FOR vsquery;

      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN NULL;
   END f_lista_categorias;

   --BUG0008898 - 12/03/2009 - DCT - Recupera el identificador de la categoria de un documento
   FUNCTION f_get_catdoc(p_doc IN NUMBER)
      RETURN NUMBER IS
      vidcatdoc      gedox.idcat%TYPE;
   BEGIN
      IF p_doc IS NULL THEN
         RETURN NULL;
      END IF;

      SELECT g.idcat
        INTO vidcatdoc
        FROM gedox g
       WHERE g.iddoc = p_doc;

      RETURN vidcatdoc;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN NULL;
   END f_get_catdoc;

   FUNCTION f_get_falta(p_doc IN NUMBER)
      RETURN DATE IS
      vfalta         gedox.falta%TYPE;
   BEGIN
      IF p_doc IS NULL THEN
         RETURN NULL;
      END IF;

      SELECT g.falta
        INTO vfalta
        FROM gedox g
       WHERE g.iddoc = p_doc;

      RETURN vfalta;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN NULL;
   END f_get_falta;

   FUNCTION f_get_usuario(p_doc IN NUMBER)
      RETURN VARCHAR2 IS
      vcusuari       VARCHAR2(40);
   BEGIN
      IF p_doc IS NULL THEN
         RETURN NULL;
      END IF;

      SELECT g.usualta
        INTO vcusuari
        FROM gedox g
       WHERE g.iddoc = p_doc;

      RETURN vcusuari;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN NULL;
   END f_get_usuario;

   -- Bug 21543/108711 - 05/03/2012 - AMC
   FUNCTION f_get_tamanofit(pidgedox IN NUMBER, ptamano OUT VARCHAR2)
      RETURN NUMBER IS
      vtamano        NUMBER;
   BEGIN
      SELECT LENGTH(contenido)
        INTO vtamano
        FROM gedoxdb
       WHERE iddoc = pidgedox;

      IF TRUNC(vtamano / 1024 / 1024 / 1024) > 1 THEN
         -- Gyga
         SELECT TO_CHAR(vtamano / 1024 / 1024 / 1024, 'FM999G999G990D000') || ' Gb'
           INTO ptamano
           FROM DUAL;
      ELSIF TRUNC(vtamano / 1024 / 1024) > 1 THEN
         -- Megas
         SELECT TO_CHAR(vtamano / 1024 / 1024, 'FM999G999G990D000') || ' Mb'
           INTO ptamano
           FROM DUAL;
      ELSIF TRUNC(vtamano / 1024) > 1 THEN
         -- Kbytes
         SELECT TO_CHAR(vtamano / 1024, 'FM999G999G990D000') || ' Kb'
           INTO ptamano
           FROM DUAL;
      ELSE
         --bytes
         SELECT TO_CHAR(vtamano, 'FM999G999G990D000') || ' Bytes'
           INTO ptamano
           FROM DUAL;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN SQLCODE;
   END f_get_tamanofit;

   FUNCTION f_get_tamanofit_byte(pidgedox IN NUMBER, ptamano OUT NUMBER)
      RETURN NUMBER IS
      vtamano        NUMBER;
   BEGIN
      SELECT LENGTH(contenido)
        INTO vtamano
        FROM gedoxdb
       WHERE iddoc = pidgedox;
       ptamano := vtamano;
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN SQLCODE;
   END f_get_tamanofit_byte;
   FUNCTION f_set_blob(
      pusuario IN VARCHAR2,
      pnombrefichero IN VARCHAR2,
      pblob IN BLOB,
      porigen IN VARCHAR2,
      piddoc OUT VARCHAR2,
      pdescripcion IN VARCHAR2 DEFAULT NULL)
      RETURN NUMBER IS
      vnumerr        NUMBER;
   BEGIN
      vnumerr := pac_axisgedox.f_get_secuencia(piddoc);

      INSERT INTO gedox
                  (iddoc, fichero, idcat, tdescrip,
                   falta, usualta, tipo)
           VALUES (piddoc, pnombrefichero, 8, pdescripcion || ' - ' || pnombrefichero,
                   SYSDATE, pusuario, 1);

      INSERT INTO gedoxdb
                  (iddoc, contenido)
           VALUES (piddoc, pblob);

      COMMIT;
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN 1;
   END f_set_blob;

   FUNCTION f_get_doc_gedoxdb(
      pid IN NUMBER,
      pcontenido OUT BLOB,
      pfichero OUT VARCHAR2,
      ptdescrip OUT VARCHAR2)
      RETURN NUMBER IS
   BEGIN
      SELECT g.contenido, gx.fichero, gx.tdescrip
        INTO pcontenido, pfichero, ptdescrip
        FROM gedoxdb g, gedox gx
       WHERE gx.iddoc = g.iddoc
         AND g.iddoc = pid;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN 1;
   END f_get_doc_gedoxdb;

    FUNCTION f_set_cestdoc (
        pidgedox number, 
        pcestdoc number) 
        RETURN NUMBER IS
    BEGIN
        UPDATE gedox
           SET cestdoc = pcestdoc
         WHERE iddoc = pidgedox;
        RETURN 0;
    EXCEPTION
      WHEN OTHERS THEN
         RETURN 1;
    END f_set_cestdoc;
    
    FUNCTION f_get_doc_val(
        pfechaactual date) 
        return sys_refcursor IS
        VCURSOR SYS_REFCURSOR;
    BEGIN
        OPEN vcursor FOR SELECT iddoc, farchiv, felimin, fcaduci
                     FROM GEDOX
                    WHERE NVL(CESTDOC, 0) = 0
                      AND (FARCHIV <= pfechaactual OR FELIMIN <= pfechaactual OR FCADUCI <= pfechaactual);
        RETURN vcursor;
    EXCEPTION
        WHEN OTHERS THEN
            

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
    END f_get_doc_val;  
    
    FUNCTION f_get_farchiv (
        pidgedox number) 
    return date IS
        vfarchiv date;
    BEGIN
        SELECT FARCHIV
          INTO vFARCHIV
        FROM GEDOX
        WHERE iddoc = pidgedox;
    
        RETURN vFARCHIV;
    EXCEPTION WHEN OTHERS THEN
        RETURN null;
    END f_get_farchiv;
    
    FUNCTION f_get_felimin (
        pidgedox number) 
    return date IS
        vfelimin date;
    BEGIN
        SELECT felimin
          INTO vfelimin
        FROM GEDOX
        WHERE iddoc = pidgedox;
    
        RETURN vfelimin;
    EXCEPTION WHEN OTHERS THEN
        RETURN null;
    END f_get_felimin;    
    
    FUNCTION f_get_fcaduci (
        pidgedox number) 
    return date IS
        vfcaduci date;
    BEGIN
        SELECT fcaduci
          INTO vfcaduci
        FROM GEDOX
        WHERE iddoc = pidgedox;
    
        RETURN vfcaduci;
    EXCEPTION WHEN OTHERS THEN
        RETURN null;
    END f_get_fcaduci;    
     
END pac_axisgedox;
