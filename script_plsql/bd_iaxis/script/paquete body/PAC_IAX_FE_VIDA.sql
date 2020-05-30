--------------------------------------------------------
--  DDL for Package Body PAC_IAX_FE_VIDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_IAX_FE_VIDA" AS
/******************************************************************************
   NOMBRE:       PAC_IAX_FE_VIDA
   PROP�SITO:  Funciones necesarias para la generacion de las Cartas de Fe de Vida

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
    1.0        07/09/2010   ETM              1. Creaci�n del package.--0015884: CEM - Fe de Vida. Nuevos paquetes PLSQL
    2.0        19/01/2011   APD              2. Bug 15289 : Cartas Fe de Vida
   ******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;
   mensajes       t_iax_mensajes := NULL;

-- Bug 15289 - APD - 21/01/2011 - se crea la funcion
   /*************************************************************************
   Funci�n  F_PERCEPTORES_RENTA
   Devuelve las personas que reciben la renta.
   Solo se mostraran aquellas personas a las cuales se les ha enviado la carta de
   fe de vida previamente y que aun no han confirmado su fe de vida
      param in psseguro: identificador del seguro
      param out mensajes : mesajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_perceptores_renta(psseguro IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := 'psseguro: ' || psseguro;
      vobject        VARCHAR2(200) := 'PAC_IAX_FE_VIDA.f_perceptores_renta';
      cur            sys_refcursor;
      squery         VARCHAR2(1000);
   BEGIN
      IF psseguro IS NULL THEN
         RAISE e_param_error;
      END IF;

      vpasexec := 3;
      cur := pac_md_fe_vida.f_perceptores_renta(psseguro, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam, NULL,
                                           SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_perceptores_renta;

/*******************************************************************************
   FUNCION  F_GET_DATOS_FE_VIDA
   -funci�n qdevolver� un REF CURSOR con las p�lizas que deben enviar la carta de fe de vida.
   Par�metros:
    Entrada :
    1.   psproces. Identificador del proceso.
    2.   pcempres. Identificador de la empresa. Obligatorio.
    3.   pcramo. Identificador del ramo.
    4.   psproduc. Identificador del producto.
    5.   pcagente. Identificador del agente.
    6.   pnpoliza. N�mero de p�liza.
    7.   pncertif. N�mero de certificado.
    8.   pfhasta. Fecha hasta la cual se realiza la solicitud de fe de vida. Obligatorio.
    9.   pngenerar. Identificador de generaci�n de cartas. 0.-Se generan las cartas por primera vez;1.-Se vuelve a reimprimir el listado (map). Obligatorio (valor por defecto 0)
    10.  pnpantalla. Identificador de visualizaci�n o no del resultado de la select por pantalla. 0.-No se visualiza el resultado de la select por pantalla (el resultado de la select se utiliza en el map);1.-S� se visualiza el resultado de la select por pantalla. Obligatorio (valor por defecto 0)

    Salida :
      Mensajes T_IAX_MENSAJES

   Retorna : REF CURSOR.
   ********************************************************************************/
   FUNCTION f_get_datos_fe_vida(
      psproces IN NUMBER,
      pcempres IN NUMBER,
      pcramo IN NUMBER,
      psproduc IN NUMBER,
      pcagente IN NUMBER,
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      pfhasta IN DATE,
      pngenerar IN NUMBER DEFAULT 0,
      pnpantalla IN NUMBER DEFAULT 0,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vsproces       NUMBER;
      vcempres       NUMBER;
      vcramo         NUMBER;
      vsproduc       NUMBER;
      vcagente       NUMBER;
      vnpoliza       NUMBER;
      vncertif       NUMBER;
      vfhasta        DATE;
      cur            sys_refcursor;
      vnumerr        NUMBER := 0;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(4000)
         := 'psproces=' || psproces || ' pcempres=' || pcempres || ' pcramo=' || pcramo
            || ' psproduc=' || psproduc || ' pcagente=' || pcagente || ' pnpoliza='
            || pnpoliza || ' pncertif=' || pncertif || ' pfhasta=' || pfhasta || ' pngenerar='
            || pngenerar || ' pnpantalla= ' || pnpantalla;
      vobject        VARCHAR2(200) := 'PAC_IAX_FE_VIDA.f_get_datos_fe_vida';
   BEGIN
      -- comprobar campos obligatorios
      IF pngenerar = 0 THEN
         IF pcempres IS NULL
            OR pfhasta IS NULL THEN
            RAISE e_param_error;
         END IF;
      ELSIF pngenerar = 1 THEN
         IF psproces IS NULL
            OR pcempres IS NULL THEN   -- Bug 15289 - APD - 19/01/2011 - la empresa s� que es necesaria
            RAISE e_param_error;
         END IF;
      END IF;

      vsproces := psproces;
      vcempres := pcempres;
      vcramo := pcramo;
      vsproduc := psproduc;
      vcagente := pcagente;
      vnpoliza := pnpoliza;
      vncertif := pncertif;
      vfhasta := pfhasta;

      -- campos que deben estar informados en funcion del valor de pngenerar
      IF pngenerar = 0 THEN
         -- el sproces no debe estar informado ya que queremos que se generen las cartas
         vsproces := NULL;
      ELSIF pngenerar = 1 THEN
         -- solo debe estar informado el sprcoes
         --vcempres := NULL; -- Bug 15289 - APD - 19/01/2011 - la empresa s� que es necesaria
         vcramo := NULL;
         vsproduc := NULL;
         vcagente := NULL;
         vnpoliza := NULL;
         vncertif := NULL;
         vfhasta := NULL;
      END IF;

      vpasexec := 2;

      -- Si el psproces (��OJO!!! no confundir con vsproces) no est� informado s� se puede
      -- llamar a la funcion pac_md_fe_vida.f_get_datos_fe_vida para que devuelva las
      -- p�lizas que deben enviar la carta de fe de vida, en caso contrario NO.
      -- Esto se hace para no modificar la pantalla AXISCTR109.-Generar Cartas Fe de Vida.
      -- Lo que se quiere es que si el psproces est� informado no muestre los datos
      -- de las polizas en el multiregistro Detalle Cartas Fe de Vida, ya que al filtrar
      -- por un proceso (se ha informado el Proceso en la pantalla de busqueda) los datos
      -- que se quieren consultar se ver�n al REIMPRIMIR el listado
      IF psproces IS NULL THEN
         cur := pac_md_fe_vida.f_get_datos_fe_vida(vsproces, vcempres, vcramo, vsproduc,
                                                   vcagente, vnpoliza, vncertif, vfhasta,
                                                   pngenerar, pnpantalla, mensajes);
      END IF;

      vpasexec := 3;
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_datos_fe_vida;

   /*******************************************************************************
   FUNCION  F_GENERAR_FE_VIDA
   -funci�n que genera el fichero con las p�lizas a las cuales se les debe enviar la carta de fe de vida
       y crea un apunte en la Agenda de dichas p�lizas indicando que se ha enviado la carta.
   -Llamar� a la funci�n PAC_MD_FE_DE_VIDA.F_GENERAR_FE_VIDA.
   Par�metros:
    Entrada :
        1.  psproces IN. Identificador del proceso. Obligatorio si pngenerar = 1.
        2.  pcempres IN. Identificador de la empresa. Obligatorio.
        3.  pcramo IN. Identificador del ramo.
        4.  psproduc IN. Identificador del producto.
        5.  pcagente IN. Identificador del agente.
        6.  pnpoliza IN. N�mero de p�liza.
        7.  pncertif IN. N�mero de certificado.
        8.  pfhasta. IN Fecha hasta la cual se realiza la solicitud de fe de vida. Obligatorio.
        9.  pngenerar IN. Identificador de generaci�n de cartas. 0.-Se generan las cartas por primera vez;1.-Se vuelve a reimprimir el listado (map). Obligatorio (valor por defecto 0)
   Salida :
     10. sproces OUT. Identificador del proceso.
      Mensajes T_IAX_MENSAJES

   Retorna : number 0 ok, 1 error
   ********************************************************************************/
   FUNCTION f_generar_fe_vida(
      psproces IN NUMBER,
      pcempres IN NUMBER,
      pcramo IN NUMBER,
      psproduc IN NUMBER,
      pcagente IN NUMBER,
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      pfhasta IN DATE,
      pngenerar IN NUMBER DEFAULT 0,
      sproces OUT NUMBER,
      pnomfich OUT VARCHAR2,
      vtimp OUT t_iax_impresion,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vsproces       NUMBER;
      vcempres       NUMBER;
      vcramo         NUMBER;
      vsproduc       NUMBER;
      vcagente       NUMBER;
      vnpoliza       NUMBER;
      vncertif       NUMBER;
      vfhasta        DATE;
      numerr         NUMBER := 0;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(4000)
         := 'psproces=' || psproces || ' pcempres=' || pcempres || ' pcramo=' || pcramo
            || ' psproduc=' || psproduc || ' pcagente=' || pcagente || ' pnpoliza='
            || pnpoliza || ' pncertif=' || pncertif || ' pfhasta='
            || TO_CHAR(pfhasta, 'dd/mm/yyyy') || ' pngenerar=' || pngenerar;
      vobject        VARCHAR2(200) := 'PAC_IAX_FE_VIDA.F_GENERAR_FE_VIDA';
   BEGIN
      IF pngenerar = 0 THEN
         IF pcempres IS NULL
            OR pfhasta IS NULL THEN
            RAISE e_param_error;
         END IF;
      ELSIF pngenerar = 1 THEN
         IF psproces IS NULL
            OR pcempres IS NULL THEN   -- Bug 15289 - APD - 19/01/2011 - la empresa s� que es necesaria
            RAISE e_param_error;
         END IF;
      END IF;

      vsproces := psproces;
      vcempres := pcempres;
      vcramo := pcramo;
      vsproduc := psproduc;
      vcagente := pcagente;
      vnpoliza := pnpoliza;
      vncertif := pncertif;
      vfhasta := pfhasta;

      -- campos que deben estar informados en funcion del valor de pngenerar
      IF pngenerar = 0 THEN
         -- el sproces no debe estar informado ya que queremos que se generen las cartas
         vsproces := NULL;
      ELSIF pngenerar = 1 THEN
         -- solo debe estar informado el sprcoes
         --vcempres := NULL; -- Bug 15289 - APD - 19/01/2011 - la empresa s� que es necesaria
         vcramo := NULL;
         vsproduc := NULL;
         vcagente := NULL;
         vnpoliza := NULL;
         vncertif := NULL;
         vfhasta := NULL;
      END IF;

      numerr := pac_md_fe_vida.f_generar_fe_vida(vsproces, vcempres, vcramo, vsproduc,
                                                 vcagente, vnpoliza, vncertif, vfhasta,
                                                 pngenerar, sproces, pnomfich, vtimp, mensajes);
      vpasexec := 2;

      IF numerr <> 0 THEN
         RETURN 1;
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
   END f_generar_fe_vida;

/*******************************************************************************
   FUNCION  F_GET_CONSULTA_FE_VIDA
   -funci�n que devolver� un REF CURSOR con las p�lizas que tienen un apunte en la Agenda de tipo 31
   -Llamar� a la funci�n PAC_MD_FE_DE_VIDA.F_GET_CONSULTA_FE_VIDA
   Par�metros:
    Entrada :
    1.   pcidioma. Identificador del idioma.
    2.   pcempres. Identificador de la empresa. Obligatorio.
    3.   psproduc. Identificador del producto.
    4.   pfinicial. Fecha inicio.
    5.   pffinal. Fecha final
    6.   pcramo. Identificador del ramo.
    7.   pcagente. Identificador del agente.
    8.   pcagrpro. Identificador de la agrupaci�n de la p�liza.

    Salida :
      Mensajes T_IAX_MENSAJES

   Retorna : REF CURSOR.
   ********************************************************************************/
   FUNCTION f_get_consulta_fe_vida(
      pcidioma IN NUMBER,
      pcempres IN NUMBER,
      psproduc IN NUMBER,
      pfinicial IN DATE,
      pffinal IN DATE,
      pcramo IN NUMBER,
      pcagente IN NUMBER,
      pcagrpro IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vobject        VARCHAR2(500) := 'PAC_IAX_FE_VIDA.F_GET_CONSULTA_FE_VIDA';
      vparam         VARCHAR2(4000)
         := 'pcidioma=' || pcidioma || ' pcempres=' || pcempres || ' psproduc=' || psproduc
            || ' pfinicial=' || pfinicial || ' pffinal=' || pffinal || ' pcramo=' || pcramo
            || ' pcagente= ' || pcagente || ' pcagrpro=' || pcagrpro;
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(8) := 0;
      vquery         VARCHAR2(4000);
      cur            sys_refcursor;
   BEGIN
         /*
         Nueva funci�n que devuelve las p�lizas que tienen un apunte en la Agenda de tipo 31.-Env�o de Cartas de Fe de vida que cumplan con los filtros seleccionados.  Dichas p�lizas deben cumplir los siguientes requisitos:

      "  P�lizas vigentes y no retenidas por siniestro o rescate.
      "  Se debe de haber enviado anteriormente la carta de fe de vida (existe un apunte en la Agenda de tipo Env�o Carta Fe de Vida).

         */
      IF pcempres IS NULL
         OR pfinicial IS NULL
         OR pffinal IS NULL THEN
         RAISE e_param_error;
      END IF;

      cur := pac_md_fe_vida.f_get_consulta_fe_vida(pcidioma, pcempres, psproduc, pfinicial,
                                                   pffinal, pcramo, pcagente, pcagrpro,
                                                   mensajes);
      vpasexec := 2;
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_consulta_fe_vida;

   /*******************************************************************************
     FUNCION   F_GET_RENTAS_BLOQUEADAS
     -funci�n que devuelve las p�lizas con rentas bloqueadas debido a que no se ha certificado todav�a la fe de vida de los titulares del contrat
     -Llamar� a la funci�n PAC_MD_FE_VIDA.F_GET_RENTAS_BLOQUEADAS
     Par�metros:
      Entrada :

          1.  pcidioma. Identificador del idioma.
          2.  pcempres. Identificador de la empresa. Obligatorio.
          3.  psproduc. Identificador del producto.
          4.  pfinicial. Fecha inicio.
          5.  pffinal. Fecha final
          6.  pcramo. Identificador del ramo.
          7.  pcagente. Identificador del agente.
          8.  pcagrpro. Identificador de la agrupaci�n de la p�liza.

      Salida :
        Mensajes T_IAX_MENSAJES

     Retorna : REF CURSOR.
     ********************************************************************************/
   FUNCTION f_get_rentas_bloqueadas(
      pcidioma IN NUMBER,
      pcempres IN NUMBER,
      psproduc IN NUMBER,
      pfinicial IN DATE,
      pffinal IN DATE,
      pcramo IN NUMBER,
      pcagente IN NUMBER,
      pcagrpro IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vobject        VARCHAR2(500) := 'PAC_IAX_FE_VIDA.F_GET_RENTAS_BLOQUEADAS ';
      vparam         VARCHAR2(4000)
         := 'pcidioma=' || pcidioma || ' pcempres=' || pcempres || ' psproduc=' || psproduc
            || ' pfinicial=' || pfinicial || ' pffinal=' || pffinal || ' pcramo=' || pcramo
            || ' pcagente= ' || pcagente || ' pcagrpro=' || pcagrpro;
      vpasexec       NUMBER(5) := 1;
      vnumerr        NUMBER(8) := 0;
      vquery         VARCHAR2(4000);
      cur            sys_refcursor;
   BEGIN
         /*
         debe cumplir
      "  P�lizas vigentes y no retenidas por siniestro o rescate.
      "  Se debe de haber enviado anteriormente la carta de fe de vida (existe un apunte en la Agenda de tipo Env�o Carta Fe de Vida en estado Pendiente).
      "  La p�liza est� bloqueada (pagosrenta.cblopag = 5.-Bloqueada)

         */
      IF pcempres IS NULL
         OR pfinicial IS NULL
         OR pffinal IS NULL THEN
         RAISE e_param_error;
      END IF;

      cur := pac_md_fe_vida.f_get_rentas_bloqueadas(pcidioma, pcempres, psproduc, pfinicial,
                                                    pffinal, pcramo, pcagente, pcagrpro,
                                                    mensajes);
      vpasexec := 2;
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_rentas_bloqueadas;

---------------------------------------
----------------------------------------
 /*******************************************************************************
  FUNCION  F_CONFIRMAR_FE_VIDA
  -funci�n que se encargar� de validar y confirmar la certificaci�n de fe de vida de los titulares de una p�liza
      y crea un apunte en la Agenda de dichas p�lizas indicando que se ha enviado la carta.
  -Llamar� a la funci�n funci�n PAC_MD_FE_DE_VIDA.F_CONFIRMAR_FE_VIDA.
  Par�metros:
   Entrada :

       1.  pnpoliza : number N�mero de p�liza.
       2.  pncertif : number N�mero de certificado.
       3.  ptlista : sperson de los perceptores que han presentado su fe de vida
   Salida :
     Mensajes T_IAX_MENSAJES

  Retorna : number 0 ok, 1 error
  ********************************************************************************/
   FUNCTION f_confirmar_fe_vida(
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      ptlista IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      numerr         NUMBER := 0;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(4000)
             := ' pnpoliza=' || pnpoliza || ';pncertif=' || pncertif || ';ptlista=' || ptlista;
      vobject        VARCHAR2(200) := 'PAC_IAX_FE_VIDA.F_CONFIRMAR_FE_VIDA';
   BEGIN
      numerr := pac_md_fe_vida.f_confirmar_fe_vida(pnpoliza, pncertif, ptlista, mensajes);
      vpasexec := 2;

      IF numerr <> 0 THEN
         RETURN 1;
      END IF;

      pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 2, 111313);   -- Proceso Correcto.
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
   END f_confirmar_fe_vida;
END pac_iax_fe_vida;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_FE_VIDA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_FE_VIDA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_FE_VIDA" TO "PROGRAMADORESCSI";
