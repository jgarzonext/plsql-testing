--------------------------------------------------------
--  DDL for Package Body PAC_IAX_OPERATIVA_FINV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_IAX_OPERATIVA_FINV" AS
   /******************************************************************************
      NOMBRE:      PAC_IAX_OPERATIVA_FINV
      PROP�SITO:   Funciones para la parte referente a productos financieros
                          de inversi�n.

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        13/03/2009   RSC                1. Creaci�n del package.
      2.0        07/04/2009   RSC                2. An�lisis adaptaci�n productos indexados
      3.0        13/07/2009   AMC                3. Nueva funci�n f_leedistribucionfinv bug 10385
      4.0        17/09/2009   RSC                4. Bug 0010828: CRE - Revisi�n de los productos PPJ din�mico y Pla Estudiant (ajustes)
      5.0        25/09/2009   JGM                5. Bug 0011175
      6.0        12/03/2010   JTS                6. 13510: CRE - Ajustes en la pantalla de entrada de valores liquidativos - AXISFINV002
      7.0        16/04/2010   RSC                7. 0014160: CEM800 - Adaptar packages de productos de inversi�n al nuevo m�dulo de siniestros
      8.0        17/02/2011   APD                8. 17243: ENSA101 - Rebuts de comissi�
      9.0        06/04/2011   JTS                9. 18136: ENSA101 - Mantenimiento cotizaciones
   ******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

   /*************************************************************************
      Recupera la los fondos de inversi�n a cargar operaciones - valores liquidativos
      param in pcacto     : codigo del acto
      param out mensajes  : mesajes de error
      return              : descripci�n del acto
   *************************************************************************/
   FUNCTION f_getfondosoperafinv(
      pcempres IN NUMBER,
      pccodfon IN NUMBER,
      pfvalor IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vcursor        sys_refcursor;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_GetFondosFinv';
   BEGIN
      --Recuperaci�n de los recibos.
      vcursor := pac_md_operativa_finv.f_getfondosoperafinv(pcempres, pccodfon, pfvalor,
                                                            mensajes);
      --Tot ok
      RETURN vcursor;
   END f_getfondosoperafinv;

   /*************************************************************************
      Realiza la grabaci�n de la operaci�n liquidativa Finv
      param in pcempres     : codigo de empresa
      param in pccodfon     : codigo de fondo de inversi�n
      param in pfvalor      : Fecha de valoraci�n
      param in piimpcmp     : Importe de compras
      param in pnunicmp     : Partipaciones o Unidades de compra
      param in piimpvnt     : Importe de ventas
      param in pnunivnt     : Participaciones o Unidades de venta
      param in piuniact     : Valor liquidativo a fecha de valoraci�n
      param in pivalact     : Valor de la operaci�n
      param in ppatrimonio  : Valor del patrimonio
      param out mensajes    : mesajes de error
      return                : num�rico
   *************************************************************************/
   -- Bug 9031 - 13/03/2009 - RSC -  iAxis: An�lisis adaptaci�n productos indexados
   -- Bug 17243 - 17/02/2011 - APD -  se a�ade el parametro ppatrimonio a la funcion
   FUNCTION f_grabaroperacionfinv(
      pcempres IN NUMBER,
      pccodfon IN NUMBER,
      pfvalor IN DATE,
      piimpcmp IN NUMBER,
      pnunicmp IN NUMBER,
      piimpvnt IN NUMBER,
      pnunivnt IN NUMBER,
      piuniact IN NUMBER,
      pivalact IN NUMBER,
      ppatrimonio IN NUMBER,
      piuniactcmp IN NUMBER,
      piuniactvtashw IN NUMBER,
      piuniactcmpshw IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_GrabarOperacionFinv';
   BEGIN
      --Recuperaci�n de los recibos.
      -- Bug 9031 - 07/04/2009 - RSC - An�lisis adaptaci�n productos indexados
      -- A�adimos NVL(pcempres, pac_md_common.f_get_cxtempresa)
      vnumerr :=
         pac_md_operativa_finv.f_grabaroperacionfinv(NVL(pcempres,
                                                         pac_md_common.f_get_cxtempresa),
                                                     pccodfon, pfvalor, piimpcmp, pnunicmp,
                                                     piimpvnt, pnunivnt, piuniact, pivalact,
                                                     ppatrimonio, piuniactcmp, piuniactcmpshw,
                                                     piuniactvtashw, mensajes);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      COMMIT;
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         ROLLBACK;
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         ROLLBACK;
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_grabaroperacionfinv;

   /*************************************************************************
      Sincroniza los valores de la operaci�n (Introducci�n de valore liquidativos
      + operaciones)
      param in picompra_in     : Importe de compra
      param in pncompra_in     : Unidades de compra
      param in piventa_in      : Importe de venta
      param in pnventa_in      : Unidades de venta
      param in piuniact_in     : Valor liquidativo
      param out picompra_out   : Importe de compra
      param out pncompra_out   : Unidades de compra
      param out piventa_out    : Importe de venta
      param out pnventa_out    : Unidades de venta
      param out pivalact_out   : Valor de operaci�n
      param out mensajes       : mesajes de error
      return                   : numerico
   *************************************************************************/
   -- Bug 9031 - 13/03/2009 - RSC -  iAxis: An�lisis adaptaci�n productos indexados
   FUNCTION f_sinccalcularoperacionfinv(
      picompra_in IN NUMBER,
      pncompra_in IN NUMBER,
      piventa_in IN NUMBER,
      pnventa_in IN NUMBER,
      piuniact_in IN NUMBER,
      picompra_out OUT NUMBER,
      pncompra_out OUT NUMBER,
      piventa_out OUT NUMBER,
      pnventa_out OUT NUMBER,
      pivalact_out OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_SincCalcularOperacionFinv';
   BEGIN
      --Recuperaci�n de los recibos.
      vnumerr := pac_md_operativa_finv.f_sinccalcularoperacionfinv(picompra_in, pncompra_in,
                                                                   piventa_in, pnventa_in,
                                                                   piuniact_in, picompra_out,
                                                                   pncompra_out, piventa_out,
                                                                   pnventa_out, pivalact_out,
                                                                   mensajes);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 0, 9001359);
      RETURN vnumerr;
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
   END f_sinccalcularoperacionfinv;

   /*************************************************************************
      Realiza la carga mediante fichero de valores liquidativos y operaciones.
      param in pruta      : ruta del fichero
      param in pfvalor    : Fecha de valoraci�n
      param out mensajes  : mesajes de error
      return              : descripci�n del acto
   *************************************************************************/
   -- Bug 9031 - 16/03/2009 - RSC -  iAxis: An�lisis adaptaci�n productos indexados
   FUNCTION f_grabaroperacionfilefinv(
      pruta IN VARCHAR2,
      pcempres IN NUMBER,
      pfvalor IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_GrabarOperacionFileFinv';
   BEGIN
      -- Bug 9031 - 07/04/2009 - RSC - An�lisis adaptaci�n productos indexados
      -- A�adimos NVL(pcempres, pac_md_common.f_get_cxtempresa)
      vnumerr :=
         pac_md_operativa_finv.f_grabaroperacionfilefinv(pruta,
                                                         NVL(pcempres,
                                                             pac_md_common.f_get_cxtempresa),
                                                         pfvalor, mensajes);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      COMMIT;
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         ROLLBACK;
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         ROLLBACK;
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_grabaroperacionfilefinv;

   /*************************************************************************
      Realiza la valoraci�n de fondos de inversi�n.
      param in pruta      : ruta del fichero
      param in pfvalor    : Fecha de valoraci�n
      param out mensajes  : mesajes de error
      return              : descripci�n del acto
   *************************************************************************/
   -- Bug 9031 - 16/03/2009 - RSC -  iAxis: An�lisis adaptaci�n productos indexados
   FUNCTION f_valorarfinv(pfvalor IN DATE, pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_ValorarFinv';
   --pcempres       NUMBER(2) := pac_md_common.f_get_cxtempresa;
   BEGIN
      --Recuperaci�n de los recibos.
      -- JGM - bug 10824 -- 31/07/09 --a�ado empresa
      vnumerr := pac_md_operativa_finv.f_valorarfinv(pfvalor, pcempres, mensajes);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 0, 106102);
      RETURN vnumerr;
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
   END f_valorarfinv;

   /*************************************************************************
      Realiza la valoraci�n de fondos de inversi�n.
      param in pruta      : ruta del fichero
      param in pfvalor    : Fecha de valoraci�n
      param out mensajes  : mesajes de error
      return              : descripci�n del acto
   *************************************************************************/
   -- Bug 9031 - 16/03/2009 - RSC -  iAxis: An�lisis adaptaci�n productos indexados
   FUNCTION f_asignarfinv(pfvalor IN DATE, pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_ValorarFinv';
      vidioma        NUMBER := pac_md_common.f_get_cxtidioma;
   --pcempres       NUMBER(2) := pac_md_common.f_get_cxtempresa;
   BEGIN
      --Recuperaci�n de los recibos.
      -- JGM - bug 10824 -- 31/07/09 --a�ado empresa
      vnumerr := pac_md_operativa_finv.f_asignarfinv(pfvalor, vidioma, pcempres, mensajes);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 0, 107224);
      RETURN vnumerr;
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
   END f_asignarfinv;

   /*************************************************************************
      Funci�n que nos retorna un literal con el estado a modificar los fondos
      de inversi�n.
      param in pfvalor     : codigo de fecha de valoraci�n
      param out mensajes  : mesajes de error
      return              : descripci�n del acto
   *************************************************************************/
   -- Bug 9031 - 16/03/2009 - RSC -  iAxis: An�lisis adaptaci�n productos indexados
   FUNCTION f_estado_a_modificar(
      pcempres IN NUMBER,
      pfvalor IN DATE,
      paestado OUT VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vaestado       VARCHAR2(30);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_SwitchToStateFinv';
   BEGIN
      --Recuperaci�n de los recibos.
      -- Bug 9031 - 07/04/2009 - RSC - An�lisis adaptaci�n productos indexados
      -- A�adimos NVL(pcempres, pac_md_common.f_get_cxtempresa)
      vaestado := pac_md_operativa_finv.f_estado_a_modificar(pcempres, pfvalor, paestado,
                                                             mensajes);

      IF vaestado IS NULL THEN
         RAISE e_object_error;
      END IF;

      RETURN vaestado;
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
   END f_estado_a_modificar;

     /*************************************************************************
      Funci�n que nos retorna un literal con el estado a modificar los fondos
      de inversi�n.
      param in pfvalor     : codigo de fecha de valoraci�n
      param out mensajes  : mesajes de error
      return              : descripci�n del acto
   *************************************************************************/
   -- Bug 9031 - 16/03/2009 - RSC -  iAxis: An�lisis adaptaci�n productos indexados
   FUNCTION f_cambio_estado(
      pcempres IN NUMBER,
      pfvalor IN DATE,
      paestado IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_MakeSwitchToStateFinv';
   BEGIN
      --Recuperaci�n de los recibos.
      -- Bug 9031 - 07/04/2009 - RSC - An�lisis adaptaci�n productos indexados
      -- A�adimos NVL(pcempres, pac_md_common.f_get_cxtempresa)
      vnumerr := pac_md_operativa_finv.f_cambio_estado(pcempres, pfvalor, paestado, mensajes);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RAISE e_object_error;
      END IF;

      pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 0, 9001360);
      RETURN vnumerr;
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
   END f_cambio_estado;

     /*************************************************************************
      Retorna el estado de los fondos de inversi�n.
      param in pcempres    : c�digo de empresa
      param in pfvalor     : codigo de fecha de valoraci�n
      param out mensajes  : mesajes de error
      return              : descripci�n del acto
   *************************************************************************/
   -- Bug 9031 - 16/03/2009 - RSC -  iAxis: An�lisis adaptaci�n productos indexados
   FUNCTION f_getestadofondosfinv(
      pcempres IN NUMBER,
      pfvalor IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_GetEstadoFondosFinv';
      vestado        VARCHAR2(30);
   BEGIN
      --Recuperaci�n de los recibos.
      -- Bug 9031 - 07/04/2009 - RSC - An�lisis adaptaci�n productos indexados
      -- A�adimos NVL(pcempres, pac_md_common.f_get_cxtempresa)
      vestado := pac_md_operativa_finv.f_getestadofondosfinv(pcempres, pfvalor, mensajes);

      IF vestado IS NULL THEN
         RAISE e_object_error;
      END IF;

      RETURN vestado;
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
   END f_getestadofondosfinv;

   /*************************************************************************
      Recupera las entradas y salidas sin consolidar producidas a un fecha de
      valoraci�n.
      param in pcempres     : codigo de empresa
      param in pccodfon     : codigo de fondo
      param in pfvalor      : codigo de valoraci�n
      param out mensajes    : mesajes de error
      return                : descripci�n del acto
   *************************************************************************/
   -- Bug 9031 - 17/03/2009 - RSC -  iAxis: An�lisis adaptaci�n productos indexados
   FUNCTION f_getentradassalidasfinv(
      pcempres IN NUMBER,
      pfvalor IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_entradasalida IS
      vresultado     t_iax_entradasalida;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_GetEntradasSalidasFinv';
   BEGIN
      --Recuperaci�n de los recibos.
      -- Bug 9031 - 07/04/2009 - RSC - An�lisis adaptaci�n productos indexados
      -- A�adimos NVL(pcempres, pac_md_common.f_get_cxtempresa)
      vresultado :=
         pac_md_operativa_finv.f_getentradassalidasfinv(NVL(pcempres,
                                                            pac_md_common.f_get_cxtempresa),
                                                        pfvalor, mensajes);
      --Tot ok
      RETURN vresultado;
   END f_getentradassalidasfinv;

   /*************************************************************************
      Generaci�n de un fichero con las entradas y salidas sin consolidar producidas
      a un fecha de valoraci�n.
      param in pcempres      : codigo de empresa
      param in pfvalor       : codigo de valoraci�n
      param out pfichero_out : fichero de salida generado
      param out mensajes     : mesajes de error
      return                 : descripci�n del acto
   *************************************************************************/
   -- Bug 9031 - 17/03/2009 - RSC -  iAxis: An�lisis adaptaci�n productos indexados
   FUNCTION f_execfileentradassalidasfinv(
      pcempres IN NUMBER,
      pfvalor IN DATE,
      pfichero_out OUT VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vresultado     NUMBER;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_GetEntradasSalidasFinv';
   BEGIN
      -- Bug 9031 - 07/04/2009 - RSC - An�lisis adaptaci�n productos indexados
      -- A�adimos NVL(pcempres, pac_md_common.f_get_cxtempresa)
      vresultado :=
         pac_md_operativa_finv.f_execfileentradassalidasfinv
                                                         (NVL(pcempres,
                                                              pac_md_common.f_get_cxtempresa),
                                                          pfvalor, pfichero_out, mensajes);
      --Tot ok
      RETURN vresultado;
   END f_execfileentradassalidasfinv;

   /***********************************************************************
      Recupera un path de directori
      param out ppath    : p�rametre carga valores
      param out mensajes : missatge d'error
      return             : 0/1 -> Tot OK/Error
   ***********************************************************************/
   FUNCTION f_get_directorio(ppath OUT VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vobjectname    VARCHAR2(500) := 'PAC_IAX_GEDOX.F_Get_Directorio';
      vparam         VARCHAR2(500) := 'par�metros';
      vpasexec       NUMBER(5) := 1;
      -- Bug 14160 - RSC - 16/04/2010 - CEM800 - Adaptar packages de productos de inversi�n al nuevo m�dulo de siniestros
      pparam_aux     VARCHAR2(20) := 'PATH_VLIQ_C';
      -- Fin Bug 14160
      vnumerr        NUMBER(1) := 0;
   BEGIN
      vpasexec := 3;
      vnumerr := pac_md_operativa_finv.f_get_directorio(pparam_aux, ppath, mensajes);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, 1000001, vnumerr);
         RAISE e_object_error;
      END IF;

      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_get_directorio;

   /***********************************************************************
      Recupera la informaci� del perfil d'inversi�
      param in  psseguro : Cod. del seguro
      param out mensajes : missatge d'error
      return             : ob_iax_produlkmodelosinv

      Bug 10385 - 13/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_leedistribucionfinv(psseguro IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN ob_iax_produlkmodelosinv IS
      vobjectname    VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_leedistribucionfinv';
      vparam         VARCHAR2(500) := 'par�metros psseguro:' || psseguro;
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(1) := 0;
      distr          ob_iax_produlkmodelosinv;
   BEGIN
      vpasexec := 1;
      distr := pac_md_obtenerdatos.f_leedistribucionfinv(mensajes, psseguro);

      IF mensajes IS NOT NULL THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, 1000001, vnumerr);
         RAISE e_object_error;
      END IF;

      RETURN distr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000006, vpasexec, vparam);
         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000005, vpasexec, vparam);
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN NULL;
   END f_leedistribucionfinv;

   /***********************************************************************
        JGM 22-09-2009.
        Devolver� una colecci�n de objetos T_IAX_TABVALCES, rsultado de buscar en la tabla tabvalces
        para el ccesta igual al par�metro pccesta.

      param in  pcempres : Cod. Empresa
      param in  pccesta : Cod. de la cesta
      param in  pcidioma: idioma
      param out mensajes : missatge d'error
      return             : t_iax_TABVALCES

      Bug 0011175:
   ***********************************************************************/
   FUNCTION f_get_tabvalces(
      pcempres IN NUMBER,
      pccesta IN NUMBER,
      pcidioma IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_tabvalces IS
      vobjectname    VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_get_tabvalces';
      vparam         VARCHAR2(500)
                               := 'par�metros pccesta:' || pccesta || ' pcidioma:' || pcidioma;
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(1) := 0;
      tabval         t_iax_tabvalces;
   BEGIN
      vpasexec := 1;

      IF pccesta IS NULL
         OR pcempres IS NULL
         OR pcidioma IS NULL THEN
         RAISE e_object_error;
      END IF;

      tabval := pac_md_operativa_finv.f_get_tabvalces(pcempres, pccesta, pcidioma, mensajes);

      IF mensajes IS NOT NULL THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, 1000001, vnumerr);
         RAISE e_object_error;
      END IF;

      RETURN tabval;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000006, vpasexec, vparam);
         RETURN NULL;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000005, vpasexec, vparam);
         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN NULL;
   END f_get_tabvalces;

   /*************************************************************************
      Recupera las entradas y salidas sin consolidar producidas a un fecha de
      valoraci�n (nueva versi�n CRE).
      param in pcempres     : codigo de empresa
      param in pccodfon     : codigo de fondo
      param in pfvalor      : codigo de valoraci�n
      param out mensajes    : mesajes de error
      return                : descripci�n del acto
   *************************************************************************/
   -- Bug 10828 - 14/10/2009 - RSC - CRE - Revisi�n de los productos PPJ din�mico y Pla Estudiant (ajustes)
   FUNCTION f_getentsal_ampliado(
      pcempres IN NUMBER,
      pfvalor IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_entradasalida IS
      vresultado     t_iax_entradasalida;
      vnumerr        NUMBER;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.f_getentsal_ampliado';
   BEGIN
      vresultado :=
         pac_md_operativa_finv.f_getentsal_ampliado(NVL(pcempres,
                                                        pac_md_common.f_get_cxtempresa),
                                                    pfvalor, mensajes);
      RETURN vresultado;
   END f_getentsal_ampliado;

   /*************************************************************************
      FUNCTION f_control_valorpart
      param in pcempres     : codigo de empresa
      param in pccodfon     : codigo de fondo
      param in pfvalor      : codigo de valoraci�n
      param in piuniact     : iuniact
      param out mensajes    : mesajes de error
      return                : literal
      --BUG 13510 - JTS - 12/03/2010
   *************************************************************************/
   FUNCTION f_control_valorpart(
      pcempres IN NUMBER,
      pccodfon IN NUMBER,
      pfvalor IN DATE,
      piuniact IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vobjectname    VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_control_valorpart';
      vparam         VARCHAR2(500)
         := 'par�metros - pcempres: ' || pcempres || ', pccodfon: ' || pccodfon
            || ', pfvalor: ' || pfvalor || ', piuniact: ' || piuniact;
      vpasexec       NUMBER(5) := 1;
      v_error        NUMBER;
   BEGIN
      v_error := pac_md_operativa_finv.f_control_valorpart(pcempres, pccodfon, pfvalor,
                                                           piuniact, mensajes);

      IF v_error != 0 THEN
         RAISE e_object_error;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_control_valorpart;

   /*************************************************************************
      FUNCTION f_filecotizaciones
      param in pruta        : ruta del fichero
      param in pcempres     : codigo de empresa
      param in pfvalor      : codigo de valoraci�n
      param out mensajes    : mesajes de error
      return                : 0 ok
                              1 ko
      --BUG 18136 - JTS - 06/04/2011
   *************************************************************************/
   FUNCTION f_filecotizaciones(
      pruta IN VARCHAR2,
      pcempres IN NUMBER,
      pfvalor IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_filecotizaciones';
      vnerror        NUMBER;
   BEGIN
      vnerror := pac_md_operativa_finv.f_filecotizaciones(pruta, pcempres, pfvalor, mensajes);
      vpasexec := 2;

      IF vnerror = 1 THEN
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
   END f_filecotizaciones;

   /*************************************************************************
      Recupera las cotizaciones de monedas
      param in pcmonori   :  moneda origen
      param in pcmondes   :  moneda destino
      param out mensajes  :  mesajes de error
      return              :  sys_refcursor
   *************************************************************************/
   -- Bug 18136 - JTS - 07/04/2011
   FUNCTION f_getcotizaciones(
      pcmonori IN VARCHAR2,
      pcmondes IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vobjectname    VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_getcotizaciones';
      vparam         VARCHAR2(500)
                        := 'par�metros - pcmonori: ' || pcmonori || ', pcmondes: ' || pcmondes;
      vpasexec       NUMBER(5) := 1;
      vcursor        sys_refcursor;
      vsquery        VARCHAR2(9000);
   BEGIN
      vpasexec := 1;
      vcursor := pac_md_operativa_finv.f_getcotizaciones(pcmonori, pcmondes, mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_getcotizaciones;

   /*************************************************************************
       Recupera las monedas
      param out mensajes  :  mesajes de error
      return              :  sys_refcursor
   *************************************************************************/
   -- Bug 18136 - JTS - 07/04/2011
   FUNCTION f_monedas(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vobjectname    VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_monedas';
      vparam         VARCHAR2(500) := '';
      vpasexec       NUMBER(5) := 1;
      vcursor        sys_refcursor;
      vsquery        VARCHAR2(9000);
   BEGIN
      vpasexec := 1;
      vcursor := pac_md_operativa_finv.f_monedas(mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_monedas;

   /*************************************************************************
      Recupera el hist�rico de cotizaciones de monedas
      param in pcmonori   :  moneda origen
      param in pcmondes   :  moneda destino
      param out mensajes  :  mesajes de error
      return              :  sys_refcursor
   *************************************************************************/
   -- Bug 18136 - JTS - 07/04/2011
   FUNCTION f_gethistcotizaciones(
      pcmonori IN VARCHAR2,
      pcmondes IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vobjectname    VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_gethistcotizaciones';
      vparam         VARCHAR2(500)
                        := 'par�metros - pcmonori: ' || pcmonori || ', pcmondes: ' || pcmondes;
      vpasexec       NUMBER(5) := 1;
      vcursor        sys_refcursor;
      vsquery        VARCHAR2(9000);
   BEGIN
      vpasexec := 1;
      vcursor := pac_md_operativa_finv.f_gethistcotizaciones(pcmonori, pcmondes, mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_gethistcotizaciones;

   /*************************************************************************
      Recupera nueva cotizacion de monedas
      param in pcmonori   :  moneda origen
      param in pcmondes   :  moneda destino
      param out mensajes  :  mesajes de error
      return              :  sys_refcursor
   *************************************************************************/
   -- Bug 18136 - JTS - 07/04/2011
   FUNCTION f_newcotizacion(
      pcmonori IN VARCHAR2,
      pcmondes IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vobjectname    VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_newcotizacion';
      vparam         VARCHAR2(500)
                        := 'par�metros - pcmonori: ' || pcmonori || ', pcmondes: ' || pcmondes;
      vpasexec       NUMBER(5) := 1;
      vcursor        sys_refcursor;
      vsquery        VARCHAR2(9000);
   BEGIN
      vpasexec := 1;
      vcursor := pac_md_operativa_finv.f_newcotizacion(pcmonori, pcmondes, mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_newcotizacion;

      /*************************************************************************
      Crea nueva cotizacion de monedas
      param in pcmonori   :  moneda origen
      param in pcmondes   :  moneda destino
      param out mensajes  :  mesajes de error
      return              :  error
   *************************************************************************/
   -- Bug 18136 - JTS - 07/04/2011
   FUNCTION f_creacotizacion(
      pcmonori IN VARCHAR2,
      pcmondes IN VARCHAR2,
      pfvalor IN DATE,
      ptasa IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vobjectname    VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_creacotizacion';
      vparam         VARCHAR2(500)
         := 'par�metros - pcmonori: ' || pcmonori || ', pcmondes: ' || pcmondes
            || ', pfvalor: ' || TO_CHAR(pfvalor, 'ddmmyyyy') || ', ptasa: ' || ptasa;
      vpasexec       NUMBER(5) := 1;
      vret           NUMBER;
   BEGIN
      vpasexec := 1;
      vret := pac_md_operativa_finv.f_creacotizacion(pcmonori, pcmondes, pfvalor, ptasa,
                                                     mensajes);

      IF vret = 0 THEN
         COMMIT;
      ELSE
         ROLLBACK;
         RAISE e_object_error;
      END IF;

      RETURN vret;
   EXCEPTION
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN 1;
   END f_creacotizacion;

   /*************************************************************************
      Recupera los gastos de los fondos
      param in pcempres   :
      param in pccodfon   :
      param out mensajes  :  mesajes de error
      return              :  sys_refcursor
   *************************************************************************/
   --BUG18799 - JTS - 16/06/2011
   FUNCTION f_get_fongastos(pcempres IN NUMBER, pccodfon IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vobjectname    VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_get_fongastos';
      vparam         VARCHAR2(500)
                        := 'par�metros - pcempres: ' || pcempres || ', pccodfon: ' || pccodfon;
      vpasexec       NUMBER(5) := 1;
      vcursor        sys_refcursor;
   BEGIN
      vpasexec := 1;
      vcursor := pac_md_operativa_finv.f_get_fongastos(pcempres, pccodfon,
                                                       pac_md_common.f_get_cxtidioma,
                                                       mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_fongastos;

   /*************************************************************************
      Recupera los gastos de los fondos
      param in pcempres   :
      param in pccodfon   :
      param out mensajes  :  mesajes de error
      return              :  sys_refcursor
   *************************************************************************/
   --BUG18799 - JTS - 16/06/2011
   FUNCTION f_get_fongastos_hist(pccodfon IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vobjectname    VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_get_fongastos_hist';
      vparam         VARCHAR2(500) := 'par�metros - pccodfon: ' || pccodfon;
      vpasexec       NUMBER(5) := 1;
      vcursor        sys_refcursor;
   BEGIN
      vpasexec := 1;
      vcursor := pac_md_operativa_finv.f_get_fongastos_hist(pccodfon,
                                                            pac_md_common.f_get_cxtidioma,
                                                            mensajes);
      RETURN vcursor;
   EXCEPTION
      WHEN OTHERS THEN
         IF vcursor%ISOPEN THEN
            CLOSE vcursor;
         END IF;

         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobjectname, 1000001, vpasexec, vparam,
                                           NULL, SQLCODE, SQLERRM);
         RETURN vcursor;
   END f_get_fongastos_hist;

   /*************************************************************************
      FUNCTION f_set_reggastos
      param out mensajes  :  mesajes de error
      return              :  error
   *************************************************************************/
   --BUG18799 - JTS - 16/06/2011
   FUNCTION f_set_reggastos(
      pccodfon IN NUMBER,
      pfinicio IN DATE,
      pffin IN DATE,
      piimpmin IN NUMBER,
      piimpmax IN NUMBER,
      pcdivisa IN NUMBER,
      ppgastos IN NUMBER,
      piimpfij IN NUMBER,
      pcolumn9 IN NUMBER,
      pctipcom IN NUMBER,
      pcconcep IN NUMBER,
      pctipocalcul IN NUMBER,
      pclave IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vobject        VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_set_reggastos';
      vparam         VARCHAR2(500)
                        := 'par�metros - pccodfon: ' || pccodfon || ', pfinicio: ' || pfinicio;
      vpasexec       NUMBER(5) := 1;
      verror         NUMBER;
   BEGIN
      verror := pac_md_operativa_finv.f_set_reggastos(pccodfon, pfinicio, pffin, piimpmin,
                                                      piimpmax, pcdivisa, ppgastos, piimpfij,
                                                      pcolumn9, pctipcom, pcconcep,
                                                      pctipocalcul, pclave, mensajes);

      IF verror > 0 THEN
         ROLLBACK;
         RAISE e_object_error;
      END IF;

      COMMIT;
      RETURN 0;
   EXCEPTION
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_reggastos;

   /*************************************************************************
      Retorna si ha de mostrar o no la icone de impresora.
      Tamb� retorna el literal que es comenta en el bug "P�lissa amb operacions pedents de valorar"
      param in pcempres   :
      param in psseguro   :
      param in pcidioma   :
      param out mensajes  :  mesajes de error
      return              :  sys_refcursor
   *************************************************************************/
   FUNCTION f_op_pdtes_valorar(
      pcempres IN NUMBER,
      psseguro IN NUMBER,
      pcidioma IN NUMBER,
      pliteral OUT VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vobjectname    VARCHAR2(500) := 'PAC_MD_OPERATIVA_FINV.f_op_pdtes_valorar';
      vparam         VARCHAR2(500)
         := 'par�metros - pcempres: ' || pcempres || ', psseguro: ' || psseguro
            || ', pcidioma: ' || pcidioma;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_Op_Pdtes_Valorar';
      vpasexec       NUMBER(5) := 1;
      vnumero        NUMBER := 1;
   BEGIN
      vpasexec := 1;
      vnumero := pac_md_operativa_finv.f_op_pdtes_valorar(pcempres, psseguro, pcidioma,
                                                          pliteral, mensajes);
      RETURN vnumero;
   END f_op_pdtes_valorar;

   /******************************************************************************
      funci�n que graba o actualiza el estado de un fondo.

      param in:       pccodfon
      param in :      pfecha
      param in:       ptfonabv
      param in out:   mensajes

     ******************************************************************************/
   FUNCTION f_set_estado_fondo(
      pccodfon IN NUMBER,
      pfecha IN DATE,
      pcestado IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      nerror         NUMBER;
   BEGIN
      nerror := pac_mantenimiento_fondos_finv.f_set_estado_fondo(pccodfon, pfecha, pcestado,
                                                                 mensajes);
   END f_set_estado_fondo;

/******************************************************************************
    funci�n que recupera fondos para un rescate

    param in:       pccodfon
    param out:      ptfonabv
    param out:      mensajes

   ******************************************************************************/
   FUNCTION f_get_datos_rescate(
      psseguro IN NUMBER,
      pctipcal IN NUMBER,
      pfondos OUT t_iax_datos_fnd,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      retorno        NUMBER;
      resc_exception EXCEPTION;
      vobject        VARCHAR2(60) := 'PAC_IAX_OPERATIVA_FINV.F_GET_DATOS_RESCATE';
      vpasexec       NUMBER := 0;
      vparam         VARCHAR2(60) := 'psseguro:' || psseguro;
   BEGIN
      retorno := pac_md_operativa_finv.f_get_datos_rescate(psseguro, pctipcal, pfondos,
                                                           mensajes);

      IF retorno <> 0 THEN
         RAISE resc_exception;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN resc_exception THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
   END f_get_datos_rescate;

   /******************************************************************************
    funci�n que rea�iza un switch por miporte

    param in:       psseguro
    param in:       pfecha
    param in:       plstfondos
    param out:      mensajes

   ******************************************************************************/
   FUNCTION f_switch_importe(
      psseguro IN NUMBER,
      pfecha IN DATE,
      plstfondos IN t_iax_info,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vlstfondos     t_iax_produlkmodinvfondo := t_iax_produlkmodinvfondo();
      vobfondo       ob_iax_produlkmodinvfondo := ob_iax_produlkmodinvfondo();
      verror         NUMBER;
      vobject        VARCHAR2(60) := 'PAC_IAX_OPERATIVA_FINV.F_SWITCH_IMPORTE';
      vpasexec       NUMBER := 0;
      vparam         VARCHAR2(500)
                      := 'psseguro:' || psseguro || 'pfecha:' || TO_CHAR(pfecha, 'dd/mm/yyyy');
   BEGIN
      FOR i IN plstfondos.FIRST .. plstfondos.LAST LOOP
         p_tab_error(f_sysdate, f_user, vobject, 2222, plstfondos(i).nombre_columna,
                     plstfondos(i).valor_columna);
         vobfondo.ccodfon := plstfondos(i).nombre_columna;
         vobfondo.ivalact := plstfondos(i).valor_columna;
         vlstfondos.EXTEND;
         vlstfondos(vlstfondos.LAST) := vobfondo;
         vobfondo := ob_iax_produlkmodinvfondo();
      END LOOP;

      vpasexec := 1;
      verror := pac_md_operativa_finv.f_switch_importe(psseguro, pfecha, vlstfondos, mensajes);

      IF verror <> 0 THEN
         vpasexec := 2;
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, verror, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_switch_importe;

     /*************************************************************************
      Retorna el tipo de fondo
      param in pcempres    : c�digo de empresa
      param in pfvalor     : codigo de fecha de valoraci�n
      param out mensajes  : mesajes de error
      return              : descripci�n del acto
   *************************************************************************/
   FUNCTION f_getctipfonfinv(
      pcempres IN NUMBER,
      pccodfon IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_OPERATIVA_FINV.F_getctipfonfinv';
      vctipfon       NUMBER;
   BEGIN
      vctipfon := pac_md_operativa_finv.f_getctipfonfinv(pcempres, pccodfon, mensajes);

      IF vctipfon IS NULL THEN
         RAISE e_object_error;
      END IF;

      RETURN vctipfon;
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
   END f_getctipfonfinv;

-- Bug 36746/0211309 - APD - 17/09/2015 - se crea la funcion
   FUNCTION f_get_lstfondosseg(
      pcempres IN NUMBER,
      psseguro IN NUMBER,
      pfecha IN DATE,
      plstfondos OUT sys_refcursor,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vobject        VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.F_GetFondosOperaFinv';
      vparam         VARCHAR2(500)
         := 'parametros - pcempres: ' || pcempres || ', psseguro: ' || psseguro
            || ', pfecha: ' || TO_CHAR(pfecha, 'DD/MM/YYYY');
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(8) := 0;
   BEGIN
      vpasexec := 1;
      vnumerr := pac_md_operativa_finv.f_get_lstfondosseg(pcempres, psseguro, pfecha,
                                                          plstfondos, mensajes);

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
   END f_get_lstfondosseg;

-- Bug 36746/0211309 - APD - 17/09/2015 - se crea la funcion
   FUNCTION f_switch_fondos(
      pccodfonori IN NUMBER,
      pccodfondtn IN NUMBER,
      psseguro IN NUMBER,
      pfecha IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vobject        VARCHAR2(500) := 'PAC_IAX_OPERATIVA_FINV.f_switch_fondos';
      vparam         VARCHAR2(500)
         := 'parametros - pccodfonori: ' || pccodfonori || ', pccodfondtn: ' || pccodfondtn
            || ', psseguro: ' || psseguro || ', pfecha: ' || TO_CHAR(pfecha, 'ddmmyyyy');
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(8) := 0;
   BEGIN
      vpasexec := 1;
      vnumerr := pac_md_operativa_finv.f_switch_fondos(pccodfonori, pccodfondtn, psseguro,
                                                       pfecha, mensajes);

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
   END f_switch_fondos;
END pac_iax_operativa_finv;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_OPERATIVA_FINV" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_OPERATIVA_FINV" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_OPERATIVA_FINV" TO "PROGRAMADORESCSI";
