--------------------------------------------------------
--  DDL for Package Body PAC_MD_MNTPARAM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_MD_MNTPARAM" AS
/******************************************************************************
   NOMBRE:      PAC_MD_MNTPARAM
   PROP�SITO:   Funciones para el mantenimiento de las tablas de par�metros en la capa intermedia

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        28/01/2007   JAS               1. Creaci�n del package.
   1.1        04/04/2007   JMR               2. Codificacaci�n funciones GET_..., SET_...
   2.0        18/02/2009   AMC               3. Codificaci�n funciones GET,SET por MOTIVO MOVIMIENTO
******************************************************************************/
   e_param_error  EXCEPTION;
   e_object_error EXCEPTION;

   /*************************************************************************
      Devuelve la lista de detalles del par�metro de entrada
      param in pcparam   : c�digo de par�metro
      param out mensajes : mensajes de error
      return             : descripci�n del par�metro -> Si ha ido bi�n
                           NULL -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_get_detparam(pcparam IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      squery         VARCHAR2(2000);
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'pcparam=' || pcparam;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Get_DetParam';
   BEGIN
      --Inicialitzacions
      squery := '' || '   SELECT cvalpar,tvalpar ' || '     FROM detparam '
                || '    WHERE UPPER(cparam) = ' || chr(39) || UPPER(pcparam) || chr(39)
                || '      AND cidioma = ' || pac_md_common.f_get_cxtidioma || ' ORDER BY 2';
      vcursor := pac_iax_listvalores.f_opencursor(squery, mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
   END f_get_detparam;

   /*************************************************************************
      Devuelve la descripci�n del par�metro de entrada
      param in pcparam   : c�digo de par�metro
      param out mensajes : mensajes de error
      return             : descripci�n del par�metro -> Si ha ido bi�n
                           NULL -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_get_descparam(
      pcparam IN VARCHAR2,
      pcidioma IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vobject        VARCHAR2(500) := 'PAC_MD_MNTPARAM.F_Get_DescParam';
      vparam         VARCHAR2(500)
                           := 'par�metros - pcparam, pcidioma: ' || pcparam || ',' || pcidioma;
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(8) := 0;
      vdescparam     VARCHAR2(100);
   BEGIN
      --Comprovaci� de par�metres d'entrada
      IF pcparam IS NULL
         OR pcidioma IS NULL THEN
         RAISE e_param_error;
      END IF;

      vpasexec := 3;
      --Recuperaci� de la descripci� del par�metre
      vnumerr := pac_mnt_param.f_get_descparam(pcparam, pcidioma, vdescparam);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, 'PAC_MNT_PARAM.F_Get_DescParam', 1000006,
                                           0, 'Error: ' || vnumerr);
         RAISE e_object_error;
      END IF;

      --Tot ok
      RETURN vdescparam;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN NULL;
   END f_get_descparam;

-- ===========================================================================
--  P A R A M E T R O S  C O N E X I O N
-- ===========================================================================
    /*************************************************************************
       Devuelve la lista de par�metros de CONEXION
       param out mensajes : mensajes de error
       return             : descripci�n del par�metro -> Si ha ido bi�n
                            NULL -> Si ha ido mal
    *************************************************************************/
   FUNCTION f_get_conparam(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      squery         VARCHAR2(2000);
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Get_ConParam';
   BEGIN
      --Inicialitzacions
      squery := '' || '   SELECT c.cparam,tparam,ctipo,cutili,cvalpar,tvalpar,fvalpar '
                || '     FROM codparam C, desparam D, parconexion PC '
                || '    WHERE C.cparam = D.cparam ' || '      AND C.cparam = PC.cparame (+) '
                || '      AND C.cutili = 7 ' || '      AND D.cidioma = '
                || pac_md_common.f_get_cxtidioma
                || ' and nvl(c.cvisible,1) = 1 ORDER BY C.norden';
      vcursor := pac_iax_listvalores.f_opencursor(squery, mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
   END f_get_conparam;

   /*************************************************************************
      Modifica el valor de un par�metro de CONEXION
      param in  pcparam  : codigo parametro
      param in  pcvalpar : valor num�rico parametro
      param in  ptvalpar : valor texto parametro
      param in  pfvalpar : valor fecha parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_conparam(
      pcparam IN VARCHAR2,
      pcvalpar IN NUMBER,
      ptvalpar IN VARCHAR2,
      pfvalpar IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
         := 'pcparam=' || pcparam || ', pcvalpar=' || pcvalpar || ', ptvalpar=' || ptvalpar
            || ', pfvalpar=' || pfvalpar;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_ConParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NOT NULL
         AND ptvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF ptvalpar IS NOT NULL
         AND pfvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pfvalpar IS NOT NULL
         AND pcvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NULL
         AND ptvalpar IS NULL
         AND pfvalpar IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_ins_parconexion(pcparam, pcvalpar, ptvalpar, pfvalpar);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_conparam;

   /*************************************************************************
      Elimina un par�metro de CONEXION
      param in  pcparam  : codigo parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_elimconparam(pcparam IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'pcparam=' || pcparam;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_ElimConParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_del_parconexion(pcparam);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_elimconparam;

-- ===========================================================================
--  P A R A M E T R O S  I N S T A L A C I O N
-- ===========================================================================
    /*************************************************************************
       Devuelve la lista de par�metros de INSTALACION
       param out mensajes : mensajes de error
       return             : descripci�n del par�metro -> Si ha ido bi�n
                            NULL -> Si ha ido mal
    *************************************************************************/
   FUNCTION f_get_insparam(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      squery         VARCHAR2(2000);
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := NULL;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Get_InsParam';
   BEGIN
      --Inicialitzacions
      squery := '' || '   SELECT c.cparam,tparam,ctipo,cutili,nvalpar,tvalpar,fvalpar '
                || '     FROM codparam C, desparam D, parinstalacion PI '
                || '    WHERE C.cparam = D.cparam ' || '      AND C.cparam = PI.cparame (+) '
                || '      AND C.cutili = 4 ' || '      AND D.cidioma = '
                || pac_md_common.f_get_cxtidioma
                || ' and nvl(c.cvisible,1) = 1 ORDER BY C.norden';
      vcursor := pac_iax_listvalores.f_opencursor(squery, mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
   END f_get_insparam;

   /*************************************************************************
      Modifica el valor de un par�metro de INSTALACION
      param in  pcparam  : codigo parametro
      param in  pcvalpar : valor num�rico parametro
      param in  ptvalpar : valor texto parametro
      param in  pfvalpar : valor fecha parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_insparam(
      pcparam IN VARCHAR2,
      pcvalpar IN NUMBER,
      ptvalpar IN VARCHAR2,
      pfvalpar IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
         := 'pcparam=' || pcparam || ', pcvalpar=' || pcvalpar || ', ptvalpar=' || ptvalpar
            || ', pfvalpar=' || pfvalpar;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_InsParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NOT NULL
         AND ptvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF ptvalpar IS NOT NULL
         AND pfvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pfvalpar IS NOT NULL
         AND pcvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NULL
         AND ptvalpar IS NULL
         AND pfvalpar IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_ins_parinstalacion(pcparam, pcvalpar, ptvalpar, pfvalpar);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_insparam;

   /*************************************************************************
      Elimina un par�metro de INSTALACION
      param in  pcparam  : codigo parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_eliminsparam(pcparam IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'pcparam=' || pcparam;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_ElimInsParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_del_parinstalacion(pcparam);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_eliminsparam;

-- ===========================================================================
--  P A R A M E T R O S  E M P R E S A
-- ===========================================================================
    /*************************************************************************
       Devuelve la lista de par�metros de EMPRESA
       param in pcempres  : codigo de la empresa
       param out mensajes : mensajes de error
       return             : descripci�n del par�metro -> Si ha ido bi�n
                            NULL -> Si ha ido mal
    *************************************************************************/
   FUNCTION f_get_empparam(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      squery         VARCHAR2(2000);
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'pcempres=' || pcempres;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Get_EmpParam';
   BEGIN
      --Inicialitzacions
      IF pcempres IS NULL THEN
         RAISE e_param_error;
      END IF;

      squery := '' || '   SELECT c.cparam,d.tparam,ctipo,cutili,nvalpar,tvalpar,fvalpar '
                || '     FROM codparam C, desparam D, parempresas PE '
                || '    WHERE C.cparam = D.cparam ' || '      AND C.cparam = PE.cparam (+) '
                || '      AND C.cutili = 5 ' || '      AND D.cidioma = '
                || pac_md_common.f_get_cxtidioma
                || '  and nvl(c.cvisible,1) = 1    AND PE.cempres = ' || pcempres
                || ' ORDER BY C.norden';
      vcursor := pac_iax_listvalores.f_opencursor(squery, mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
   END f_get_empparam;

   /*************************************************************************
      Modifica el valor de un par�metro de EMPRESA
      param in  pcempres : codigo empresa
      param in  pcparam  : codigo parametro
      param in  pcvalpar : valor num�rico parametro
      param in  ptvalpar : valor texto parametro
      param in  pfvalpar : valor fecha parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_empparam(
      pcempres IN NUMBER,
      pcparam IN VARCHAR2,
      pcvalpar IN NUMBER,
      ptvalpar IN VARCHAR2,
      pfvalpar IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
         := 'pcempres=' || pcempres || ', pcparam=' || pcparam || ', pcvalpar=' || pcvalpar
            || ', ptvalpar=' || ptvalpar || ', pfvalpar=' || pfvalpar;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_EmpParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF pcempres IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NOT NULL
         AND ptvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF ptvalpar IS NOT NULL
         AND pfvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pfvalpar IS NOT NULL
         AND pcvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NULL
         AND ptvalpar IS NULL
         AND pfvalpar IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_ins_parempresas(pcempres, pcparam, pcvalpar, ptvalpar,
                                                 pfvalpar);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_empparam;

   /*************************************************************************
      Elimina un par�metro de EMPRESA
      param in  pcempres : codigo empresa
      param in  pcparam  : codigo parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_elimempparam(
      pcempres IN NUMBER,
      pcparam IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'pcempres=' || pcempres || ', pcparam=' || pcparam;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_ElimEmpParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF pcempres IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_del_parproductos(pcempres, pcparam);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_elimempparam;

-- ===========================================================================
--  P A R A M E T R O S  P R O D U C T O
-- ===========================================================================

   /*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
       Descripci�n: Recupera los par�metros de producto del producto pasado por par�metro
       Par�metros entrada: psproduc    -> C�digo del producto
       Par�metros salida:  mensajes    -> Mensajes de error
       Retorno:            RefCursor   -> Parametros del producto
   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
   FUNCTION f_get_prodparam(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      squery         VARCHAR2(2000);
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'psproduc=' || psproduc;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Get_ProdParam';
   BEGIN
      --Inicialitzacions
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      squery := '' || '   SELECT c.cparam,tparam,ctipo,cutili,cvalpar,tvalpar,fvalpar '
                || '     FROM codparam C, desparam D, parproductos PP '
                || '    WHERE C.cparam = D.cparam ' || '      AND C.cparam = PP.cparpro (+) '
                || '      AND C.cutili = 1 '
                || ' and nvl(c.cvisible,1) = 1     AND D.cidioma = '
                || pac_md_common.f_get_cxtidioma || '      AND PP.sproduc (+) = ' || psproduc
                || ' ORDER BY C.norden';
      vcursor := pac_iax_listvalores.f_opencursor(squery, mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
   END f_get_prodparam;

   /*************************************************************************
      Modifica el valor de un par�metro de PRODUCTO
      param in  psproduc : codigo producto
      param in  pcparam  : codigo parametro
      param in  pcvalpar : valor num�rico parametro
      param in  ptvalpar : valor texto parametro
      param in  pfvalpar : valor fecha parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_prodparam(
      psproduc IN NUMBER,
      pcparam IN VARCHAR2,
      pcvalpar IN NUMBER,
      ptvalpar IN VARCHAR2,
      pfvalpar IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
         := 'psproduc=' || psproduc || ', pcparam=' || pcparam || ', pcvalpar=' || pcvalpar
            || ', ptvalpar=' || ptvalpar || ', pfvalpar=' || pfvalpar;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_ProdParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NOT NULL
         AND ptvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF ptvalpar IS NOT NULL
         AND pfvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pfvalpar IS NOT NULL
         AND pcvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NULL
         AND ptvalpar IS NULL
         AND pfvalpar IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_ins_parproductos(psproduc, pcparam, pcvalpar, ptvalpar,
                                                  pfvalpar);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_prodparam;

   /*************************************************************************
      Elimina un par�metro de PRODUCTO
      param in  psproduc : codigo producto
      param in  pcparam  : codigo parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_elimprodparam(
      psproduc IN NUMBER,
      pcparam IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'psproduc=' || psproduc || ', pcparam=' || pcparam;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_ElimProdParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_del_parproductos(psproduc, pcparam);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_elimprodparam;

-- ===========================================================================
--  P A R A M E T R O S  A C T I V I D A D
-- ===========================================================================

   /*************************************************************************
      Devuelve la lista de par�metros de ACTIVIDAD
      param in psproduc  : codigo producto
      param in pcactivi  : codigo actividad
      param out mensajes : mensajes de error
      return             : descripci�n del par�metro -> Si ha ido bi�n
                           NULL -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_get_actparam(psproduc IN NUMBER, pcactivi IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      squery         VARCHAR2(2000);
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'psproduc=' || psproduc || ', pcactivi=' || pcactivi;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Get_ActParam';
   BEGIN
      --Inicialitzacions
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcactivi IS NULL THEN
         RAISE e_param_error;
      END IF;

      squery := '' || '   SELECT c.cparam,tparam,ctipo,cutili,nvalpar,tvalpar,fvalpar '
                || '     FROM codparam C, desparam D, paractividad PA '
                || '    WHERE C.cparam = D.cparam '
                || ' and nvl(c.cvisible,1) = 1     AND C.cparam = PA.cparame (+)'
                || '      AND C.cutili = 2 ' || '      AND D.cidioma = '
                || pac_md_common.f_get_cxtidioma || '      AND PA.sproduc (+) = ' || psproduc
                || '      AND PA.cactivi (+) = ' || pcactivi || ' ORDER BY C.norden';
      vcursor := pac_iax_listvalores.f_opencursor(squery, mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
   END f_get_actparam;

   /*************************************************************************
      Modifica el valor de un par�metro de ACTIVIDAD
      param in  psproduc : codigo producto
      param in  pcactivi : codigo actividad
      param in  pcparam  : codigo parametro
      param in  pcvalpar : valor num�rico parametro
      param in  ptvalpar : valor texto parametro
      param in  pfvalpar : valor fecha parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_actparam(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcparam IN VARCHAR2,
      pcvalpar IN NUMBER,
      ptvalpar IN VARCHAR2,
      pfvalpar IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
         := 'psproduc=' || psproduc || ', pcactivi=' || pcactivi || ', pcparam=' || pcparam
            || ', pcvalpar=' || pcvalpar || ', ptvalpar=' || ptvalpar || ', pfvalpar='
            || pfvalpar;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_ActParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcactivi IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NOT NULL
         AND ptvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF ptvalpar IS NOT NULL
         AND pfvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pfvalpar IS NOT NULL
         AND pcvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NULL
         AND ptvalpar IS NULL
         AND pfvalpar IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_ins_paractividad(psproduc, pcactivi, pcparam, pcvalpar,
                                                  ptvalpar, pfvalpar);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_actparam;

   /*************************************************************************
      Elimina un par�metro de ACTIVIDAD
      param in  psproduc : codigo producto
      param in  pcactivi : codigo actividad
      param in  pcparam  : codigo parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_elimactparam(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcparam IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
            := 'psproduc=' || psproduc || ', pcactivi=' || pcactivi || ', pcparam=' || pcparam;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_ElimActParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcactivi IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_del_paractividad(psproduc, pcactivi, pcparam);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_elimactparam;

-- ===========================================================================
--  P A R A M E T R O S  G A R A N T I A
-- ===========================================================================
    /*************************************************************************
       Devuelve la lista de parametros por GARANTIA/ACTIVIDAD/PRODUCTO
       param in psproduc  : codigo producto
       param in pcactivi  : codigo actividad
       param in pcgarant  : codigo garantia
       param out mensajes : mensajes de error
       return             : parametros de la garantia -> Si ha ido bi�n
                            NULL -> Si ha ido mal
    *************************************************************************/
   FUNCTION f_get_garparam(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      squery         VARCHAR2(2000);
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
          := 'psproduc=' || psproduc || ', pcactivi=' || pcactivi || ', pcgarant=' || pcgarant;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Get_GarParam';
   BEGIN
      --Inicialitzacions
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcactivi IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcgarant IS NULL THEN
         RAISE e_param_error;
      END IF;

      squery := '' || '   SELECT c.cparam,tparam,ctipo,cutili,cvalpar,tvalpar,fvalpar '
                || '     FROM codparam C, desparam D, pargaranpro PGP '
                || '    WHERE C.cparam = D.cparam '
                || ' and nvl(c.cvisible,1) = 1 AND C.cparam = PGP.cpargar (+) '
                || '      AND C.cutili = 3 ' || '      AND D.cidioma = '
                || pac_md_common.f_get_cxtidioma || '      AND PGP.sproduc (+) = ' || psproduc
                || '      AND PGP.cactivi (+) = ' || pcactivi || '      AND PGP.cgarant (+) = '
                || pcgarant || ' ORDER BY C.norden';
      vcursor := pac_iax_listvalores.f_opencursor(squery, mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         RETURN vcursor;
   END f_get_garparam;

   /*************************************************************************
      Modifica el valor de un par�metro de GARANTIA
      param in  psproduc : codigo producto
      param in  pcactivi : codigo actividad
      param in  pcgarant : codigo garantia
      param in  pcparam  : codigo parametro
      param in  pcvalpar : valor num�rico parametro
      param in  ptvalpar : valor texto parametro
      param in  pfvalpar : valor fecha parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_garparam(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      pcparam IN VARCHAR2,
      pcvalpar IN NUMBER,
      ptvalpar IN VARCHAR2,
      pfvalpar IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
         := 'psproduc=' || psproduc || ', pcactivi=' || pcactivi || ', pcgarant=' || pcgarant
            || ', pcparam=' || pcparam || ', pcvalpar=' || pcvalpar || ', ptvalpar='
            || ptvalpar || ', pfvalpar=' || pfvalpar;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_GarParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcactivi IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcgarant IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NOT NULL
         AND ptvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF ptvalpar IS NOT NULL
         AND pfvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pfvalpar IS NOT NULL
         AND pcvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NULL
         AND ptvalpar IS NULL
         AND pfvalpar IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_ins_pargaranpro(psproduc, pcactivi, pcgarant, pcparam,
                                                 pcvalpar, ptvalpar, pfvalpar);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_garparam;

   /*************************************************************************
      Elimina un par�metro de GARANTIA
      param in  psproduc : codigo producto
      param in  pcactivi : codigo actividad
      param in  pcgarant : codigo garantia
      param in  pcparam  : codigo parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_elimgarparam(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      pcparam IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
         := 'psproduc=' || psproduc || ', pcactivi=' || pcactivi || ', pcgarant=' || pcgarant
            || ', pcparam=' || pcparam;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_ElimGarParam';
   BEGIN
      -- Verificaci�n de los par�metros
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcactivi IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcgarant IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_del_pargaranpro(psproduc, pcactivi, pcgarant, pcparam);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_elimgarparam;

-- ===========================================================================
--  P A R A M E T R O S  POR MOTIVO MOVIMIENTO
-- ===========================================================================

   /*************************************************************************
      Devuelve la lista de parametros por MOVIMIENTO/PRODUCTO
      param in psproduc  : codigo producto
      param in pcmotmov  : codigo movimiento
      param out mensajes : mensajes de error
      return             : parametros del movimiento -> Si ha ido bi�n
                           NULL -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_get_movparam(psproduc IN NUMBER, pcmotmov IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'psproduc=' || psproduc || ', pcmotmov=' || pcmotmov;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Get_MovParam';
      squery         VARCHAR2(2000);
      vcursor        sys_refcursor;
   BEGIN
      -- BUG 8789 - Fecha 18/02/2009 - AMC - Verificaci�n de los par�metros�
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcmotmov IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_get_movparam(psproduc, pcmotmov, squery);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      vcursor := pac_iax_listvalores.f_opencursor(squery, mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN vcursor;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN vcursor;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN vcursor;
   END f_get_movparam;

   /*************************************************************************
      Elimina un parametro por MOVIMIENTO/PRODUCTO
      param in psproduc  : codigo producto
      param in pcmotmov  : codigo movimiento
      param in pcparmot  : codigo motivo
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_elimmovparam(
      psproduc IN NUMBER,
      pcmotmov IN NUMBER,
      pcparmot IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
           := 'psproduc=' || psproduc || ', pcmotmov=' || pcmotmov || ' pcparmot=' || pcparmot;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_ElimMovParam';
   BEGIN
      -- BUG 8789 - Fecha 18/02/2009 - AMC - Verificaci�n de los par�metros�
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcmotmov IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcparmot IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_del_parmotmov(psproduc, pcmotmov, pcparmot);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_elimmovparam;

   /*************************************************************************
      Modifica el valor de un par�metro de MOVIMIENTO
      param in  psproduc : codigo producto
      param in  pcmotmov : codigo movimiento
      param in  pcparam  : codigo parametro
      param in  pcvalpar : valor num�rico parametro
      param in  ptvalpar : valor texto parametro
      param in  pfvalpar : valor fecha parametro
      param out mensajes : mensajes de error
      return             : 0 -> Si ha ido bi�n
                           1 -> Si ha ido mal
   *************************************************************************/
   FUNCTION f_set_motmovparam(
      psproduc IN NUMBER,
      pcmotmov IN NUMBER,
      pcparam IN VARCHAR2,
      pcvalpar IN NUMBER,
      ptvalpar IN VARCHAR2,
      pfvalpar IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER(8);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000)
         := 'psproduc=' || psproduc || ', pcparam=' || pcparam || ', pcmotmov=' || pcmotmov
            || ', pcvalpar=' || pcvalpar || ', ptvalpar=' || ptvalpar || ', pfvalpar='
            || pfvalpar;
      vobject        VARCHAR2(200) := 'PAC_MD_MNTPARAM.F_Set_MotMovParam';
   BEGIN
      -- BUG 8789 - Fecha 18/02/2009 - AMC - Verificaci�n de los par�metros�
      IF psproduc IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcmotmov IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcparam IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NOT NULL
         AND ptvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF ptvalpar IS NOT NULL
         AND pfvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pfvalpar IS NOT NULL
         AND pcvalpar IS NOT NULL THEN
         RAISE e_param_error;
      END IF;

      IF pcvalpar IS NULL
         AND ptvalpar IS NULL
         AND pfvalpar IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_mnt_param.f_ins_parmotmov(psproduc, pcmotmov, pcparam, pcvalpar, ptvalpar,
                                               pfvalpar);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_motmovparam;
END pac_md_mntparam;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_MNTPARAM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_MNTPARAM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_MNTPARAM" TO "PROGRAMADORESCSI";
