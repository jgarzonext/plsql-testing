--------------------------------------------------------
--  DDL for Package Body PAC_MD_EMPLEADOS_REPRESENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_MD_EMPLEADOS_REPRESENT" IS
/******************************************************************************
   NOMBRE:       PAC_MD_EMPLEADOS_REPRESENT
   PROP�SITO:    Funciones para gestionar empleados y representantes

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        23/10/2012  MDS              1. Creaci�n del package. 0022266: LCOL_P001 - PER - Mantenimiento de promotores, gestores, empleados, coordinador
   2.0        04/10/2013  JDS              2. 0028395: LCOL - PER - No aparece el campo �Compa��a� al seleccionar la opci�n �Externo�

******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

   FUNCTION f_traspasar_errores_mensajes(errores IN t_ob_error)
      RETURN t_iax_mensajes IS
      vnumerr        NUMBER := 0;
      mensajesdst    t_iax_mensajes;
      errind         ob_error;
      msg            ob_iax_mensajes;
      vpasexec       NUMBER := 1;
      vparam         VARCHAR2(500) := NULL;
      vobject        VARCHAR2(200)
                                  := 'PAC_MD_EMPLEADOS_REPRESENT.f_traspasar_errores_mensajes';
   BEGIN
      mensajesdst := t_iax_mensajes();

      IF errores IS NOT NULL THEN
         IF errores.COUNT > 0 THEN
            FOR vmj IN errores.FIRST .. errores.LAST LOOP
               IF errores.EXISTS(vmj) THEN
                  errind := errores(vmj);
                  mensajesdst.EXTEND;
                  mensajesdst(mensajesdst.LAST) := ob_iax_mensajes();
                  mensajesdst(mensajesdst.LAST).tiperror := 1;
                  mensajesdst(mensajesdst.LAST).cerror := errind.cerror;
                  mensajesdst(mensajesdst.LAST).terror := errind.terror;
               END IF;
            END LOOP;
         END IF;
      END IF;

      RETURN mensajesdst;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajesdst, vobject, 1000005, vpasexec, vparam);
         RETURN mensajesdst;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajesdst, vobject, 1000006, vpasexec, vparam);
         RETURN mensajesdst;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajesdst, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN mensajesdst;
   END f_traspasar_errores_mensajes;

   /*************************************************************************
     Funci�n que obtiene la lista de empleados
     param out pcur      : sys_refcursor
     param out mensajes  : t_iax_mensajes
     return              : 0.- OK, 1.- KO
    *************************************************************************/
   FUNCTION f_get_empleados(
      psperson IN NUMBER,
      pctipo IN NUMBER,
      pcsubtipo IN NUMBER,
      pccargo IN NUMBER,
      pccanal IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vnumerr        NUMBER := 0;
      vpasexec       NUMBER := 1;
      vparam         VARCHAR2(500) := NULL;
      vobject        VARCHAR2(200) := 'PAC_MD_EMPLEADOS_REPRESENT.f_get_empleados';
      squery         VARCHAR2(3000);
      cur            sys_refcursor;
   BEGIN
      vnumerr := pac_empleados_representantes.f_get_empleados(psperson, pctipo, pcsubtipo,
                                                              pccargo, pccanal,
                                                              pac_md_common.f_get_cxtidioma,
                                                              squery);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      cur := pac_md_listvalores.f_opencursor(squery, mensajes);
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
   END f_get_empleados;

   /*************************************************************************
     Funci�n que obtiene un empleado
     ...
     param out mensajes  : t_iax_mensajes
     return              : ob_iax_empleado
    *************************************************************************/
   FUNCTION f_get_empleado(psperson IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN ob_iax_empleado IS
      empleado       ob_iax_empleado := ob_iax_empleado();
      vidioma        NUMBER := pac_md_common.f_get_cxtidioma;
      vpasexec       NUMBER;
      vparam         VARCHAR2(500) := 'par�metros - psperson: ' || psperson;
      vobject        VARCHAR2(200) := 'PAC_MD_EMPLEADOS_REPRESENT.f_get_empleado';
   BEGIN
      vpasexec := 1;

      -- Control par�metros entrada
      IF psperson IS NULL THEN
         RAISE e_param_error;
      END IF;

      vpasexec := 2;

      -- obtener la informaci�n del empleado
      SELECT e.sperson, e.ctipo, ff_desvalorfijo(800050, vidioma, e.ctipo) ttipo, e.csubtipo,
             ff_desvalorfijo(800052, vidioma, e.csubtipo) tsubtipo, ccargo,
             ff_desvalorfijo(800056, vidioma, e.ccargo) tcargo, ccanal,
             ff_desvalorfijo(800053, vidioma, e.ccanal) tcanal, e.cusumod, e.fmodifi
        INTO empleado.sperson, empleado.ctipo, empleado.ttipo, empleado.csubtipo,
             empleado.tsubtipo, empleado.cargo,
             empleado.tcargo, empleado.ccanal,
             empleado.tcanal, empleado.cusumod, empleado.fmodifi
        FROM empleados e
       WHERE e.sperson = psperson;

      RETURN empleado;
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
   END f_get_empleado;

   /*************************************************************************
     Funci�n que inserta/modifica un registro de empleado
     ...
     param out mensajes  : t_iax_mensajes
     return              : 0.- OK, 1.- KO
    *************************************************************************/
   FUNCTION f_set_empleado(
      psperson IN NUMBER,
      pctipo IN NUMBER,
      pcsubtipo IN NUMBER,
      pcargo IN NUMBER,
      pccanal IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER := 0;
      vpasexec       NUMBER := 1;
      vparam         VARCHAR2(500)
         := 'par�metros - psperson: ' || psperson || ' pctipo: ' || pctipo || ' pcsubtipo: '
            || pcsubtipo || ' pcargo: ' || pcargo || ' pccanal: ' || pccanal;
      vobject        VARCHAR2(200) := 'PAC_MD_EMPLEADOS_REPRESENT.f_set_empleado';
      errores        t_ob_error;
   BEGIN
      -- Control par�metros entrada
      IF psperson IS NULL
         OR pctipo IS NULL
         OR pccanal IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_empleados_representantes.f_set_empleado(psperson, pctipo, pcsubtipo,
                                                             pcargo, pccanal, errores);
      mensajes := f_traspasar_errores_mensajes(errores);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      IF mensajes IS NOT NULL THEN
         IF mensajes.COUNT > 0 THEN
            RETURN 1;
         END IF;
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
   END f_set_empleado;

   /*************************************************************************
     Funci�n que borra un registro de empleado
     ...
     param out mensajes  : t_iax_mensajes
     return              : 0.- OK, 1.- KO
    *************************************************************************/
   FUNCTION f_del_empleado(psperson IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER IS
      vidioma        NUMBER := pac_md_common.f_get_cxtidioma;
      vnumerr        NUMBER := 0;
      vpasexec       NUMBER := 1;
      vparam         VARCHAR2(500) := 'par�metros - psperson: ' || psperson;
      vobject        VARCHAR2(200) := 'PAC_MD_EMPLEADOS_REPRESENT.f_del_empleado';
      errores        t_ob_error;
   BEGIN
      -- Control par�metros entrada
      IF psperson IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_empleados_representantes.f_del_empleado(psperson, vidioma, errores);
      mensajes := f_traspasar_errores_mensajes(errores);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      IF mensajes IS NOT NULL THEN
         IF mensajes.COUNT > 0 THEN
            RETURN 1;
         END IF;
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
   END f_del_empleado;

   /*************************************************************************
     Funci�n que obtiene la lista de representantes
     param out mensajes  : t_iax_mensajes
     return              : sys_refcursor
    *************************************************************************/
   FUNCTION f_get_representantes(
      psperson IN NUMBER,
      pctipo IN NUMBER,
      pcsubtipo IN NUMBER,
      ptcompania IN VARCHAR2,
      ptpuntoventa IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vnumerr        NUMBER := 0;
      vpasexec       NUMBER := 1;
      vparam         VARCHAR2(500) := NULL;
      vobject        VARCHAR2(200) := 'PAC_MD_EMPLEADOS_REPRESENT.f_get_representantes';
      squery         VARCHAR2(3000);
      cur            sys_refcursor;
   BEGIN
      vnumerr :=
         pac_empleados_representantes.f_get_representantes(psperson, pctipo, pcsubtipo,
                                                           ptcompania, ptpuntoventa,
                                                           pac_md_common.f_get_cxtidioma,
                                                           squery);

      IF vnumerr <> 0 THEN
         RAISE e_object_error;
      END IF;

      cur := pac_md_listvalores.f_opencursor(squery, mensajes);
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
   END f_get_representantes;

   /*************************************************************************
     Funci�n que obtiene un representante
     ...
     param out mensajes  : t_iax_mensajes
     return              : ob_iax_representante
    *************************************************************************/
   FUNCTION f_get_representante(psperson IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN ob_iax_representante IS
      representante  ob_iax_representante := ob_iax_representante();
      vidioma        NUMBER := pac_md_common.f_get_cxtidioma;
      vpasexec       NUMBER;
      vparam         VARCHAR2(500) := 'par�metros - psperson: ' || psperson;
      vobject        VARCHAR2(200) := 'PAC_MD_EMPLEADOS_REPRESENT.f_get_representante';
   BEGIN
      vpasexec := 1;

      -- Control par�metros entrada
      IF psperson IS NULL THEN
         RAISE e_param_error;
      END IF;

      vpasexec := 2;

      -- obtener la informaci�n del representante
      SELECT r.sperson, r.ctipo, ff_desvalorfijo(800054, vidioma, r.ctipo) ttipo,
             r.csubtipo, ff_desvalorfijo(800055, vidioma, r.csubtipo) tsubtipo, r.tcompania,
             r.tpuntoventa, r.spercoord, r.cusumod,
             r.fmodifi
        INTO representante.sperson, representante.ctipo, representante.ttipo,
             representante.csubtipo, representante.tsubtipo, representante.tcompania,
             representante.tpuntoventa, representante.spercoord, representante.cusumod,
             representante.fmodifi
        FROM representantes r
       WHERE r.sperson = psperson;

      RETURN representante;
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
   END f_get_representante;

   /*************************************************************************
     Funci�n que inserta/modifica un registro de representante
     ...
     param out mensajes  : t_iax_mensajes
     return              : 0.- OK, 1.- KO
    *************************************************************************/
   FUNCTION f_set_representante(
      psperson IN NUMBER,
      pctipo IN NUMBER,
      pcsubtipo IN NUMBER,
      ptcompania IN VARCHAR2,
      ptpuntoventa IN VARCHAR2,
      pspercoord IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER := 0;
      vpasexec       NUMBER := 1;
      vparam         VARCHAR2(500)
         := 'par�metros - psperson: ' || psperson || ' pctipo: ' || pctipo || ' pcsubtipo: '
            || pcsubtipo || ' ptcompania: ' || ptcompania || ' ptpuntoventa: ' || ptpuntoventa
            || ' pspercoord: ' || pspercoord;
      vobject        VARCHAR2(200) := 'PAC_MD_EMPLEADOS_REPRESENT.f_set_representante';
      errores        t_ob_error;
   BEGIN
      -- Control par�metros entrada
      IF psperson IS NULL
         OR pctipo IS NULL
         OR pcsubtipo IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_empleados_representantes.f_set_representante(psperson, pctipo, pcsubtipo,
                                                                  ptcompania, ptpuntoventa,
                                                                  pspercoord, errores);
      mensajes := f_traspasar_errores_mensajes(errores);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      IF mensajes IS NOT NULL THEN
         IF mensajes.COUNT > 0 THEN
            RETURN 1;
         END IF;
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
   END f_set_representante;

   /*************************************************************************
     Funci�n que borra un registro de representante
     ...
     param out mensajes  : t_iax_mensajes
     return              : 0.- OK, 1.- KO
    *************************************************************************/
   FUNCTION f_del_representante(psperson IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER IS
      vidioma        NUMBER := pac_md_common.f_get_cxtidioma;
      vnumerr        NUMBER := 0;
      vpasexec       NUMBER := 1;
      vparam         VARCHAR2(500) := 'par�metros - psperson: ' || psperson;
      vobject        VARCHAR2(200) := 'PAC_MD_EMPLEADOS_REPRESENT.f_del_representante';
      errores        t_ob_error;
   BEGIN
      -- Control par�metros entrada
      IF psperson IS NULL THEN
         RAISE e_param_error;
      END IF;

      vnumerr := pac_empleados_representantes.f_del_representante(psperson, vidioma, errores);
      mensajes := f_traspasar_errores_mensajes(errores);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      IF mensajes IS NOT NULL THEN
         IF mensajes.COUNT > 0 THEN
            RETURN 1;
         END IF;
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
   END f_del_representante;
END pac_md_empleados_represent;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_EMPLEADOS_REPRESENT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_EMPLEADOS_REPRESENT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_EMPLEADOS_REPRESENT" TO "PROGRAMADORESCSI";
