--------------------------------------------------------
--  DDL for Package PAC_MD_REEMBOLSOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_REEMBOLSOS" IS
   /******************************************************************************
      NOMBRE:    PAC_MD_REEMBOLSOS
      PROP�SITO: Reemborsaments.

      REVISIONES:
      Ver        Fecha       Autor  Descripci�n
      ---------  ----------  -----  ------------------------------------
      1.0                           Creaci� del package.
      2.0        05/05/2009  SBG    Nous params. a f_set_consultareemb i f_calcacto (Bug 8309)
      3.0        03/07/2009  DRA    3. 0010631: CRE - Modificaci�nes modulo de reembolsos
      4.0        01/07/2009  NMM    4. 10682: CRE - Modificaciones para m�dulo de reembolsos.
      5.0        04/07/2009  DRA    5. 0010704: CRE - Traspaso de facturas para reembolso con mismo N� Hoja CASS
      6.0        21/07/2009  DRA    6. 0010761: CRE - Reembolsos
      7.0        10/03/2010  DRA    7. 0012676: CRE201 - Consulta de reembolsos - Ocultar descripci�n de Acto y otras mejoras
      8.0        22/02/2011  DRA    8. 0017732: CRE998 - Modificacions m�dul reemborsaments
   ******************************************************************************/

   /***********************************************************************
      Rutina que retorna les dades dels reemborsaments que compleixin les
      condicions de cerca
      param in  pnreemb   : codi del reemborsament
      param in  pcestado  : codi estat
      param in  pnpoliza  : n�mero p�lissa
      param in  pncass    : n�mero CASS
      param in  ptnombre  : nom prenedor
      param in  pcoficina : codi agent
      param in out mensajes  : T_IAX_MENSAJES
      return              : ref cursor
   ***********************************************************************/
   FUNCTION f_set_consultareemb(
      pestado IN NUMBER,
      pnreemb IN NUMBER,
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,   -- Mantis 10682.NMM.01/07/2009.
      pncass IN VARCHAR2,
      pnombre IN VARCHAR2,
      pagrsalud IN VARCHAR2,
      poficina IN NUMBER,
      pusuario IN VARCHAR2,
      -- BUG 8309 - 05/05/2009 - SBG - Nou par�metre de cerca PNFACTCLI
      pnfactcli IN VARCHAR2,
      -- FINAL BUG 8309 - 05/05/2009 - SBG
      pfacto IN DATE,   -- BUG12676:DRA:10/03/2010
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;   -- BUG10761:DRA:21/07/2009

   /***********************************************************************
      Rutina que retorna les dades dels reemborsaments que compleixin les
      condicions de cerca
      param in  pnpoliza : n�mero p�lissa
      param in  pncass   : n�mero CASS
      param in  ptnombre : nom prenedor
      param in  psnip    : n�mero snip
      param in out mensajes : T_IAX_MENSAJES
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_set_consulta_activi(
      pnpoliza IN NUMBER,
      pncass IN VARCHAR2,
      ptnombre IN NUMBER,
      psnip IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /***********************************************************************
      Rutina que retorna les dades de les p�lisses amb reembossaments que compleixin les
      condicions de cerca
      param in  pnpoliza : Codi p�lissa
      param in  psperson : Codi persona
      param in out mensajes : T_IAX_MENSAJES
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_set_consulta_poliza(
      pnpoliza IN NUMBER,
      psperson IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /***********************************************************************
      Rutina que retorna les dades dels reemborsaments que compleixin les
      condicions de cerca
      param in  psseguro : n�mero segur
      param in  pnriesgo : codi risc
      param in out mensajes : T_IAX_MENSAJES
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_set_consulta_riesgo(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      psperson IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /***********************************************************************
      Rutina que retorna les dades dels reemborsaments que compleixin les
      condicions de cerca
      param in  psseguro : n�mero segur
      param in  pnriesgo : codi risc
      param in out mensajes : T_IAX_MENSAJES
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_set_consulta_reembriesgo(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /***********************************************************************
      Rutina que d�na d'alta un reembossament
      param in  psseguro    : codi segur
      param in  pnriesgo    : codi risc
      param in  pcgarant    : codi garantia
      param in  pcestado    : codi estat
      param in  ptobserv    : camp observaci�
      param in  pcbancar    : codi banc
      param in  pctipban    : codi tipus bancari
      param in  pcorigen    : codi origen
      param in/out ponreemb : codi del reembossament
      param in/out mensajes : T_IAX_MENSAJES
      return                : 0 tot correcte
                              1 ha hagut un error
   ***********************************************************************/
   FUNCTION f_set_reembolso(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pcgarant IN NUMBER,
      pcestado IN NUMBER,
      ptobserv IN VARCHAR2,
      pcbancar IN VARCHAR2,
      pctipban IN NUMBER,
      pcorigen IN NUMBER,
      ponreemb IN OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
      Rutina que graba los datos de las facturas
      param in pnreemb   : codi segur
      param in pnfactcli : N�mero factura cliente
      param in pncasase  : N�mero CASS titular
      param in pncass    : N�mero CASS asegurado
      param in pfacuse   : Fecha acuse
      param in pffactura : Fecha factura
      param in pimpfact  : Importe factura
      param in porigen   : Origen
      param in pfbaja    : Fecha baja
      param in pctipofac : Tipo factura
      param in pnfact    : Numero factura
      param in pnfactext  : Numero de factura externa
      param in pctractat : Tractada
      param out pnfactnew : Numero factura en alta
      param out mensajes : T_IAX_MENSAJES
      return             : 0 tot correcte
                           1 ha hagut un error
   ***********************************************************************/
   FUNCTION f_set_reembfact(
      pnreemb IN NUMBER,
      pnfactcli IN VARCHAR2,
      pncasase IN VARCHAR2,
      pncass IN VARCHAR2,
      pfacuse IN DATE,
      pffactura IN DATE,
      pimpfact IN NUMBER,
      porigen IN NUMBER,
      pfbaja IN DATE,
      pctipofac IN NUMBER,   -- BUG10704:DRA:14/07/2009
      pnfact IN NUMBER,
      pnfactext IN VARCHAR2,   -- BUG10631:DRA:03/07/2009
      pctractat IN NUMBER,   -- BUG17732:DRA:22/02/2011
      pnfactnew OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
       Rutina que valida y graba la informaci�n del acto
       param in  pnreemb   : codi segur
       param in pnfact     : Numero factura
       param in pcacto     : C�digo de acto
       param in pnacto     : N�meros de acto
       param in pfacto     : Fecha de acto
       param in ppreemb    : Porcentaje
       param in pitot      : Importe total
       param in piextra    : Importe extra
       param in pipago     : Importe pago
       param in piahorro   : Importe ahorro
       param in pfbaja     : Fecha baja
       param in pnlinea    : N�mero l�nea (modificaci�n)
       param in origen     : origen
       param in pctipo      : codigo tipo
       param in pipagocomp  : importe de pago complementario
       param in pftrans     : Fecha de transferencia
       param out pnlineanew : N�mero linea (alta)
       param out ctipomsj   : Tipo mensaje error validaci�n
       param out mensajes  : T_IAX_MENSAJES
       return              : 0 tot correcte
                             1 ha hagut un error
    ***********************************************************************/
   FUNCTION f_set_reembfactact(
      pnreemb IN NUMBER,
      pnfact IN NUMBER,
      pcacto IN VARCHAR2,
      pnacto IN NUMBER,
      pfacto IN DATE,
      pitarcass IN NUMBER,
      picass IN NUMBER,
      ppreemb IN NUMBER,
      pitot IN NUMBER,
      piextra IN NUMBER,
      pipago IN NUMBER,
      piahorro IN NUMBER,
      pfbaja IN DATE,
      pnlinea IN NUMBER,
      porigen IN NUMBER,
      pctipo IN NUMBER,   -- BUG10704:DRA:14/07/2009
      pipagocomp IN NUMBER,   -- BUG10704:DRA:14/07/2009
      pftrans IN DATE,   -- BUG10761:DRA:27/07/2009
      pnlineanew OUT NUMBER,
      ctipomsj OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
      Rutina que neteja la taula TMP_CONTROLSAN
      param in out mensajes : T_IAX_MENSAJES
      return                : 0 tot correcte
                              1 ha hagut un error
   ***********************************************************************/
   FUNCTION f_neteja_errors(mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
      Rutina que retorna les dades d'un reembossament
      param in  pnreeemb    : Codi reembossament
      param in/out mensajes : T_IAX_MENSAJES
      return                : objecte reembossaments
   ***********************************************************************/
   FUNCTION f_get_datos_reemb(
      pnreemb IN reembolsos.nreemb%TYPE,
      mensajes IN OUT t_iax_mensajes)
      RETURN ob_iax_reembolsos;

   /***********************************************************************
      Rutina que Recupera la descripci�n de la p�liza producto y garant�a
      param in  psseguro    : Codi seguro
      param in  pcgarant    : Codi garantia
      param in/out mensajes : T_IAX_MENSAJES
      return varchar2       : Descripci�n de la p�liza
   ***********************************************************************/
   FUNCTION f_get_tproducto(
      psseguro IN reembolsos.sseguro%TYPE,
      pcgarant IN reembolsos.cgarant%TYPE,
      mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2;

   /***********************************************************************
      Rutina que retorna les factures associades a un reembossament
      param in  pnreeemb    : Codi reembossament
      param in  pnfact      : N�mero factura
      param in/out mensajes : T_IAX_MENSAJES
      return                : objecte factura
   ***********************************************************************/
   FUNCTION f_get_datos_reembfact(
      pnreemb IN reembactosfac.nreemb%TYPE,
      pnfact IN reembactosfac.nfact%TYPE,
      mensajes IN OUT t_iax_mensajes)
      RETURN ob_iax_reembfact;

   /***********************************************************************
      Rutina que retorna els actes associats a un reembossament
      param in  pnreeemb    : Codi reembossament
      param in  pnfact      : N�mero factura
      param in  pnlinea     : N�mero l�nia
      param in/out mensajes : T_IAX_MENSAJES
      return                : objecte acte
   ***********************************************************************/
   FUNCTION f_get_datos_reembactfact(
      pnreemb IN reembactosfac.nreemb%TYPE,
      pnfact IN reembactosfac.nfact%TYPE,
      pnlinea IN reembactosfac.nlinea%TYPE,
      mensajes IN OUT t_iax_mensajes)
      RETURN ob_iax_reembactfact;

   /***********************************************************************
       Rutina que retorna les garanties possibles d'un reembossament
       param in  psseguro  : codi del segur
       param in  pnriesgo  : codi del risc
       param in  pfreembo  : data reembossament
       param out mensajes  : T_IAX_MENSAJES
       return              : ref cursor
    ***********************************************************************/
   FUNCTION f_get_garanreemb(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfreembo IN DATE,
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /***********************************************************************
      Rutina que retorna los tipos de centro de factura
      param in out mensajes : T_IAX_MENSAJES
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_lsttipofact(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /***********************************************************************
      Rutina que retorna exclusivamente les dades d'un reembossament
      param in  pnreeemb    : Codi reembossament
      param in out mensajes : T_IAX_MENSAJES
      return                : objecte reembossaments
   ***********************************************************************/
   FUNCTION f_get_datreemb(pnreemb IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN ob_iax_reembolsos;

   /***********************************************************************
      Rutina que retorna la lista de actos
      param in out mensajes : T_IAX_MENSAJES
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_lstactos(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

    /***********************************************************************
      Rutina que devuelve los valores por defecto del acto
      param in  pnreemb      : C�digo reembolso
      param in  pcacto       : C�digo acto
      param in  pfacto       : Fecha de acto
      param out oiextra      : Importe Extra
      param out oitotal      : Importe total
      param out mensajes     : T_IAX_MENSAJES
      return                 : 0 tot correcte
                               1 ha hagut un error
   ***********************************************************************/
   FUNCTION f_get_importacto(
      pnreemb IN NUMBER,
      pcacto IN VARCHAR2,
      pfacto IN DATE,
      oitarcass OUT NUMBER,
      oicass OUT NUMBER,
      opreemb OUT NUMBER,
      oiextra OUT NUMBER,
      onacto OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
      Rutina que retorna las agrupaciones de producto AGR_SALUD
      param in out mensajes : T_IAX_MENSAJES
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_lstagrsalud(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /***********************************************************************
      Rutina que calcula los importes del acto
      param in  pnrremb      : n�mero reembossament
      param in  pcacto       : C�digo acto
      param in  pfacto       : Fecha de acto
      param in  pnactos      : N�mero de actos
      param in  pitarcass    : Importe tarifa CASS
      param in  picass       : Importe cass
      param in  pipago       : Importe pago
      param in  pporcent     : Porcentaje pago
      param out oicass       : Importe CASS
      param out oipago       : Importe pago
      param out oitot        : Importe total
      param in out mensajes  : T_IAX_MENSAJES
      return                 : 0 tot correcte
                               1 ha hagut un error
   ***********************************************************************/
   -- BUG 8309 - 05/05/2009 - SBG - Incorporaci� par�ms. PPORCENT i PITARCASS
   FUNCTION f_calcacto(
      pnreemb IN NUMBER,
      pcacto IN VARCHAR2,
      pfacto IN DATE,
      pnactos IN NUMBER,
      pitarcass IN NUMBER,
      picass IN NUMBER,
      pipago IN NUMBER,
      pporcent IN NUMBER,
      oicass OUT NUMBER,   -- BUG10761:DRA:22/07/2009
      oipago OUT NUMBER,
      oitot OUT NUMBER,
      oitarcass OUT NUMBER,
      oiextra OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Devuelve los asegurados de las p�lizas que cumplan con el criterio de selecci�n
      param in psproduc     : c�digo de producto
      param in pnpoliza     : n�mero de p�liza
      param in pncert       : n�mero de cerificado por defecto 0
      param in pnnumide     : n�mero identidad persona
      param in psnip        : n�mero identificador externo
      param in pbuscar      : nombre+apellidos a buscar de la persona
      param in ptipopersona : tipo de persona
                               1 tomador
                               2 asegurado
      param out mensajes    : mensajes de error
      return                : ref cursor
   *************************************************************************/
   FUNCTION f_consultapolizaasegurados(
      psproduc IN NUMBER,
      pnpoliza IN NUMBER,
      pncert IN NUMBER DEFAULT -1,
      pnnumide IN VARCHAR2,
      psnip IN VARCHAR2,
      pbuscar IN VARCHAR2,
      ptipopersona IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /***********************************************************************
      Rutina que retorna les dades d'un reembossament
      param in  psseguro    : Codi asseguran�a
      param in pnriesgo     : Codi del risc
      param in/out mensajes : T_IAX_MENSAJES
      return                : objecte reembossaments
   ***********************************************************************/
   FUNCTION f_inicializa_reemb(
      psseguro IN reembolsos.sseguro%TYPE,
      pnriesgo IN reembolsos.nriesgo%TYPE,
      mensajes IN OUT t_iax_mensajes)
      RETURN ob_iax_reembolsos;

   /***********************************************************************
      Rutina que retorna les dades inicialitzaci� d'una factura
      param in  pnreemb    : Codi reembossament
      param in/out mensajes : T_IAX_MENSAJES
      return                : objecte factures de reembossaments
   ***********************************************************************/
   FUNCTION f_inicializa_reembfact(
      pnreemb IN reembolsos.nreemb%TYPE,
      mensajes IN OUT t_iax_mensajes)
      RETURN ob_iax_reembfact;

   /***********************************************************************
      Rutina que Devuelve el tipo de perfil para el usuario conectado a la aplicaci�n
      param in/out mensajes : T_IAX_MENSAJES
      return                : 1 gesti�n compa�ia
                              0 gesti�n oficina
   ***********************************************************************/
   FUNCTION f_isperfilcompany(mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
      Valida los reembolsos de una compa�ia
      param in ptipo,
      param in psseguro,
      param in pnriesgo,
      param in pcgarant,
      param in psperson,
      param in pagr_salud,
      param in pcacto,
      param in pnacto,
      param in pfacto,
      param in piimporte,
      param in pnreemb,
      param in pnfact,
      param in pnlinea,
      param in psmancont,
      param in pftrans,
      param out mensajes : T_IAX_MENSAJES
      return             : 0 - correcto
                n�mero error - incorrecto
   ***********************************************************************/
   FUNCTION f_valida_reemb(
      ptipo IN NUMBER,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pcgarant IN NUMBER,
      psperson IN NUMBER,
      pagr_salud IN NUMBER,
      pcacto IN VARCHAR2,
      pnacto IN NUMBER,
      pfacto IN DATE,
      piimporte IN NUMBER,
      pnreemb IN NUMBER,
      pnfact IN NUMBER,
      pnlinea IN NUMBER,
      psmancont IN NUMBER,
      pftrans IN DATE,   -- BUG10761:DRA:27/07/2009
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   -- BUG10704:DRA:15/07/2009:Inici
   /***********************************************************************
      Funci�n que actualizar� el estado de impresi�n de la factura
      param in  pnreemb   : codi del reembossament
      param in  pnfact    : N�mero de factura
      return              : 0 OK     1 ERROR
   ***********************************************************************/
   FUNCTION f_act_factura(pnreemb IN NUMBER, pnfact IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
      Funci�n que har� el traspaso de una factura a un reembolso ya existente
      param in  pnreemb   : codi del reembossament
      param in  pnfact    : N�mero de factura
      param in  pnfactcli : N�mero factura cliente
      param in  pnreembori: reembolso al cual tenemos que traspasar la factura
      return              : 0 OK     1 ERROR
   ***********************************************************************/
   FUNCTION f_traspasar_factura(
      pnreemb IN NUMBER,
      pnfact IN NUMBER,
      pnfactcli IN VARCHAR2,
      pnreembori IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
      Funci�n que nos dir� si se puede o no modificar la factura
      param in  pnreemb   : codi del reembossament
      param in  pnfact    : N�mero de factura
      return              : 0 OK     1 ERROR
   ***********************************************************************/
   FUNCTION f_modif_factura(
      pnreemb IN NUMBER,
      pnfact IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
      Funci�n para detectar si el n� hoja CASS ya existe
      param in pnreemb    : codi del reembossament
      param in  pnfactcli : codi factura client
      param out pnreembdest  : codi del reembossament
      return              : 0 OK     1 ERROR
   ***********************************************************************/
   FUNCTION f_existe_factcli(
      pnreemb IN NUMBER,
      pnfactcli IN VARCHAR2,
      pnreembdest OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
      Rutina que retorna los tipos de actos
      param in out mensajes : T_IAX_MENSAJES
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_lsttipoactos(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   -- BUG10704:DRA:15/07/2009:Fi

   /***********************************************************************
      Rutina que calcula el importe complementario
      param in  pitot        : Importe total
      param in  pipago       : Importe pago
      param in  picass       : Importe cass
      param out oipagocomp   : Importe pago complementario
      param out mensajes     : T_IAX_MENSAJES
      return                 : 0 tot correcte
                               1 ha hagut un error
   ***********************************************************************/
   -- BUG10761:DRA:22/07/2009:Inici
   FUNCTION f_calcomplementario(
      pitot IN NUMBER,
      pipago IN NUMBER,
      picass IN NUMBER,
      oipagocomp OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
      Funci�n para detectar si la factura es Ordinaria o Complementaria
      param in pnreemb    : codi del reembossament
      param in  pnfact    : codi factura
      return              : 0 OK     1 ERROR
   ***********************************************************************/
   FUNCTION f_tipo_factura(pnreemb IN NUMBER, pnfact IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

-- BUG10761:DRA:22/07/2009:Fi
-- BUG10949:JGM:19/08/2009:Fi
   /***********************************************************************
      Funci�n para detectar si la factura tiene fecha de baja y cual
      param in pnreemb    : codi del reembossament
      param in  pnfact    : codi factura
      fbaja out  date    : data baixa
      return              : 0 OK     1 ERROR
   ***********************************************************************/
   FUNCTION f_get_data_baixa(
      pnreemb IN NUMBER,
      pnfact IN NUMBER,
      pfbaja OUT DATE,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   -- BUG10949:JGM:19/08/2009:Fi

   -- BUG17732:DRA:22/02/2011:Inici
   /***********************************************************************
      Funci�n para modificar la CCC del reembolso
      param in pnreemb    : codi del reembossament
      param in pcheck     : codi factura
      return              : 0 OK     1 ERROR
   ***********************************************************************/
   FUNCTION f_modificar_ccc(
      pnreemb IN NUMBER,
      pcheck IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;
-- BUG17732:DRA:22/02/2011:Fi
END pac_md_reembolsos;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_REEMBOLSOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_REEMBOLSOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_REEMBOLSOS" TO "PROGRAMADORESCSI";
