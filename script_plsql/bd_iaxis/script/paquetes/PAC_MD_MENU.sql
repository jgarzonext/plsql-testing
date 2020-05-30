--------------------------------------------------------
--  DDL for Package PAC_MD_MENU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_MENU" AS
/******************************************************************************
   NOMBRE:      PAC_MD_MENU
   PROP�SITO: Funciones para la gesti�n del men� de la aplicaci�n.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/05/2008   JAS                1. Creaci�n del package.
******************************************************************************/

   /*************************************************************************
      Obtenci�n del men� de la aplicaci�n
      param in pcidioma    : Idioma del men�.
      param out mensajes   : mensajes de error
      return               : Cursor con el men� de la aplicaci�n.
   *************************************************************************/
   FUNCTION f_get_menu(pcidioma IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*************************************************************************
      Obtenci�n d'un link (URL)  FORMS extern
      param in pcform    : Form a buscar
      param in pcempres    : Empresa de la que s'obt� la url form
      param out mensajes   : mensajes de error
      return               : link extern (URL)
   *************************************************************************/
   FUNCTION f_get_urlforms(
      pcform IN VARCHAR2,
      pcempres IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2;

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
      RETURN VARCHAR2;

    /*************************************************************************
      Obtenci�n d'un link (URL)  REPORTS extern
      param in pcreport    : Report a buscar
      param out mensajes   : mensajes de error
      return               : link extern (URL)
   *************************************************************************/
   FUNCTION f_get_urlreports(pcreport IN VARCHAR2, mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2;

   /*************************************************************************
     Obtencion de URL externa
     param in pcform : Nombre de pantalla a abrir
     param out mensajes   : mensajes de error
     return               : Link Externo (URL)
   *************************************************************************/
   FUNCTION f_get_urladf(pcform IN menu_opciones.cinvcod%TYPE, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2;

   /*************************************************************************
      Generacion de token para aplicacion externa
      param out mensajes   : mensajes de error
      return               : token Externo (codigo ALFANUMERICO)
   *************************************************************************/
   FUNCTION f_get_token(mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2;
END pac_md_menu;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_MENU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_MENU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_MENU" TO "PROGRAMADORESCSI";
