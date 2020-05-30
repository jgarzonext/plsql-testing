--------------------------------------------------------
--  DDL for Package PAC_MD_CFG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_CFG" AS
/******************************************************************************
   NOMBRE:      PAC_MD_CFG
   PROP�SITO:   Funciones para la configuraci�n de pantallas y flujos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        28/01/2007   JAS               1. Creaci�n del package.
   2.0        23/03/2009   DCT               2. Creaci�n funci�n f_get_lst_cfgdoc
   3.0        06/05/2009   DRA               3. 0009981: IAX - Baixar l'empresa a totes les taules del model CFG
   4.0        13/10/2010   XPL               4. 16064: CRT101 - Boton enviar correo avisando de nueva solicitud
   5.0        14/10/2010   XPL/AMC           5. Bug 15743
   6.0        26/10/2010   DRA               6. 0016471: CRT - Configuracion de visibilidad/contratacion de productos a nivel de perfil
   7.0        07/03/2012   JMP               7. 21569: CRE998 - Configurar llen�ador d'Informes per perfil
   8.0        03/08/2019   JMJRR             8.IAXIS-4994: Se modifican parametros de entrada y proceso de obtener informacion usuarios
******************************************************************************/

   /*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
       Autor: Jordi Azor�n (21/11/2007)
       Descripci�n: Recupera la configuraci�n de navegaci�n asociada a un usuario para un flujo determinado.
       Par�metros entrada: - pcuser    -> Usuario
                           - pcempres  -> Empresa
                           - pcmodo    -> Flujo
       Par�metros salida:  - mensajes  -> Mensajes de error
       Retorno:            - vccfgwiz  -> Configuraci�n de navegaci�n asociada al usuario
                             NULL      -> Error
   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
   FUNCTION f_get_user_cfgwiz(
      pcuser IN VARCHAR2,
      pcempres IN NUMBER,   -- BUG9981:DRA:15/05/2009
      pcmodo IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    Autor: Jordi Azor�n (21/11/2007)
    Descripci�n: Recupera la configuraci�n de formulario asociada a un usuario para una pantalla determinada.
    Par�metros entrada: - pcuser    -> Usuario
                        - pcempres  -> Empresa
                        - pcform    -> Pantalla
    Par�metros salida:  - mensajes  -> Mensajes de error
    Retorno:            - vccfgform -> Configuraci�n de pantalla asociada al usuario para la pantalla
                          NULL      -> Error
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
   FUNCTION f_get_user_cfgform(
      pcuser IN VARCHAR2,
      pcempres IN NUMBER,   -- BUG9981:DRA:15/05/2009
      pcform IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    Autor: Jordi Azor�n (04/12/2007)
    Descripci�n: Recupera la configuraci�n (propiedades) de pantalla por defecto de la aplicaci�n.
    Par�metros entrada: -
    Par�metros salida:  - mensajes  -> Mensajes de error
    Retorno:            - refcursor -> Refcursor con la configuraci�n (propiedades de los campos)
                                        por defecto de la aplicaci�n.
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
   FUNCTION f_get_def_form_property(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    Autor: Jordi Azor�n (21/11/2007)
    Descripci�n: Recupera la configuraci�n (propiedades) de pantalla para un modo concreto y producto determinado.
    Par�metros entrada: - pcform    -> Pantalla
                        - pcmodo    -> Modo de la pantalla
                        - pccfgform -> Modo de configuraci�n de la pantalla
                        - psproduc  -> C�digo de producto
                        - pcempres  -> Codigo de la empresa
    Par�metros salida:  - mensajes  -> Mensajes de error
    Retorno:            - refcursor -> Refcursor con la configuraci�n (propiedades de los campos) de la pantalla.
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
   FUNCTION f_get_form_property(
      pcform IN VARCHAR2,
      pcmodo IN VARCHAR2,
      pccfgform IN VARCHAR2,
      psproduc IN NUMBER,
      pcempres IN NUMBER,   -- BUG9981:DRA:05/05/2009
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    Autor: Jordi Azor�n (21/11/2007)
    Descripci�n: Recupera las propiedades de dependencia de una pantalla para un modo concreto y producto determinado.
    Par�metros entrada: - pcform    -> Pantalla
                        - pcmodo    -> Modo de la pantalla
                        - pccfgform -> Modo de configuraci�n de la pantalla
                        - psproduc  -> C�digo de producto
                        - pcempres  -> Codigo de la empresa
    Par�metros salida:  - mensajes  -> Mensajes de error
    Retorno:            - refcursor -> Refcursor con las dependencias entre los valores de los campos de la pantalla.
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
   FUNCTION f_get_dep_form_property(
      pcform IN VARCHAR2,
      pcmodo IN VARCHAR2,
      pccfgform IN VARCHAR2,
      psproduc IN NUMBER,
      pcempres IN NUMBER,   -- BUG9981:DRA:05/05/2009
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    Autor: Jordi Azor�n (21/11/2007)
    Descripci�n: Recupera si una detrrminada pantalla de un flujo debe saltarse o debe ser mostrada.
    Par�metros entrada: - pidcfg    -> Id. del flujo
                        - pcform    -> Formulario
                        - pcempres  -> Codigo de la empresa
    Par�metros salida:  - mensajes  -> mensajes de error
    Retorno:            - 0 / 1     -> saltar o no saltar la pantalla
                          NULL      -> Error
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
   FUNCTION f_skip_form_wizard(
      pcidcfg IN NUMBER,
      pcform IN VARCHAR2,
      pcempres IN NUMBER,   -- BUG9981:DRA:05/05/2009
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    Autor: Jordi Azor�n (21/11/2007)
    Descripci�n: Dado un flujo de navegaci� i una pantalla, retorna la anterior i siguiente pantalla
                que se debe mostrar dentro del flujo.
    Par�metros entrada: - pmodo      ->  Flujo de navegaci�n.
                        - pccfgwiz   ->  Configuraci�n de navegaci�n.
                        - psproduc   ->  C�digo de producto.
                        - pcform     ->  C�digo de la pantalla actual.
                        - pccampo    ->  Campo desde el que se navega.
                        - pcempres  -> Codigo de la empresa
     Par�metros salida: - pcidcfg    ->  Id de configuraci�n de navegaci�n al que pertence la navegaci�n solicitada.
                        - pcform_act ->  Formulario actual.
                        - pcform_sig ->  Siguiente formulario al que se debe navegar desde el formulario actual seg�n la configuraci�n.
                        - pcform_ant ->  Anterior formulario al que se debe navegar desde el formulario actual seg�n la configuraci�n.
                        - pcsituac   ->  Posici�n del formulario actual dentro del flujo (O/M/F -> Origen/Medio/Final).
                        - mensajes   ->  Mensajes de error.
    Retorno:            - NUMBER     ->    0: Valores recuperados correctamente.
                                        <> 0: Error recuperando los datos.
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
   FUNCTION f_get_form_wizard(
      pcmodo IN VARCHAR2,
      pccfgwiz IN VARCHAR2,
      psproduc IN NUMBER,
      pcform IN VARCHAR2,
      pccampo IN VARCHAR2,
      pcempres IN NUMBER,   -- BUG9981:DRA:05/05/2009
      pcidcfg OUT NUMBER,
      pcform_act OUT VARCHAR2,
      pcform_sig OUT VARCHAR2,
      pcform_ant OUT VARCHAR2,
      pcsituac OUT VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    Autor: Jordi Azor�n (21/11/2007)
    Descripci�n: Recupera el flujo de navegaci�n de un modo concreto, para un producto y configuraci�n determinados.
    Par�metros entrada: - pcmodo    -> Flujo de navegaci�n
                        - psproduc  -> C�digo de producto
                        - pccfgwiz  -> Id de la configuraci�n de navegaci�n.
                        - pcempres  -> Codigo de la empresa
    Par�metros salida:  - mensajes  -> Mensajes de error
    Retorno:            - refcursor -> Refcursor con el flujo de navegaci�n solicitado.
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
   FUNCTION f_get_wizard(
      pcmodo IN VARCHAR2,
      psproduc IN NUMBER,
      pccfgwiz IN VARCHAR2,
      pcempres IN NUMBER,   -- BUG9981:DRA:05/05/2009
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /******************************************************************************************
     Autor: CPM (07/11/2008)
     Descripci�n: Recupera la configuraci�n de la navegaci�n.
     Par�metros entrada: -
     Par�metros salida:  - mensajes  -> Mensajes de error
     Retorno:            - refcursor -> Refcursor con la lista de navegaci�n.
   ******************************************************************************************/
   FUNCTION f_get_lst_cfgwizard(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /******************************************************************************************
     Autor: CPM (07/11/2008)
     Descripci�n: Recupera la configuraci�n de la pantalla.
     Par�metros entrada: -
     Par�metros salida:  - mensajes  -> Mensajes de error
     Retorno:            - refcursor -> Refcursor con la lista de pantalla.
   ******************************************************************************************/
   FUNCTION f_get_lst_cfgform(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /******************************************************************************************
     Autor: CPM (07/11/2008)
     Descripci�n: Recupera la configuraci�n de las acciones.
     Par�metros entrada: -
     Par�metros salida:  - mensajes  -> Mensajes de error
     Retorno:            - refcursor -> Refcursor con la lista de acciones.
   ******************************************************************************************/
   FUNCTION f_get_lst_cfgaccion(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /******************************************************************************************
     Autor: CPM (07/11/2008)
     Descripci�n: Recupera la configuraci�n del menu.
     Par�metros entrada: -
     Par�metros salida:  - mensajes  -> Mensajes de error
     Retorno:            - refcursor -> Refcursor con la lista de configuraci�n del menu.
   ******************************************************************************************/
   FUNCTION f_get_lst_rolmenu(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /******************************************************************************************
     Autor: JTS (01/10/2012)
     Descripci�n: Recupera los roles existentes
     Par�metros entrada: -
     Par�metros salida:  - mensajes  -> Mensajes de error
     Retorno:            - refcursor -> Refcursor con la lista de roles
   ******************************************************************************************/
   FUNCTION f_get_lst_cfgrol(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /******************************************************************************************
     Autor: JTS (01/10/2012)
     Descripci�n: Recupera las politicas de subscripcion
     Par�metros entrada: -
     Par�metros salida:  - mensajes  -> Mensajes de error
     Retorno:            - refcursor -> Refcursor con la lista de roles
   ******************************************************************************************/
   FUNCTION f_get_lst_usuagru(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /******************************************************************************************
     Autor: CPM (07/11/2008)
     Descripci�n: Inserta/Update un registro en la tabla CFG_USER.
     Par�metros entrada: - pcusuari -> usuario
                         - pwizard -> configuraci�n de navegaci�n
                         - pform -> configuraci�n de formularios
                         - paccion -> configuraci�n de acciones
                         - pcempres -> empresa
                         - pcfgdoc -> configuraci�n de documentaci�n
     Par�metros salida:  - mensajes  -> Mensajes de error
     return:             devuelve 0 si todo bien, sino el c�digo del error
   ******************************************************************************************/
   FUNCTION f_set_cfg_user(
      pusuario IN VARCHAR2,
      pwizard IN VARCHAR2,
      pform IN VARCHAR2,
      paccion IN VARCHAR2,
      pcempres IN NUMBER,
      pcfgdoc IN VARCHAR2,
      paccprod IN VARCHAR2,   -- BUG16471:DRA:26/10/2010
      pccfgmap IN VARCHAR2,   -- BUG 21569 - 07/03/2012 - JMP
      pcrol IN VARCHAR2,
      pareas IN VARCHAR2,   --IAXIS-4994
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /******************************************************************************************
     Autor: CPM (07/11/2008)
     Descripci�n: Inserta/Update un registro en la tabla CFG_USER.
     Par�metros entrada: - pcusuari -> usuario
                         - pwizard -> configuraci�n de navegaci�n
                         - pform -> configuraci�n de formularios
                         - paccion -> configuraci�n de acciones
                         - pcempres --> Empresa
                         - pcfgdoc --> configuraci�n de documentaci�n
     Par�metros salida:  - mensajes  -> Mensajes de error
     return:             devuelve 0 si todo bien, sino el c�digo del error
   ******************************************************************************************/
   FUNCTION f_set_cfg_userrol(
      pusuario IN VARCHAR2,
      pcempres IN NUMBER,
      pcrol IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /******************************************************************************************
     Autor: CPM (07/11/2008)
     Descripci�n: Inserta/Update un registro en la tabla MENU_USERCODIROL.
     Par�metros entrada: - pcusuari -> usuario
                         - pmenu -> configuraci�n de navegaci�n
     Par�metros salida:  - mensajes  -> Mensajes de error
     return:             devuelve 0 si todo bien, sino el c�digo del error
   ******************************************************************************************/
   FUNCTION f_set_cfg_menu(
      pusuario IN VARCHAR2,
      pmenu IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /******************************************************************************************
     Autor: XVILA (04/12/2008)
     Descripci�: Retorna la llista dels perfils de suplements
     Par�metres entrada: -
     Par�metres sortida: - mensajes  -> Missatges d'error
     Return:             - refcursor -> Refcursor amb els perfils de suplement
   ******************************************************************************************/
   FUNCTION f_get_lst_codsuplem(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /******************************************************************************************
     Autor: XVILA (04/12/2008)
     Descripci�: Fa la crida a la capa de negoci de la mateixa funci� per insertar a la taula PDS_CONFIG_USER
     Par�metres entrada: - pcuser    -> id. usuari
                         - pcconsupl -> id. conf dels suplements
     Par�metres sortida: - mensajes  -> Missatges d'error
     Return:             retorna 0 si va tot b�, sino el codi de l'error
   ******************************************************************************************/
   FUNCTION f_set_pds_configuser(
      pcuser IN VARCHAR2,
      pcconsupl IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /******************************************************************************************
     Autor: JTS (02/10/2012)
     Descripci�: Inserta els valors passats per par�metre a la taula PSU_USUAGRU
     Par�metres entrada: - pcuser    -> id. usuari
                         - pcusuagru -> id. conf
     Par�metres sortida: - mensajes  -> Missatges d'error
     Return:             retorna 0 si va tot b�, sino el codi de l'error
   ******************************************************************************************/
   FUNCTION f_set_psu_usuagru(
      pcuser IN VARCHAR2,
      pcusuagru IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /******************************************************************************************
     Autor: DCT (23/03/2009)
     Descripci�n: Recupera la configuraci�n de la documentaci�n.
     Par�metros entrada: -
     Par�metros salida:  - mensajes  -> Mensajes de error
     Retorno:            - refcursor -> Refcursor con la lista de documentaci�n.
   ******************************************************************************************/
   FUNCTION f_get_lst_cfgdoc(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

     /************************************************************************************************
       Bug 16064: CRT101 - Boton enviar correo avisando de nueva solicitud #XPL#13/10/2010
       Descripci�n: Envia mail segons la taula de configuraci�
       Par�metros entrada: - pcempres --> Empresa
                             pmodo    --> Mode
                             ptevento --> Event del qual s'accedeix
                             psproduc --> Producte
                             psseguro --> Seguro si existia per pantalla
                             pnriesgo --> Risc del seguro
                             pnsinies --> Sinistre
                             pcmotmov --> Motiu moviment
       Par�metros salida:  - mensajes
       Retorno:            - error -> 1 KO, 0 OK
   ************************************************************************************************/
   FUNCTION f_enviar_notificacion(
      pcempres IN NUMBER,
      pmodo IN VARCHAR2,
      ptevento IN VARCHAR2,
      psproduc IN NUMBER,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pnsinies IN NUMBER,
      pcmotmov IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /******************************************************************************************
     Descripci�n: Recupera la lista de informes que se pueden lanzar des de una pantalla
     Param in pcempres :    c�digo de empresa
     Param in pcform :      c�digo de pantalla
     Param in ptevento :    c�digo de evento
     Param in psproduc :    c�digo de producto
     Param out pcurconfigsinf : lista de listados
     Param out mensajes       : Mensajes de error
     Retorno 0 -> Ok
             1 -> Ko

     Bug 15743 - 14/10/2010 - XPL/AMC
   ******************************************************************************************/
   FUNCTION f_get_informes(
      pcempres IN NUMBER,
      pcform IN VARCHAR2,
      ptevento IN VARCHAR2,
      psproduc IN NUMBER,
      pcurconfigsinf OUT sys_refcursor,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /******************************************************************************************
     Descripci�n: Ejecuta los listados que se le indican
     Param in pcempres :    c�digo de empresa
     Param in pcform :      c�digo de pantalla
     Param in ptevento :    c�digo de evento
     Param in psproduc :    c�digo de producto
     Param in pcmap :       listado de maps a ejecutar
     Param in pparans :     Listado de parametros de los maps
     Param out vtimp :      lista de listados generados
     Param out mensajes       : Mensajes de error
     Retorno 0 -> Ok
             1 -> Ko

     Bug 15743 - 14/10/2010 - XPL/AMC
   ******************************************************************************************/
   FUNCTION f_ejecutar_informe(
      pcempres IN NUMBER,
      pcform IN VARCHAR2,
      ptevento IN VARCHAR2,
      psproduc IN NUMBER,
      pcmap IN VARCHAR2,
      pparams IN VARCHAR2,
      vtimp OUT t_iax_impresion,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /******************************************************************************************
     Descripci�n: Ejecuta los listados que se le indican en modo BACTH
     Param in pcempres :    c�digo de empresa
     Param in pcform :      c�digo de pantalla
     Param in ptevento :    c�digo de evento
     Param in psproduc :    c�digo de producto
     Param in pcmap :       listado de maps a ejecutar
     Param in pparans :     Listado de parametros de los maps
     Param in psproces:     Numero de proces
     Param out vtimp :      lista de listados generados
     Param out mensajes       : Mensajes de error
     Retorno 0 -> Ok
             1 -> Ko

     Bug 27699 - 30/07/2013 - RCL
   ******************************************************************************************/
   FUNCTION f_ejecutar_informe_batch(
      pcempres IN NUMBER,
      pcform IN VARCHAR2,
      ptevento IN VARCHAR2,
      psproduc IN NUMBER,
      pcmap IN VARCHAR2,
      pparams IN VARCHAR2,
      psproces IN NUMBER,
      vtimp OUT t_iax_impresion,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   -- BUG16471:DRA:26/10/2010:Inici
   /*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
       Descripci�n: Recupera la configuraci�n de acceso a productos asociada a un usuario
       Par�metros entrada: - pcuser    -> Usuario
                           - pcempres  -> Empresa
       Par�metros salida:  - mensajes  -> Mensajes de error
       Retorno:            - vaccprod  -> Configuraci�n de navegaci�n asociada al usuario
                             NULL      -> Error
   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
   FUNCTION f_get_user_caccprod(
      pcuser IN VARCHAR2,
      pcempres IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2;

   /******************************************************************************************
     Descripci�n: Recupera la configuraci�n del acceso de productos
     Par�metros entrada: -
     Par�metros salida:  - mensajes  -> Mensajes de error
     Retorno:            - refcursor -> Refcursor con la lista de pantalla.
   ******************************************************************************************/
   FUNCTION f_get_lst_caccprod(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

-- BUG16471:DRA:26/10/2010:Fi
   -- BUG 21569 - 07/03/2012 - JMP - Se a�ade la funci�n
   /******************************************************************************************
     Descripci�n: Recupera la configuraci�n de informes.
     Par�metros entrada: -
     Par�metros salida:  - mensajes  -> Mensajes de error
     Retorno:            - refcursor -> Refcursor con la lista de documentaci�n.
   ******************************************************************************************/
   FUNCTION f_get_lst_cfgmap(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

-- FIN BUG 21569 - 07/03/2012 - JMP - Se a�ade la funci�n

   /***********************************************************************
     F_NEW ROL Crea un nuevo rol
     return: devuelve 0 si todo bien, sino el c�digo del error
   ***********************************************************************/
   FUNCTION f_new_rol(
      pcrol IN VARCHAR2,
      ptrol IN VARCHAR2,
      pcidioma IN NUMBER,
      pcempres IN NUMBER,
      pcwizard IN VARCHAR2,
      pcform IN VARCHAR2,
      pcaccion IN VARCHAR2,
      pcmenu IN VARCHAR2,
      pcconsupl IN VARCHAR2,
      pcdocumentacio IN VARCHAR2,
      pcaccprod IN VARCHAR2,
      pcmap IN VARCHAR2,
      pcusuagru IN VARCHAR2,
      pcilimite IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
     F_SET_ROL Updatea un rol
     return: devuelve 0 si todo bien, sino el c�digo del error
   ***********************************************************************/
   FUNCTION f_set_rol(
      pcrol IN VARCHAR2,
      ptrol IN VARCHAR2,
      pcidioma IN NUMBER,
      pcempres IN NUMBER,
      pcwizard IN VARCHAR2,
      pcform IN VARCHAR2,
      pcaccion IN VARCHAR2,
      pcmenu IN VARCHAR2,
      pcconsupl IN VARCHAR2,
      pcdocumentacio IN VARCHAR2,
      pcaccprod IN VARCHAR2,
      pcmap IN VARCHAR2,
      pcusuagru IN VARCHAR2,
      pcilimite IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
  f_get_roles
  return:
***********************************************************************/
   FUNCTION f_get_roles(pcrol IN VARCHAR2, ptrol IN VARCHAR2, mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /***********************************************************************
  f_get_rol
  return:
***********************************************************************/
   FUNCTION f_get_rol(
      pcrol IN VARCHAR2,
      pcempres IN NUMBER,
      ptrol OUT VARCHAR2,
      pcwizard OUT VARCHAR2,
      pcform OUT VARCHAR2,
      pcaccion OUT VARCHAR2,
      pcmenu OUT VARCHAR2,
      pcconsupl OUT VARCHAR2,
      pcdocumentacio OUT VARCHAR2,
      pcaccprod OUT VARCHAR2,
      pcmap OUT VARCHAR2,
      pcusuagru OUT VARCHAR2,
      pcilimite OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_md_cfg;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_CFG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_CFG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_CFG" TO "PROGRAMADORESCSI";
