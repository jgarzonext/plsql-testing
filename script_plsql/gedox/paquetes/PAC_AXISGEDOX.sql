--------------------------------------------------------
--  DDL for Package PAC_AXISGEDOX
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "GEDOX"."PAC_AXISGEDOX" IS   
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
******************************************************************************/-- Creamos un tipo para recuperar valores de la tabla gedox.
   --TYPE type_tgedox  IS TABLE OF gedox%rowtype INDEX BY BINARY_INTEGER;
   TYPE t_record_gedox IS RECORD(
      iddoc          gedox.iddoc%TYPE,
      fichero        gedox.fichero%TYPE,
      idcat          gedox.idcat%TYPE,
      tdescrip       gedox.tdescrip%TYPE,
      falta          gedox.falta%TYPE,
      fmodif         gedox.fmodif%TYPE,
      usumod         gedox.usumod%TYPE,
      usualta        gedox.usualta%TYPE,
      autor          gedox.autor%TYPE,
      click          gedox.click%TYPE,
      tipo           gedox.tipo%TYPE,
      farchiv        gedox.FARCHIV%type, --JAAB CONF-236
      felimin        gedox.FELIMIN%type, --JAAB CONF-236
      fcaduci        gedox.FCADUCI%type, --JAAB CONF-236
      cestdoc        gedox.CESTDOC%type --JAAB CONF-236
   );

   TYPE type_tgedox IS TABLE OF t_record_gedox
      INDEX BY BINARY_INTEGER;

   TYPE t_parametro IS RECORD(
      parametro      gdxcatcodparam.cparcat%TYPE,
      descripcion    gdxcatdesparam.tparcat%TYPE,
      tipo           gdxcatcodparam.ctippar%TYPE,
      valor          VARCHAR(2500),
      desc_tipo      gdx_tipospar.ttippar%TYPE,
      obligatorio    gdxcatcodparam.cobliga%TYPE
   );

   TYPE t_parametros IS TABLE OF t_parametro
      INDEX BY BINARY_INTEGER;

   TYPE t_categoria IS RECORD(
      categoria      codicategor.idcat%TYPE,
      descripcion    detcategor.tdescrip%TYPE,
      padre          codicategor.idpadre%TYPE,
      orden          codicategor.norden%TYPE
   );

   TYPE t_categorias IS TABLE OF t_categoria
      INDEX BY BINARY_INTEGER;

   -- Busca parametros en Gedox.
   FUNCTION buscaparametro_t(p_cod IN VARCHAR2)
      RETURN VARCHAR2;

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
	  P_FCADUCI IN DATE DEFAULT NULL);

   PROCEDURE actualizacabecera(
      p_doc NUMBER,
      p_aut VARCHAR2,
      p_cat NUMBER,
      p_des VARCHAR2,
      p_fic VARCHAR2);

   FUNCTION existeusuario(p_usu VARCHAR2)
      RETURN NUMBER;

   FUNCTION existeparametro(p_parametro IN VARCHAR2)
      RETURN NUMBER;

   FUNCTION existeparametrocat(
      p_parametro IN VARCHAR2,
      p_categoria IN gdxcatcodparam.idcat%TYPE)
      RETURN NUMBER;

   FUNCTION existedocumento(p_documento IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_tipo_parametro(p_parametro IN gdxcatcodparam.cparcat%TYPE)
      RETURN gdxcatcodparam.ctippar%TYPE;

   FUNCTION f_desc_tipo_param(
      p_tipo_param IN gdxcatcodparam.ctippar%TYPE,
      p_idioma IN gdxidiomas.cidioma%TYPE)
      RETURN gdx_tipospar.ttippar%TYPE;

   PROCEDURE consultagedox(
      p_fil IN NUMBER,   -- Numero de filtro
      p_val IN VARCHAR2,   -- Valor condición
      p_selgedox IN OUT type_tgedox,   -- Valores en la matriz
      p_total IN OUT NUMBER   -- Número total de registros
                           );

   PROCEDURE consultagedox(
      p_fil IN NUMBER,   -- Numero de filtro
      p_val IN VARCHAR2,   -- Valor condición
      p_param IN t_parametros,   -- Valores de los parÃ¡metros de búsqueda
      p_selgedox IN OUT type_tgedox,   -- Valores en la matriz
      p_total IN OUT NUMBER   -- Número total de registros
                           );

   FUNCTION categoria(p_cat IN NUMBER, p_idi IN NUMBER)
      RETURN VARCHAR2;

   PROCEDURE verdoc(p_doc IN NUMBER, p_fic IN OUT VARCHAR2, p_err IN OUT NUMBER);

   PROCEDURE actualizacabecera_click(p_doc NUMBER);

   PROCEDURE actualiza_gedoxdb(
      p_tfichero VARCHAR2,
      p_iddoc NUMBER,
      p_errortxt IN OUT VARCHAR2,
      dirpdfgdx IN VARCHAR2 DEFAULT NULL);

   PROCEDURE borrar_documento(p_iddoc IN NUMBER, p_errortxt IN OUT VARCHAR2);

   FUNCTION f_get_categorias(p_idioma IN gdxidiomas.cidioma%TYPE)
      RETURN t_categorias;

   FUNCTION f_get_param_cat(
      p_categoria IN codicategor.idcat%TYPE,
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_idioma IN gdxidiomas.cidioma%TYPE)
      RETURN t_parametros;

   FUNCTION f_get_parametros(
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_idioma IN gdxidiomas.cidioma%TYPE)
      RETURN t_parametros;

   FUNCTION f_get_valor_parametro_n(
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_parametro IN gdxcatcodparam.cparcat%TYPE)
      RETURN dgxpargedox.cvalpar%TYPE;

   FUNCTION f_get_valor_parametro_t(
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_parametro IN gdxcatcodparam.cparcat%TYPE)
      RETURN dgxpargedox.tvalpar%TYPE;

   FUNCTION f_get_valor_parametro_f(
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_parametro IN gdxcatcodparam.cparcat%TYPE)
      RETURN dgxpargedox.fvalpar%TYPE;

   PROCEDURE p_guarda_parametro(
      p_documento IN dgxpargedox.iddoc%TYPE,
      p_parametro IN gdxcatcodparam.cparcat%TYPE,
      p_valor IN VARCHAR2,
      p_usuario IN VARCHAR2);

   FUNCTION f_get_descdoc(p_doc IN NUMBER)
      RETURN VARCHAR2;

   FUNCTION f_get_filedoc(p_doc IN NUMBER)
      RETURN VARCHAR2;

   FUNCTION f_get_secuencia(pid OUT NUMBER)
      RETURN NUMBER;

   FUNCTION f_lista_categorias(pcidioma IN NUMBER)
      RETURN sys_refcursor;

   --BUG0008898 - 12/03/2009 - DCT - Recupera el identificador de la categoria de un documento
   FUNCTION f_get_catdoc(p_doc IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_get_falta(p_doc IN NUMBER)
      RETURN DATE;

   FUNCTION f_get_usuario(p_doc IN NUMBER)
      RETURN VARCHAR2;

-- Bug 21543/108711 - 05/03/2012 - AMC
   FUNCTION f_get_tamanofit(pidgedox IN NUMBER, ptamano OUT VARCHAR2)
      RETURN NUMBER;
-- Bug 40343/108711 - 11/05/2016 - JAJG
   FUNCTION f_get_tamanofit_byte(pidgedox IN NUMBER, ptamano OUT NUMBER)
      RETURN NUMBER;      

   FUNCTION f_set_blob(
      pusuario IN VARCHAR2,
      pnombrefichero IN VARCHAR2,
      pblob IN BLOB,
      porigen IN VARCHAR2,
      piddoc OUT VARCHAR2,
      pdescripcion IN VARCHAR2 DEFAULT NULL)
      RETURN NUMBER;

   FUNCTION f_get_doc_gedoxdb(
      pid IN NUMBER,
      pcontenido OUT BLOB,
      pfichero OUT VARCHAR2,
      ptdescrip OUT VARCHAR2)
      RETURN NUMBER;

    FUNCTION f_set_cestdoc (pidgedox number, pcestdoc number) RETURN NUMBER;      
    
    FUNCTION f_get_doc_val(pfechaactual date) return sys_refcursor;	  
    
    FUNCTION f_get_farchiv (pidgedox number) return date;
    FUNCTION f_get_felimin (pidgedox number) return date;
    FUNCTION f_get_fcaduci (pidgedox number) return date;
    
END pac_axisgedox;

/
