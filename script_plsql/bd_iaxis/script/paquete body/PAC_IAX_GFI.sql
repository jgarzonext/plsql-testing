--------------------------------------------------------
--  DDL for Package Body PAC_IAX_GFI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_IAX_GFI" AS
/******************************************************************************
   NOMBRE:      PAC_IAX_GFI
   PROP�SITO:   Funciones para el mantenimiento de las Formulas

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2007   JMR               1. Creaci�n del package.
   2.0        18/06/2009   DCT               2. A�adir nuevos m�todos y nuevas funciones
                                                para gestionar las formulas.
   3.0        17/07/2009   AMC               3. Bug 10716 - A�adir nuevos m�todos y nuevas funciones
                                                para gestionar los terminos.
   4.0        11/04/2012   JMB               4. Bug 21336 - Parametrizaci�n de par�metros por configuraci�n
                                                y validaci�n del gestor de formulas.
******************************************************************************/
   e_param_error  EXCEPTION;
   e_object_error EXCEPTION;

   /***********************************************************************
      Recupera la lista de las claves de las formulas.
      param out mensajes : mensajes de error
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_claves(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vobject        VARCHAR2(500) := 'PAC_IAX_GFI.F_Get_Claves';
      vparam         VARCHAR2(500) := 'par�metros  ';
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(8) := 0;
   BEGIN
      --Recuperaci� dels par�metres del producte.
      vcursor := pac_md_gfi.f_get_claves(mensajes);
      --Tot ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_claves;

   /***********************************************************************
      Recupera los valores para el combo dejar rastro
      param out mensajes : mensajes de error
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_rastro(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_Rastro';
   BEGIN
      --Recuperaci� dels par�metres del producte.
      vcursor := pac_md_gfi.f_get_rastro(mensajes);
      --Tot ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_rastro;

   /***********************************************************************
      Recupera los valores posibles para el cutili
      param out mensajes : mensajes de error
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_utili(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_Utili';
   BEGIN
      --Recuperaci� dels par�metres del producte.
      vcursor := pac_md_gfi.f_get_utili(mensajes);
      --Tot ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_utili;

   /***********************************************************************
      Recupera las formulas que cumplan la condici�n
               param in pclave      : Clave de la formula
               param in pcodigo    : C�digo de la formula
               param in pformula    : Formula
               param in pcramo      : C�digo ramo
               param in pcrastro    : C�digo rastro
               param in pcutili    : Donde se utilizan las formulas
      param out mensajes : mensajes de error
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_set_consulta(
      pclave IN NUMBER,
      pcodigo IN VARCHAR2,
      pformula IN VARCHAR2,
      pcramo IN NUMBER,
      pcrastro IN NUMBER,
      pcutili IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_gfitree IS
      vcursor        sys_refcursor;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
         := 'pclave=' || pclave || ', pcodigo=' || pcodigo || ', pformula=' || pformula
            || ', pcramo=' || pcramo || ', pcrastro=' || pcrastro || ', pcutili=' || pcutili;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Set_Consulta';
      tree           t_iax_gfitree;
   BEGIN
      -- Verificaci�n de los par�metros
      vcursor := pac_md_gfi.f_set_consulta(pclave, pcodigo, pformula, pcramo, pcrastro,
                                           pcutili, mensajes);
      vpasexec := 2;
      tree := pac_md_gfi.f_mounttree(vcursor, mensajes);
      COMMIT;
      RETURN tree;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         ROLLBACK;
         RETURN NULL;
      WHEN e_object_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         ROLLBACK;
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         ROLLBACK;
         RETURN NULL;
   END f_set_consulta;

   /***********************************************************************
      Recupera la informaci�n de la formula seg�n el par�metro.
      param in number    : Clave formula
      param out mensajes : mensajes de error
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_formula(pclave IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN ob_iax_gfiform IS
      vcursor        sys_refcursor;
      gfiform        ob_iax_gfiform := ob_iax_gfiform();
      gfiparam       t_iax_gfiparam := t_iax_gfiparam();
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'pclave=' || pclave;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_Formula';
   BEGIN
      --Recuperaci� dels par�metres del producte.
      vcursor := pac_md_gfi.f_get_formula(pclave, mensajes);
      vpasexec := 2;

      LOOP
         FETCH vcursor
          INTO gfiform.clave, gfiform.codigo, gfiform.descripcion, gfiform.formula,
               gfiform.cramo, gfiform.cutili, gfiform.crastro, gfiform.sumatorio;

         EXIT WHEN vcursor%NOTFOUND;
      END LOOP;

      vpasexec := 3;
      vcursor := pac_md_gfi.f_get_parametros(pclave, mensajes);
      vpasexec := 4;

      LOOP
         gfiparam.EXTEND;
         gfiparam(gfiparam.LAST) := ob_iax_gfiparam();

         FETCH vcursor
          INTO gfiparam(gfiparam.LAST).clave, gfiparam(gfiparam.LAST).parametro,
               gfiparam(gfiparam.LAST).tparam;

         EXIT WHEN vcursor%NOTFOUND;
      END LOOP;

      vpasexec := 5;
      gfiform.params := gfiparam;
      --Tot ok
      RETURN gfiform;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN NULL;
   END f_get_formula;

   /***********************************************************************
      Graba la informaci�n de la formula
      param in  formula     : Objeto formula
      param out mensajes  : mensajes de error
      return              : NUMBER   :  1 indicando se ha producido un error
                                        0 ha ido correctamente
   ***********************************************************************/
   FUNCTION f_grabar_formula(
      formula ob_iax_gfiform,
      psclave OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Grabar_Formula';
   BEGIN
      --Recuperaci� dels par�metres del producte.
      vnumerr := pac_md_gfi.f_grabarformula(formula, psclave, mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_param_error;
      END IF;

      --Tot ok
      COMMIT;
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         ROLLBACK;
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         ROLLBACK;
         RETURN 1;
   END f_grabar_formula;

   /***********************************************************************
      Recupera la lista de posibles par�metros a asignar a la formula.
      param out mensajes : mensajes de error
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_lstparametros(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_LstParametros';
   BEGIN
      --Recuperaci� dels par�metres del producte.
      vcursor := pac_md_gfi.f_get_lstparametros(mensajes);
      --Tot ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN vcursor;
      WHEN e_object_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_lstparametros;

   /***********************************************************************
      Recupera los par�metros asociados a la formula.
      param in  pclave   : clave formula
      param out mensajes : mensajes de error
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_parametros(pclave IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_gfiparam IS
      vcursor        sys_refcursor;
      gfiparam       t_iax_gfiparam := t_iax_gfiparam();
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'pclave=' || pclave;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_Parametros';
      vclave         NUMBER;
      vparamr        VARCHAR2(30);
      vtparam        VARCHAR2(50);
   BEGIN
      IF pclave IS NULL THEN
         RAISE e_param_error;
      END IF;

      --Recuperaci� dels par�metres del producte.
      vcursor := pac_md_gfi.f_get_parametros(pclave, mensajes);
      vpasexec := 2;

      LOOP
         FETCH vcursor
          INTO vclave, vparamr, vtparam;

         EXIT WHEN vcursor%NOTFOUND;
         gfiparam.EXTEND;
         gfiparam(gfiparam.LAST) := ob_iax_gfiparam();
         gfiparam(gfiparam.LAST).clave := vclave;
         gfiparam(gfiparam.LAST).parametro := vparamr;
         gfiparam(gfiparam.LAST).tparam := vtparam;
         EXIT WHEN vcursor%NOTFOUND;
      END LOOP;

      --Tot ok
      RETURN gfiparam;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN NULL;
   END f_get_parametros;

   /***********************************************************************
      Graba la informaci�n de los par�metros asociados a la formula.
      param in  T_IAX_GFIPARAM    : Lista par�metros formula
      param out mensajes  : mensajes de error
      return              : NUMBER   :  1 indicando se ha producido un error
                                        0 ha ido correctamente
   ***********************************************************************/
   FUNCTION f_set_grabarformparametros(pparams IN t_iax_gfiparam, mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Set_GrabarFormParametros';
   BEGIN
      IF pparams IS NULL THEN
         RAISE e_param_error;
      END IF;

      --Recuperaci� dels par�metres del producte.
      vnumerr := pac_md_gfi.f_get_grabarformparam(pparams, mensajes);
      --Tot ok
      COMMIT;
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         ROLLBACK;
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         ROLLBACK;
         RETURN 1;
   END f_set_grabarformparametros;

   /***********************************************************************
      Elimina el par�metro asociado a la formula.
      param in  pclave   : clave formula
      param in  pparametro : par�metro a eliminar
      param out mensajes : mensajes de error
      return          : NUMBER   :  1 indicando se ha producido un error
                                       0 ha ido correctamente
   ***********************************************************************/
   FUNCTION f_set_eliminarformparam(
      pclave IN NUMBER,
      pparametro IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'pclave=' || pclave || ', pparametro=' || pparametro;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Set_EliminarFormParam';
   BEGIN
      IF pclave IS NULL THEN
         RAISE e_param_error;
      END IF;

      --Recuperaci� dels par�metres del producte.
      vnumerr := pac_md_gfi.f_get_eliminarformparam(pclave, pparametro, mensajes);
      --Tot ok
      COMMIT;
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         ROLLBACK;
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         ROLLBACK;
         RETURN 1;
   END f_set_eliminarformparam;

   /***********************************************************************
      Recupera la lista de tipos para los t�rminos.
      param out mensajes : Mensajes de salida
      return             : ref cursor

      Bug 10716 - 17/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_lsttipoterm(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_GET_LSTTIPOTERM';
      cur            sys_refcursor;
   BEGIN
      cur := pac_md_gfi.f_get_lsttipoterm(mensajes);

      IF cur IS NULL THEN
         RAISE e_object_error;
      END IF;

      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
   END f_get_lsttipoterm;

   /***********************************************************************
      Recupera la lista del origen del termino.
      param out mensajes : Mensajes de salida
      return             : ref cursor

      Bug 10716 - 17/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_lstorigen(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_GET_LSTORIGEN';
      cur            sys_refcursor;
   BEGIN
      cur := pac_md_gfi.f_get_lstorigen(mensajes);

      IF cur IS NULL THEN
         RAISE e_object_error;
      END IF;

      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
   END f_get_lstorigen;

   /***********************************************************************
      Recupera la lista de operadores.
      param out mensajes : Mensajes de salida
      return             : ref cursor

      Bug 10716 - 17/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_lstoperador(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := NULL;
      vobject        VARCHAR2(200) := 'PAC_MD_GFI.F_GET_LSTOPERADOR';
      cur            sys_refcursor;
   BEGIN
      cur := pac_md_gfi.f_get_lstoperador(mensajes);

      IF cur IS NULL THEN
         RAISE e_object_error;
      END IF;

      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
   END f_get_lstoperador;

   /***********************************************************************
      Recupera la informaci�n de los t�rminos.
      param in ptermino : C�digo identificativo del t�rmino
      param in ptipo : Tipo de t�rmino (T=Tabla, P=Par�metro, F=F�rmula)
      param in porigen : Origen del t�rmino
      param in ptdesc : Descripci�n del t�rmino
      param in poperador : Indica si el termino es un operador o funci�n (0= No, 1= S�)
      param out mensajes : Mensajes de salida
      return             : sys_refcursor

      Bug 10716 - 17/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_terminos(
      ptermino IN VARCHAR2,
      ptipo IN VARCHAR2,
      porigen IN NUMBER,
      ptdesc IN VARCHAR2,
      poperador IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200)
         := 'ptermino:' || ptermino || ' ptipo:' || ptipo || ' porigen:' || porigen
            || ' ptdesc:' || ptdesc || ' poperador:' || poperador;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_GET_TERMINOS';
      cur            sys_refcursor;
   BEGIN
      cur := pac_md_gfi.f_get_terminos(ptermino, ptipo, porigen, ptdesc, poperador, mensajes);

      IF cur IS NULL THEN
         RAISE e_object_error;
      END IF;

      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
   END f_get_terminos;

   /***********************************************************************
      Recupera la informaci�n del t�rmino.
      param in ptermino : C�digo identificativo del t�rmino
      param out mensajes : Mensajes de salida
      return             : ref cursor

      Bug 10716 - 17/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_termino(ptermino IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := 'ptermino:' || ptermino;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_GET_TERMINO';
      cur            sys_refcursor;
   BEGIN
      cur := pac_md_gfi.f_get_termino(ptermino, mensajes);

      IF cur IS NULL THEN
         RAISE e_object_error;
      END IF;

      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
   END f_get_termino;

   /***********************************************************************
      Grava la informaci�n de los t�rminos.
      param in ptermino : C�digo identificativo del t�rmino
      param in poldterm : C�digo identificativo del t�rmino del antiguo termino
      param in ptipo    : Tipo de t�rmino (T=Tabla, P=Par�metro, F=F�rmula)
      param in porigen  : Origen del t�rmino
      param in ptdesc   : Descripci�n del t�rmino
      param in poperador : Indica si el termino es un operador o funci�n (0= No, 1= S�)
      param in pisnew   : 1 es un nuevo termino 0 ja exist�a
      param out mensajes : Mensajes de salida
      return            : 0 ha ido correctamente o bien el c�digo de literal

      Bug 10716 - 17/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_grabartermino(
      ptermino IN VARCHAR2,
      ptipo IN VARCHAR2,
      porigen IN NUMBER,
      ptdesc IN VARCHAR2,
      poperador IN NUMBER,
      pisnew IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(400)
         := 'ptermino:' || ptermino || ' ptipo:' || ptipo || ' porigen:' || porigen
            || ' ptdesc:' || ptdesc || ' poperador:' || poperador || ' pisnew:' || pisnew;
      vobject        VARCHAR2(200) := 'PAC_MD_GFI.F_GRABARTERMINO';
      num_err        NUMBER;
   BEGIN
      num_err := pac_md_gfi.f_grabartermino(ptermino, ptipo, porigen, ptdesc, poperador,
                                            pisnew, mensajes);

      IF num_err <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, num_err);
         RAISE e_param_error;
      END IF;

      COMMIT;
      RETURN num_err;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         ROLLBACK;
         RETURN -1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         ROLLBACK;
         RETURN -1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         ROLLBACK;
         RETURN -1;
   END f_grabartermino;

   /***********************************************************************
      Elimina el t�rmino.
      param in ptermino : C�digo identificativo del t�rmino
      param out mensajes : Mensajes de salida
      return            : 0 ha ido correctamente o bien el c�digo de literal

      Bug 10716 - 17/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_eliminartermino(ptermino IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := 'ptermino:' || ptermino;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_ELIMINARTERMINO';
      num_err        NUMBER;
   BEGIN
      num_err := pac_md_gfi.f_eliminartermino(ptermino, mensajes);

      IF num_err <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, num_err);
         RAISE e_param_error;
      END IF;

      COMMIT;
      RETURN num_err;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         ROLLBACK;
         RETURN -1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         ROLLBACK;
         RETURN -1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         ROLLBACK;
         RETURN -1;
   END f_eliminartermino;

   /***********************************************************************
      Recupera la informaci�n de las vigencias del t�rmino.
      param in ptermino : C�digo identificativo del t�rmino
      param out mensajes : Mensajes de salida
      return            : sys_refcursor

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_termvigencias(ptermino IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := 'ptermino:' || ptermino;
      vobject        VARCHAR2(200) := 'PAC_MD_GFI.F_GET_TERMVIGENCIAS';
      cur            sys_refcursor;
   BEGIN
      cur := pac_md_gfi.f_get_termvigencias(ptermino, mensajes);

      IF cur IS NULL THEN
         RAISE e_object_error;
      END IF;

      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
   END f_get_termvigencias;

   /***********************************************************************
      Elimina la vigencia del t�rmino.
      param in ptermino : C�digo identificativo del t�rmino
      param in pclave   : C�digo de la vigencia
      param out mensajes : Mensajes de salida
      return            : 0 ha ido correctamente o bien el c�digo de literal

      Bug 10716 - 17/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_eliminartermvigen(
      ptermino IN VARCHAR2,
      pclave IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := 'ptermino:' || ptermino || ' pclave:' || pclave;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_ELIMINARTERMVIGEN';
      num_err        NUMBER;
   BEGIN
      num_err := pac_md_gfi.f_eliminartermvigen(ptermino, pclave, mensajes);

      IF num_err <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, num_err);
         RAISE e_param_error;
      END IF;

      COMMIT;
      RETURN num_err;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         ROLLBACK;
         RETURN -1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         ROLLBACK;
         RETURN -1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         ROLLBACK;
         RETURN -1;
   END f_eliminartermvigen;

   /***********************************************************************
      Recupera la informaci�n de las vigencia del t�rmino.
      param in ptermino : C�digo identificativo del t�rmino
      param in pclave   : C�digo de la vigencia
      param out mensajes : Mensajes de salida
      return            : sys_refcursor

      Bug 10716 - 17/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_termvigencia(
      ptermino IN VARCHAR2,
      pclave IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := 'ptermino:' || ptermino || ' pclave:' || pclave;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_GET_TERMVIGENCIA';
      cur            sys_refcursor;
   BEGIN
      cur := pac_md_gfi.f_get_termvigencia(ptermino, pclave, mensajes);

      IF cur IS NULL THEN
         RAISE e_object_error;
      END IF;

      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
   END f_get_termvigencia;

   /***********************************************************************
      Grabar la vigencia del t�rmino.
      param in ptermino : C�digo identificativo del t�rmino
      param in pclave   : C�digo de la vigencia
      param in pfechaefe : Fecha efecto
      param in pcvalor : Valor de la vigencia
      param in isNew : Indica si Nuevo 1 o 0 edici�n
      param out mensajes : Mensajes de salida
      return            : 0 ha ido correctamente o bien el c�digo de literal

      Bug 10716 - 17/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_grabartermvig(
      ptermino IN VARCHAR2,
      pclave IN NUMBER,
      pfechaefe IN DATE,
      pcvalor IN FLOAT,
      isnew IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200)
         := 'ptermino:' || ptermino || ' pclave:' || pclave || ' pfechaefe:' || pfechaefe
            || ' pcvalor:' || pcvalor || ' isNew:' || isnew;
      vobject        VARCHAR2(200) := 'PAC_MD_GFI.F_ELIMINARTERMINO';
      num_err        NUMBER;
   BEGIN
      IF ptermino IS NULL
         OR pfechaefe IS NULL
         OR pcvalor IS NULL THEN
         RAISE e_param_error;
      END IF;

      num_err := pac_md_gfi.f_grabartermvig(ptermino, pclave, pfechaefe, pcvalor, isnew,
                                            mensajes);

      IF num_err <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, num_err);
         RAISE e_param_error;
      END IF;

      COMMIT;
      RETURN num_err;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         ROLLBACK;
         RETURN -1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         ROLLBACK;
         RETURN -1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         ROLLBACK;
         RETURN -1;
   END f_grabartermvig;

   /* Funci�n que recupera la lista de tramos
       param in ptramo: c�digo de tramo
             in pconcepto: concepto al que se aplica el tramo.
      param out:  mensajes de error
      return:  ref cursor  */
   FUNCTION f_consultram(ptramo IN NUMBER, pconcepto IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Consultram';
   BEGIN
      --Comprovaci� pas de par�metres
      --IF ptramo IS NULL OR
      --  pconcepto IS NULL THEN
      --   RAISE e_param_error;
      --END IF;

      --Recuperaci�n de la lista de los tramos
      vcursor := pac_md_gfi.f_consultram(ptramo, pconcepto, mensajes);
      --Todo ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN e_object_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_consultram;

   /* Funci�n que elimna un tramo.
      param in ptramo: c�digo de tramo
      param out:  mensajes de error
      return              : NUMBER   :  1 indicando se ha producido un error
                                        0 ha ido correctamente  */
   FUNCTION f_eliminartramo(ptramo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_EliminarTramo';
      vnumerr        NUMBER;
   BEGIN
      --Comprovaci� pas de par�metres
      IF ptramo IS NULL THEN
         RAISE e_param_error;
      END IF;

      --Recuperaci�n de la lista de los tramos
      vnumerr := pac_md_gfi.f_eliminartramo(ptramo, mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN 1;
   END f_eliminartramo;

   /* Funci�n que recupera la informaci�n de los tramos
       param in ptramo: c�digo de tramo
      param out:  mensajes de error
      return:  ref cursor  */
   FUNCTION f_get_tramo(ptramo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_Tramo';
   BEGIN
      --Comprovaci� pas de par�metres
      IF ptramo IS NULL THEN
         RAISE e_param_error;
      END IF;

      --Recuperaci�n de la informaci�n de los tramos
      vcursor := pac_md_gfi.f_get_tramo(ptramo, mensajes);
      --Todo ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN e_object_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_tramo;

   /* Funci�n que grava la informaci�n de los tramos.
      param in ptramo: c�digo de tramo
               pconcepto: Concepto al que se aplica el tramo
               pcptfranja: Concepto Franja
               pcptvalor: Concepto Valor
      param out:  mensajes de salida
      return : NUMBER   :  1 indicando se ha producido un error
                                        0 ha ido correctamente  */
   FUNCTION f_grabartramo(
      ptramo IN NUMBER,
      pconcepto IN VARCHAR2,
      pcptfranja IN VARCHAR2,
      pcptvalor IN VARCHAR2,
      pisnuevo IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vcursor        sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_GrabarTramo';
      vnumerr        NUMBER;
   BEGIN
      --Comprovaci� pas de par�metres
      IF ptramo IS NULL
         OR pconcepto IS NULL THEN
         RAISE e_param_error;
      END IF;

      --Recuperaci�n de la lista de los tramos
      vnumerr := pac_md_gfi.f_grabartramo(ptramo, pconcepto, pcptfranja, pcptvalor, pisnuevo,
                                          mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      COMMIT;
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         ROLLBACK;
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         ROLLBACK;
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         ROLLBACK;
         RETURN 1;
   END f_grabartramo;

   /* Funci�n que recupera la informaci�n de los tramos
      param in ptramo: c�digo de tramo
     param out:  mensajes de error
     return:  ref cursor  */
   FUNCTION f_get_vigtramos(ptramo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_VigTramos';
   BEGIN
      --Comprovaci� pas de par�metres
      IF ptramo IS NULL THEN
         RAISE e_param_error;
      END IF;

      --Recuperaci�n de la informaci�n de los tramos
      vcursor := pac_md_gfi.f_get_vigtramos(ptramo, mensajes);
      --Todo ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN e_object_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_vigtramos;

   /* Funci�n que recupera la informaci�n del detalle del tramo
       param in pdetalletramo: c�digo detalle tramo
      param out:  mensajes de error
      return:  ref cursor  */
   FUNCTION f_get_detvigtramos(pdetalletramo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_DetVigTramos';
   BEGIN
      --Comprovaci� pas de par�metres
      IF pdetalletramo IS NULL THEN
         RAISE e_param_error;
      END IF;

      --Recuperaci�n de la informaci�n de los tramos
      vcursor := pac_md_gfi.f_get_detvigtramos(pdetalletramo, mensajes);
      --Todo ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN e_object_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_detvigtramos;

   /* Funci�n que graba la informaci�n de la vigencia de los tramos
      param in ptramo: c�digo de tramo
               pfechaefecto: Fecha efecto tramo
               pdetalletramo: Detalle tramo
      param out:  mensajes de salida
      return   : NUMBER   :  1 indicando se ha producido un error
                             0 ha ido correctamente  */
   FUNCTION f_grabarvigtram(
      ptramo IN NUMBER,
      pfechaefecto IN DATE,
      pdetalletramo IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_GrabarVigTram';
   BEGIN
      --Comprovaci� pas de par�metres
      -- ptramo IS NULL OR
       -- pfechaefecto IS NULL THEN
          --pdetalletramo IS NULL THEN
       --  RAISE e_param_error;
      --END IF;

      --Recuperaci�n de la informaci�n de los tramos
      vnumerr := pac_md_gfi.f_grabarvigtram(ptramo, pfechaefecto, pdetalletramo, mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN 1;
   END f_grabarvigtram;

   /* Funci�n que graba la informaci�n de la vigencia de los tramos
     param in pdetalletramo: C�digo detalle tramo
              porden:        N�mero de orden
              pdesde:        Valor desde
              phasta:        Valor hasta
              pvalor:        Valor
     param out:  mensajes de salida
     return   : NUMBER   :  1 indicando se ha producido un error
                            0 ha ido correctamente  */
   FUNCTION f_grabardetvigtram(
      pdetalletramo IN NUMBER,
      porden IN NUMBER,
      pdesde IN NUMBER,
      phasta IN NUMBER,
      pvalor IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_GrabarDetVigTram';
   BEGIN
      --Comprovaci� pas de par�metres
      IF pdetalletramo IS NULL
         OR pdesde IS NULL
         OR phasta IS NULL
         OR pvalor IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_md_gfi.f_grabardetvigtram(pdetalletramo, porden, pdesde, phasta, pvalor,
                                               mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN 1;
   END f_grabardetvigtram;

   /* Funci�n que elimna la vigencia de un tramo.
      param in ptramo: C�digo de tramo
               pdetalletramo: C�digo del detalle tramo
      param out:  mensajes de salida
      return              : NUMBER   :  1 indicando se ha producido un error
                                        0 ha ido correctamente  */
   FUNCTION f_eliminarvigencia(
      ptramo IN NUMBER,
      pdetalletramo IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_EliminarVigencia';
      vnumerr        NUMBER;
   BEGIN
      --Comprovaci� pas de par�metres
      IF ptramo IS NULL
         OR pdetalletramo IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_md_gfi.f_eliminarvigencia(ptramo, pdetalletramo, mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN 1;
   END f_eliminarvigencia;

   /* Funci�n que elimina el detalle de vigencia del tramo.
      param in pdetalletramo: C�digo del detalle tramo
               porden: N�mero de orden de secuencia
      param out:  mensajes de salida
      return              : NUMBER   :  1 indicando se ha producido un error
                                        0 ha ido correctamente  */
   FUNCTION f_eliminardetvigencia(
      pdetalletramo IN NUMBER,
      porden IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_EliminarDetVigencia';
      vnumerr        NUMBER;
   BEGIN
      --Comprovaci� pas de par�metres
      IF pdetalletramo IS NULL
         OR porden IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_md_gfi.f_eliminardetvigencia(pdetalletramo, porden, mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN 1;
   END f_eliminardetvigencia;

   ----------
   --BUCLES--
   ----------
   /* Funci�n que recupera la lista de bucles
      param in ptermino: Nombre del t�rmino
            in pniterac: F�rmula que nos dir� el n�mero de iteraciones
            in poperacion: Tipo de operaci�n (+, *)
      param out:  mensajes de error
      return:  ref cursor  */
   FUNCTION f_consultbucle(
      ptermino IN VARCHAR2,
      pniterac IN NUMBER,
      poperacion IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_ConsultBucle';
   BEGIN
      --Comprovaci� pas de par�metres
      --IF ptermino IS NULL OR
      --  pniterac IS NULL OR
      --  poperacion IS NULL THEN
      --   RAISE e_param_error;
      --END IF;

      --Recuperaci�n de la lista de bucles
      vcursor := pac_md_gfi.f_consultbucle(ptermino, pniterac, poperacion, mensajes);
      --Todo ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN e_object_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_consultbucle;

   /* Funci�n que elimina un bucle
      param in ptermino: Nombre del t�rmino
      param out:  mensajes de error
      return              : NUMBER   :  1 indicando se ha producido un error
                                        0 ha ido correctamente  */
   FUNCTION f_eliminarbucle(ptermino IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_EliminarBucle';
      vnumerr        NUMBER;
   BEGIN
      --Comprovaci� pas de par�metres
      IF ptermino IS NULL THEN
         RAISE e_param_error;
      END IF;

      --Recuperaci�n de la lista de los bucles
      vnumerr := pac_md_gfi.f_eliminarbucle(ptermino, mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN 1;
   END f_eliminarbucle;

   /* Funci�n que recupera la lista de operaci�n para el bucle
      param out:  mensajes de error
      return:  ref cursor  */
   FUNCTION f_get_lstoperacion(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_LstOperacion';
   BEGIN
      --Recuperaci� la lista de operacion para el bucle
      vcursor := pac_md_gfi.f_get_lstoperacion(mensajes);
      --Tot ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_lstoperacion;

   /* Funci�n que grava la informaci�n del bucle.
      param in ptermino: Nombre del t�rmino
               pniterac: F�rmula que nos dir� el n�mero de iteraciones
               poperacion: Tipo de operaci�n (+, *)
               isnew: 1 Indica que es nuevo y 0 Modificaci�n
      param out:  mensajes de salida
      return              : NUMBER   :  1 indicando se ha producido un error
                                        0 ha ido correctamente  */
   FUNCTION f_grabarbucle(
      ptermino IN VARCHAR2,
      pniterac IN VARCHAR2,
      poperacion IN VARCHAR2,
      isnew IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vcursor        sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_GrabarBucle';
      vnumerr        NUMBER;
   BEGIN
      --Comprovaci� pas de par�metres
      IF ptermino IS NULL
         OR pniterac IS NULL
         OR poperacion IS NULL
         OR isnew IS NULL THEN
         RAISE e_param_error;
      END IF;

      --Graba la informaci�n del bucle
      vnumerr := pac_md_gfi.f_grabarbucle(ptermino, pniterac, poperacion, isnew, mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN 1;
   END f_grabarbucle;

--------------
--EVALUACI�N--
--------------
/* Funci�n que recupera los par�metros para poder evaluar una f�rmula.
   param in pclave: Clave f�rmula
   param out:  psession: C�digo �nico de sesi�n
               mensajes: Mensajes de salida
   return              : T_IAX_GFIPARAMTRANS   :  Objeto con los par�metros de evaluaci�n.*/
   FUNCTION f_get_paramtrans(pclave IN NUMBER, psession OUT NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_gfiparamtrans IS
      paramtrans     t_iax_gfiparamtrans;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_Paramtrans';
      vnumerr        NUMBER;
   BEGIN
      --Recuperaci�n de los par�metros para poder evaluar una f�rmula.
      paramtrans := pac_md_gfi.f_get_paramtrans(pclave, psession, mensajes);
      --Tot ok
      RETURN paramtrans;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
      --RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
   --RETURN 1;
   END f_get_paramtrans;

   /* Funci�n que grava la informaci�n de los par�metros
     param in psession: N�mero de sesi�n
              pparamact: Nombre par�metro actual
              pparampos: Nombre par�metro nuevo
              pvalor: Valor del par�metro
     param out: mensajes:  mensajes de salida
     return              : NUMBER   :  1 indicando se ha producido un error
                                       0 ha ido correctamente  */
   FUNCTION f_grabarparamtrans(
      psession IN NUMBER,
      pparamact IN VARCHAR2,
      pparampos IN VARCHAR2,
      pvalor IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vcursor        sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_GrabarParamtrans';
      vnumerr        NUMBER;
   BEGIN
      --Graba la informaci�n de los par�metros
      vnumerr := pac_md_gfi.f_grabarparamtrans(psession, pparamact, pparampos, pvalor,
                                               mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN 1;
   END f_grabarparamtrans;

   /* Funci�n que elimina la informaci�n de los par�metros
      param in psession: N�mero de sesi�n
               pparam: Nombre par�metro
      param out: mensajes:  mensajes de salida
      return              : NUMBER   :  1 indicando se ha producido un error
                                        0 ha ido correctamente  */
   FUNCTION f_eliminarparamtrans(
      psession IN NUMBER,
      pparam IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_EliminarParamtrans';
      vnumerr        NUMBER;
   BEGIN
      --Elimina la informaci�n de los par�metros
      vnumerr := pac_md_gfi.f_eliminarparamtrans(psession, pparam, mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN 1;
   END f_eliminarparamtrans;

   /* Funci�n que Eval�a el resultado de la f�rmula.
      param in psession: C�digo �nico de sesi�n
               pclave: Clave f�rmula.
               pdebug: Modo de debug
      param out:  mensajes de salida
      return              : NUMBER   :  Valor devuelto por la f�rmula  */
   FUNCTION f_evaluar(
      psession IN NUMBER,
      pclave IN NUMBER,
      pdebug IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Evaluar';
      valor          NUMBER;
   BEGIN
      --Comprovaci� pas de par�metres
      IF psession IS NULL
         OR pclave IS NULL
         OR pdebug IS NULL THEN
         RAISE e_param_error;
      END IF;

      --Evalua el resultado de la f�rmula
      valor := pac_md_gfi.f_evaluar(psession, pclave, pdebug, mensajes);
      RETURN valor;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN NULL;
   END f_evaluar;

 ------------------
 --C�DIGO FUNCI�N--
 ------------------
/* Funci�n que recupera el c�digo de una f�rmula.
   param in pclave: Clave f�rmula
   param out:  mensajes: mensajes de error
   return:  ref cursor  */
   FUNCTION f_get_source(pclave IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_Source';
   BEGIN
      --Recuperaci�n del c�digo de una f�rmula.
      vcursor := pac_md_gfi.f_get_source(pclave, mensajes);
      --Tot ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_source;

-------------
--FUNCIONES--
-------------
/* Funci�n que recupera la lista de procesos
  param out:  mensajes: mensajes de error
  return:  ref cursor  */
   FUNCTION f_get_lstfprocesos(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_Lstfprocesos';
   BEGIN
      --Recuperaci�n la lista de procesos
      -- vcursor := PAC_MD_GFI.F_Get_Lstfprocesos(mensajes);

      --Tot ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_lstfprocesos;

   /* Funci�n que recupera la lista de procesos
     param out:  mensajes: mensajes de error
     return:  ref cursor  */
   FUNCTION f_get_lstfrefrescar(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_Lstfrefrescar';
   BEGIN
      --Recuperaci�n la lista de procesos
      -- vcursor := PAC_MD_GFI.F_Get_Lstfrefrescar(mensajes);

      --Tot ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_lstfrefrescar;

   /* Funci�n que recupera la informaci�n de las funciones
     param in pclave: Clave f�rmula
              pformula: C�digo f�rmula
              ptproceso: Proceso que utiliza esta f�rmula
              prefresca: Indica que la f�rmula se tendr�a que refrescar
     param out:  mensajes: mensajes de error
     return:  ref cursor  */
   FUNCTION f_get_funciones(
      pclave IN NUMBER,
      pformula IN VARCHAR2,
      ptproceso IN VARCHAR2,
      prefresca IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_Funciones';
   BEGIN
      --Recuperaci�n la lista de procesos
      -- vcursor := PAC_MD_GFI.F_Get_Funciones(pclave, pformula, ptproceso, prefresca, mensajes);

      --Tot ok
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_funciones;

   /* Funci�n que grava la informaci�n de la funci�n
     param in pclave: Clave de la f�rmula
              pcformula: C�digo de la f�rmula
              ptproceso: Proceso que utiliza esta f�rmula
              prefrescar: Indica que la f�rmula se tendr�a que refrescar
     param out: mensajes:  mensajes de salida
     return              : NUMBER   :  1 indicando se ha producido un error
                                       0 ha ido correctamente  */
   FUNCTION f_grabarfuncion(
      pcclave IN NUMBER,
      pcformula IN VARCHAR2,
      ptproceso IN VARCHAR2,
      prefrescar IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_GrabarFuncion';
      vnumerr        NUMBER;
   BEGIN
      --Graba la informaci�n de los par�metros
      --vnumerr := PAC_MD_GFI.F_GrabarFuncion(pcclave, pcformula, ptproceso, prefrescar, mensajes);
      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN 1;
   END f_grabarfuncion;

   /* Funci�n que genera la formula determinada
     param in pcodigo: C�digo de la f�rmula
              pcomenta: Si se generan comentarios
     param out: mensajes:  mensajes de salida
     return              : NUMBER   :  1 indicando se ha producido un error
                                       0 ha ido correctamente  */
   FUNCTION f_crea_funcion(
      pcodigo IN VARCHAR2,
      pcomenta IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Crea_Funcion';
      vnumerr        NUMBER;
   BEGIN
      --Genera la f�rmula determinada en la base de datos
      vnumerr := pac_md_gfi.f_crea_funcion(pcodigo, pcomenta, mensajes);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      --Todo ok
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN 1;
   END f_crea_funcion;

   /* Funci�n que comprueba que la f�rmula sea correcta
     param in pformula: Texto de la f�rmula
     param out: mensajes:  mensajes de salida
     return              : T_IAX_GFIERRORES   :  Objeto que contiene la informaci�n de los errores de la f�rmula.*/
   FUNCTION f_checkformula(pformula IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN t_iax_gfierrores IS
      gfierrores     t_iax_gfierrores;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_Get_Paramtrans';
      vnumerr        NUMBER;
   BEGIN
      --Funci�n que comprueba que la formula sea correcta
      --gfierrores := PAC_MD_GFI.F_ChekFormula (pformula, mensajes);

      --Tot ok
      RETURN gfierrores;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN NULL;
   END f_checkformula;

   FUNCTION f_tramo(
      pnsesion IN NUMBER,
      pfecha IN NUMBER,
      pntramo IN NUMBER,
      pbuscar IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      valor          NUMBER;
      ftope          DATE;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'pntramo=' || pntramo;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.F_tramo';
   BEGIN
       --Comprovaci� pas de par�metres
      /*IF pntramo IS NULL
         OR pbuscar IS NULL THEN
         RAISE e_param_error;
      END IF;*/
      valor := pac_md_gfi.f_tramo(pnsesion, pfecha, pntramo, pbuscar, mensajes);

      IF valor = -1 THEN
         RAISE e_object_error;
      END IF;

      RETURN valor;
   EXCEPTION
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN -1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN -1;
   END f_tramo;

   FUNCTION f_evaluar_formula(
      pnsesion IN NUMBER,
      pclave IN NUMBER,
      pdebug IN NUMBER,
      pparametros IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      valor          NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'pclave=' || pclave;
      vobject        VARCHAR2(200) := 'PAC_IAX_GFI.f_evaluar_formula';
      ob_iax_gfi     ob_iax_gfiparamvalor;
      pparametros2   t_iax_gfiparamvalor;
      pparametros1   t_iax_gfiparamsvalor;
      cadena         VARCHAR2(2000);
      v_decimal      VARCHAR2(1);
   BEGIN
      SELECT SUBSTR(VALUE, 1, 1)
        INTO v_decimal
        FROM nls_session_parameters
       WHERE parameter = 'NLS_NUMERIC_CHARACTERS';

      IF pparametros IS NOT NULL THEN
         pparametros1 := SPLIT(pparametros, '|');

         IF pparametros1 IS NOT NULL
            AND pparametros1.COUNT > 0 THEN
            pparametros2 := t_iax_gfiparamvalor();
            ob_iax_gfi := ob_iax_gfiparamvalor();

            FOR i IN pparametros1.FIRST .. pparametros1.LAST LOOP
               cadena := SUBSTR(pparametros1(i), 1, INSTR(pparametros1(i), ':', 1, 1) - 1);
               cadena := REPLACE(REPLACE(cadena, ',', v_decimal), '.', v_decimal);
               ob_iax_gfi.ctipo := TO_NUMBER(cadena);
               cadena := SUBSTR(pparametros1(i), INSTR(pparametros1(i), ':', 1, 1) + 1,
                                INSTR(pparametros1(i), ':', 1, 2)
                                - INSTR(pparametros1(i), ':', 1, 1) - 1);
               ob_iax_gfi.tnombre := cadena;
               cadena := SUBSTR(pparametros1(i), INSTR(pparametros1(i), ':', 1, 2) + 1,
                                LENGTH(pparametros1(i)));
               cadena := REPLACE(REPLACE(cadena, ',', v_decimal), '.', v_decimal);
               ob_iax_gfi.valor := TO_NUMBER(cadena);
               pparametros2.EXTEND();
               pparametros2(pparametros2.LAST) := ob_iax_gfi;
            END LOOP;
         END IF;
      END IF;

      valor := pac_md_gfi.f_evaluar_formula(NVL(pnsesion, 1), pclave, pdebug, pparametros2,
                                            mensajes);

      IF valor IS NULL THEN
         RAISE e_object_error;
      END IF;

      RETURN valor;
   EXCEPTION
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);
         RETURN NULL;
   END f_evaluar_formula;

   FUNCTION SPLIT(in_string VARCHAR2, delim VARCHAR2)
      RETURN t_iax_gfiparamsvalor IS
      i              NUMBER := 0;
      pos            NUMBER := 0;
      lv_str         VARCHAR2(100) := in_string;
      strings        t_iax_gfiparamsvalor := t_iax_gfiparamsvalor();
   BEGIN
      pos := INSTR(lv_str, delim, 1, 1);

      WHILE(pos != 0) LOOP
         strings.EXTEND();
         i := i + 1;
         strings(i) := SUBSTR(lv_str, 1, pos - 1);
         lv_str := SUBSTR(lv_str, pos + 1, LENGTH(lv_str));
         pos := INSTR(lv_str, delim, 1, 1);

         IF pos = 0 THEN
            strings(i + 1) := lv_str;
         END IF;
      END LOOP;

      RETURN strings;
   END SPLIT;
END pac_iax_gfi;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_GFI" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_GFI" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_GFI" TO "PROGRAMADORESCSI";
