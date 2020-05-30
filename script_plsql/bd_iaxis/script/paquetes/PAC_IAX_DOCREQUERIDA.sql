--------------------------------------------------------
--  DDL for Package PAC_IAX_DOCREQUERIDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_DOCREQUERIDA" AS
   /******************************************************************************
      NOMBRE:       PAC_IAX_DOCREQUERIDA
      PROP�SITO: Funciones relacionadas con la documentaci�n requerida

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  --------  ------------------------------------
      1.0        10/05/2011   JMP      1. Creaci�n del package.
   ******************************************************************************/

   /*************************************************************************
         F_GET_DIRECTORIO
      Obtiene el directorio donde se subir�n los ficheros.
      param out ppath                : directorio
      param out t_iax_mensajes       : mensajes de error
      return                         : 0 todo correcto
                                       1 ha habido un error
   *************************************************************************/
   FUNCTION f_get_directorio(ppath OUT VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   --INI 18351: LCOL003 - Documentaci�n requerida en contrataci�n y suplementos
   /*************************************************************************
    F_AVISO_DOCREQ_PENDIENTE
      Para las empreses que deben retener la emisi�n porque hay documentaci�n requerida
      obligatoaria, devuelve un mensaje de confirmaci�n
      param in  psseguro                : sseguro
      param in  pnmovimi                : Numero de movimiento de la poliza
      param out t_iax_mensajes       : mensajes de error
      return                         : 0 todo correcto
                                       1 aviso
                                       2 error
   ****************************************************************************/
   FUNCTION f_aviso_docreq_pendiente(
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

--FIN 18351: LCOL003 - Documentaci�n requerida en contrataci�n y suplementos

   /*************************************************************************
         f_tienerequerida
      Obtiene 1 si el producto tiene documentaci� requerida
      return                         : 0 no
                                       1 si
   *************************************************************************/
   FUNCTION f_tienerequerida(psproduc IN NUMBER)
      RETURN NUMBER;

    /*************************************************************************
    F_AVISO_DOCREQ_PENDIENTE
      param in  psseguro                : sseguro
      param in  pnmovimi                : Numero de movimiento de la poliza
      param out t_iax_mensajes       : mensajes de error
      return                         : 0 todo correcto
                                       1 Tiene documentacion requerida pendiente
   ****************************************************************************/
   FUNCTION f_docreq_pendiente(
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
    F_GET_DOCUREQUERIDA
      param in  psseguro                : sseguro
      param in  pnmovimi                : Numero de movimiento de la poliza
      param out t_iax_mensajes       : mensajes de error
      return                         : SYS_REFCURSOR
   ****************************************************************************/
   FUNCTION f_get_docurequerida(
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN T_IAX_DOCREQUERIDA;

   /*************************************************************************
      F_GRABARDOCREQUERIDAPOL
      Actualiza y guarda en gedox la documentacion de la poliza.
      param in pseqdocu                : n�mero secuencial de documento
      param in psproduc                : c�digo de producto
      param in psseguro                : n�mero secuencial de seguro
      param in pcactivi                : c�digo de actividad
      param in pnmovimi                : n�mero de movimiento
      param in pnriesgo                : n�mero de riesgo
      param in pninqaval               : n�mero de inquilino/avalista
      param in pcdocume                : c�digo de documento
      param in pctipdoc                : tipo de documento
      param in pcclase                 : clase de documento
      param in pnorden                 : n�mero de orden documento
      param in ptdescrip               : descripci�n del documento
      param in ptfilename              : nombre del fichero
      param in padjuntado              : indicador de fichero adjuntado
      return                           : 0 todo correcto
                                         1 ha habido un error
   *************************************************************************/

   FUNCTION f_grabardocrequeridapol(
      pseqdocu IN NUMBER,
      psproduc IN NUMBER,
      psseguro IN NUMBER,
      pcactivi IN NUMBER,
      pnmovimi IN NUMBER,
      pnriesgo IN NUMBER,
      pninqaval IN NUMBER,
      pcdocume IN NUMBER,
      pctipdoc IN NUMBER,
      pcclase IN NUMBER,
      pnorden IN NUMBER,
      ptdescrip IN VARCHAR2,
      ptfilename IN VARCHAR2,
      padjuntado IN NUMBER,
      pcrecibido IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_iax_docrequerida;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_DOCREQUERIDA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_DOCREQUERIDA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_DOCREQUERIDA" TO "PROGRAMADORESCSI";
