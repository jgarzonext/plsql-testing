--------------------------------------------------------
--  DDL for Package Body PAC_MD_MENU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_MD_MENU" AS
/******************************************************************************
   NOMBRE:      PAC_MD_MENU
   PROP�SITO: Funciones para la gesti�n del men� de la aplicaci�n.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/05/2008   JAS                1. Creaci�n del package.
******************************************************************************/
   e_param_error  EXCEPTION;
   e_object_error EXCEPTION;

   /*************************************************************************
      Obtenci�n del men� de la aplicaci�n
      param in pcidioma    : Idioma del men�.
      param out mensajes   : mensajes de error
      return               : Cursor con el men� de la aplicaci�n.
   *************************************************************************/
   FUNCTION f_get_menu(pcidioma IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vobjectname    VARCHAR2(500) := 'pac_md_menu.f_get_menu';
      vparam         VARCHAR2(500) := 'par�metros - pcidioma: ' || pcidioma;
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(8) := 0;
      vsqlstmt       VARCHAR2(2000);
      vrefcursor     sys_refcursor;
      v_user         cfg_user.cuser%TYPE;
   BEGIN
      --Comprovaci� de par�metres d'entrada
      IF pcidioma IS NULL THEN
         RAISE e_param_error;
      END IF;

      v_user := pac_md_common.f_get_cxtusuario;
      vnumerr := pac_menu.f_get_menu(v_user, pcidioma, vsqlstmt, mensajes);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      vrefcursor := pac_md_listvalores.f_opencursor(vsqlstmt, mensajes);
      --Retorn del men� de l'aplicaci�.
      RETURN vrefcursor;
   EXCEPTION
      WHEN e_param_error THEN
         IF vrefcursor%ISOPEN THEN
            CLOSE vrefcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000005, vpasexec, vparam);
         RETURN vrefcursor;
      WHEN e_object_error THEN
         IF vrefcursor%ISOPEN THEN
            CLOSE vrefcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000006, vpasexec, vparam);
         RETURN vrefcursor;
      WHEN OTHERS THEN
         IF vrefcursor%ISOPEN THEN
            CLOSE vrefcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN vrefcursor;
   END;

    /*************************************************************************
      Obtenci�n d'un link (URL)  FORMS extern (Men� Inicial de FORMS)
      param in pcform    : Form a buscar
      param in pcempres    : Empresa de la que s'obt� la url form
      param out mensajes   : mensajes de error
      return               : link extern (URL)
   *************************************************************************/
   FUNCTION f_get_urlforms(
      pcform IN VARCHAR2,
      pcempres IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vobjectname    VARCHAR2(500) := 'pac_md_menu.f_get_forms_URLFORMS';
      vparam         VARCHAR2(500)
                             := 'par�metros - pcform: ' || pcform || ' cempres : ' || pcempres;
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(8) := 0;
      vlink          VARCHAR2(1100);
      vppswd         VARCHAR2(100);
   BEGIN
      --Comprovaci� de par�metres d'entrada
      IF pcform IS NULL THEN
         RAISE e_param_error;
      END IF;

      vpasexec := 2;

      IF pcempres IS NULL THEN
         RAISE e_param_error;
      END IF;

      vpasexec := 3;
      vnumerr := pac_user.f_get_password(f_user, vppswd);
      vpasexec := 4;

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      vpasexec := 5;
      --XPL 16/06/2008
      --deixem hardcodejat els par�metres adicionals per a la crida del form INICIAL
      --Li passem el form per si algun dia es vol fer una crida especifica a un form en concret en comptes del inicial
      --en aquest cas s'hauria d'afegir el par�metre del form :
      --Crida a un form espec�fic :
      -- pac_md_common.f_get_parinstalacion_t('IASURL') ||'&'||'form='||pcform
      -- ||'.fmx'||'&'||'otherparams=par_usuario='||f_user||'+par_pwd='||vppswd;
      vlink := pac_md_common.f_get_parinstalacion_t('IASURL') || '&'
               || 'otherparams=par_usuario=' || f_user || '+par_pwd=' || vppswd;
      --XPL modificar quan es parametritzi per empresa
      --vlink := pac_md_common.f_get_parempresa_t(pcempresas,'IASURL') ||'&'||'module='||pcform;
      RETURN vlink;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000005, vpasexec, vparam);
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN NULL;
   END;

    /*************************************************************************
      Obtenci�n d'un link (URL)  REPORTS extern
      param in pcreport    : Report a buscar
      param out mensajes   : mensajes de error
      return               : link extern (URL)
   *************************************************************************/
   FUNCTION f_get_urlreports(pcreport IN VARCHAR2, mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vobjectname    VARCHAR2(500) := 'pac_md_menu.f_get_URLREPORTS';
      vparam         VARCHAR2(500) := 'par�metros - pcreport: ' || pcreport;
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(8) := 0;
      vlink          VARCHAR2(1100);
      vppswd         VARCHAR2(100);
      vppswd_desencriptado VARCHAR2(100);
   BEGIN
      --Comprovaci� de par�metres d'entrada
      IF pcreport IS NULL THEN
         RAISE e_param_error;
      END IF;

      vpasexec := 3;
      vnumerr := pac_user.f_get_password(USER, vppswd);
      vpasexec := 4;

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      vpasexec := 5;
      vppswd_desencriptado :=
         RTRIM
            (UTL_RAW.cast_to_varchar2
                (DBMS_OBFUSCATION_TOOLKIT.desdecrypt
                                                (input => vppswd,
                                                 KEY => UTL_RAW.cast_to_raw(UPPER(RPAD(USER,
                                                                                       32, ' '))))),
             ' ');
      vlink := pac_md_common.f_get_parinstalacion_t('REPORTSERVERURL') || 'userid=' || USER
               || '/' || vppswd_desencriptado || '@'
               || pac_md_common.f_get_parinstalacion_t('BBDD');
      RETURN vlink;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000005, vpasexec, vparam);
         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000006, vpasexec, vparam);
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN NULL;
   END;

   /*************************************************************************
      Obtenci�n d'un link (URL)   extern
      param in pcmenu    : pcmenu a buscar
      param in pcempres    : Empresa del que es busca
      param out mensajes   : mensajes de error
      return               : link extern (URL)
   *************************************************************************/
   FUNCTION f_get_url(
      pcmenu IN NUMBER,
      pcempres IN NUMBER,
      pcvista OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vobjectname    VARCHAR2(500) := 'pac_md_menu.f_get_URL';
      vparam         VARCHAR2(500)
                             := 'par�metros - pcmenu: ' || pcmenu || ' cempres : ' || pcempres;
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(8) := 0;
      vlink          VARCHAR2(1100);
   BEGIN
      --Comprovaci� de par�metres d'entrada
      IF pcmenu IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcempres IS NULL THEN
         RAISE e_param_error;
      END IF;

      vpasexec := 3;
      vnumerr := pac_menu.f_get_url(pcmenu, pcempres, vlink, pcvista);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      RETURN vlink;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000005, vpasexec, vparam);
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN NULL;
   END;

   /*************************************************************************
     Obtencion de URL externa
     param in pcform : Nombre de pantalla a abrir
     param out mensajes   : mensajes de error
     return               : Link Externo (URL)
   *************************************************************************/
   FUNCTION f_get_urladf(pcform IN menu_opciones.cinvcod%TYPE, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      --
      vobjectname    VARCHAR2(50) := 'pac_md_menu.F_GET_URLADF';
      vparam         VARCHAR2(500) := 'par�metros - pcform: ' || pcform;
      vpasexec       NUMBER(5) := 1;
      vtlink         VARCHAR2(1000);
      vnumerr        NUMBER(8) := 0;
      vppswd         VARCHAR2(100);
      vppswd_desencriptado VARCHAR2(100);
      formadf        menu_opciones.cinvcod%TYPE;
   --
   BEGIN
      --
      IF pcform IS NULL THEN
         RAISE e_param_error;
      END IF;

      --
      SELECT DISTINCT mo.cinvcod
                 INTO formadf
                 FROM menu_opciones mo
                WHERE LOWER(mo.cinvcod) = pcform;

      --
      formadf := REPLACE(formadf, '_ADF');
      --
      vpasexec := 2;
      --
      vnumerr := pac_user.f_get_password(f_user, vppswd);
      --
      vpasexec := 3;

      --
      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      --
      vpasexec := 4;
      --
      vppswd_desencriptado :=
         RTRIM
            (UTL_RAW.cast_to_varchar2
                (DBMS_OBFUSCATION_TOOLKIT.desdecrypt
                                              (input => vppswd,
                                               KEY => UTL_RAW.cast_to_raw(UPPER(RPAD(f_user,
                                                                                     32, ' '))))),
             ' ');
      --
      vpasexec := 5;
      --
      vtlink := pac_md_common.f_get_parinstalacion_t('ADFSERVERURL') || '?user=' || f_user
                || '&' || 'pass=' || vppswd_desencriptado || '&' || 'form=' || formadf;
      --
      RETURN vtlink;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000005, vpasexec, vparam);
         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000006, vpasexec, vparam);
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN NULL;
   END f_get_urladf;

   /*************************************************************************
      Generacion de token para aplicacion externa
      param out mensajes   : mensajes de error
      return               : token Externo (codigo ALFANUMERICO)
   *************************************************************************/
   FUNCTION f_get_token(mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      --
      vobjectname    VARCHAR2(50) := 'pac_md_menu.F_GET_TOKEN';
      vparam         VARCHAR2(500) := 'par�metros - ';
      vpasexec       NUMBER(5) := 1;
      vtoken         llamadas_externas.token%TYPE;
   --
   BEGIN
      --
      vtoken := pac_menu.f_get_token(mensajes);
      --
      RETURN vtoken;
   --
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN NULL;
   END f_get_token;
END pac_md_menu;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_MENU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_MENU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_MENU" TO "PROGRAMADORESCSI";
