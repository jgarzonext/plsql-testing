--------------------------------------------------------
--  DDL for Package PAC_MD_ANULACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_ANULACIONES" AS
/******************************************************************************
   NOMBRE:       PAC_MD_ANULACIONES
   PROP�SITO: Funciones para anular una p�liza

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        19/12/2007  JAS              1. Creaci�n del package.
   1.1        02/03/2009  DCM              2. Modificaciones Bug 8850
   1.2        19/05/2009  JTS              3. 9914: IAX- ANULACI�N DE P�LIZA - Baja inmediata
   4.0        26/02/2009  ICV              4. 0013068: CRE - Grabar el motivo de la anulaci�n al anular la p�liza
   5.0        13/12/2010  ICV              5. 0016775: CRT101 - Baja de p�lizas
   6.0        11/07/2012  APD              6. 0022826: LCOL_T010-Recargo por anulaci�n a corto plazo
   7.0        04/10/2012  APD              7. 0023817: LCOL - Anulaci�n de colectivos
   8.0        10-11-2012  JDS              8. 0023183: LCOL_T020-COA-Circuit d'alta de propostes amb coasseguran
******************************************************************************/

   /***********************************************************************
      Recupera los datos de los recibos de la poliza
      param in psseguro  : c�digo de seguro
      param out mensajes : mensajes de error
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_recibos(psseguro IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /***********************************************************************
      Recupera los datos de los siniestros de la poliza
      param in psseguro  : c�digo de seguro
      param out mensajes : mensajes de error
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_siniestros(psseguro IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /***********************************************************************
      Dado el tipo de anulaci�n (al efecto o al vencimiento) calcula la fecha
      de la anulaci�n de un determinado seguro.
      param in psseguro  : c�digo de seguro
      param in pctipanul : c�digo tipo de anulaci�n
      param out mensajes : mensajes de error
      return             : ref cursor
   ***********************************************************************/
   FUNCTION f_get_fanulac(
      psseguro IN NUMBER,
      pctipanul IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN DATE;

   /***********************************************************************
      Inserta un registro en la tabla AGENSEGU.
      param in psseguro  : c�digo de seguro
      param in pctipanul : c�digo del tipo de anulaci�n
      param in pmotanula : motivo de anulaci�n
      param in pccauanul : causa de anulaci�n
      param out mensajes : mensajes de error
      return             :    0 -> Apunte realizado correctamente
                         : <> 0 -> Error realizando el apunte en agenda
   ***********************************************************************/
   -- Bug 22826 - APD - 11/07/2012 - se a�ade el parametro precextrn y paplica_penali
   FUNCTION f_ins_agensegu(
      psseguro IN NUMBER,
      pctipanul IN NUMBER,
      pmotanula IN VARCHAR2,
      pccauanul IN NUMBER,
      precextrn IN NUMBER,
      paplica_penali IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
      Procesa la anulaci�n de la p�liza al efecte e inmediata VF 553 (1,4)
      param out mensajes : mensajes de error
      param in precextrn : indica si se debe procesar el extorno
      return             : 0 todo ha sido correcto
                           1 ha habido un error
   ***********************************************************************/
   -- Bug 22826 - APD - 11/07/2012 - se a�ade el parametro paplica_penali
   -- se a�ade el parametro pbajacol = 0.Se est� realizando la baja de un certificado normal
   -- 1.Se est� realizando la baja del certificado 0
   FUNCTION f_anulacion_poliza(
      psseguro IN NUMBER,
      precextrn IN NUMBER,
      pfanulac IN DATE,
      pctipanul IN NUMBER,
      panula_rec IN NUMBER,
      precibos IN VARCHAR2,
      pccauanul IN NUMBER,
      paplica_penali IN NUMBER,
      pbajacol IN NUMBER DEFAULT 0,
      mensajes IN OUT t_iax_mensajes,
      pimpextorsion IN NUMBER DEFAULT 0,
      panumasiva IN NUMBER DEFAULT 0)
      RETURN NUMBER;

   /***********************************************************************
      Procesa la anulaci�n de la p�liza a venciment VF 553 (2)
      param out mensajes : mensajes de error
      param in precextrn default 0 : indica si se debe procesar el extorno
      return             : 0 todo ha sido correcto
                           1 ha habido un error
   ***********************************************************************/
   FUNCTION f_anulacion_vto(
      psseguro IN NUMBER,
      pccauanul IN NUMBER,
      precextrn IN NUMBER DEFAULT 0,
      pctipanul IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   --BUG 9914 - JTS - 20/05/2009
   /*************************************************************************
      FUNCTION f_get_reccobrados
      param in psseguro  : Num. seguro
      param in pfanulac  : Fecha de anulacion
      param out pcursor  : sys_refcursor
      param out mensajes : t_iax_mensajes
      return             : 0.- OK, 1.- KO
   *************************************************************************/
   FUNCTION f_get_reccobrados(
      psseguro IN NUMBER,
      pfanulac IN DATE,
      pcursor OUT sys_refcursor,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_get_recpendientes
      param in psseguro  : Num. seguro
      param in pfanulac  : Fecha de anulacion
      param out pcursor  : sys_refcursor
      param out mensajes : t_iax_mensajes
      return             : 0.- OK, 1.- KO
   *************************************************************************/
   FUNCTION f_get_recpendientes(
      psseguro IN NUMBER,
      pfanulac IN DATE,
      pcursor OUT sys_refcursor,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
     Valida si es pot anular la p�lissa a aquella data
     Par�metres entrada:
        psSeguro : Identificador de l'asseguran�a   (obligatori)
        pFAnulac : Data d'anulaci� de la p�lissa    (obligatori)
        pValparcial : Valida parcialmente              (opcional)
                      1 posici� = 0 o 1
                      2 posici� = 1 no valida dies anulaci� (11)
                      3 posici� = 1 ...
    Torna :
        0 si es permet anular la p�lissa, 1 KO
   **************************************************************************/
   FUNCTION f_val_fanulac(
      psseguro IN NUMBER,
      pfanulac IN DATE,
      pvalparcial IN NUMBER DEFAULT 0,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

--Fi BUG 9914 - JTS - 20/05/2009

   --ini BUG10772-22/07/2009-JMF: CRE - Desanul�lar programacions al venciment/propera cartera
   /***********************************************************************
      Comprobar si es posible desanular una p�liza.
      param out mensajes : mensajes de error
      param in seguro
      return             : 0.- no se puede desanular pero si anular
                           1.- se puede desanular
                           n.- error
   ***********************************************************************/
   FUNCTION f_es_desanulable(psseguro IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   --fin BUG10772-22/07/2009-JMF: CRE - Desanul�lar programacions al venciment/propera cartera

   --ini BUG10772-22/07/2009-JMF: CRE - Desanul�lar programacions al venciment/propera cartera
   /***********************************************************************
      Realizar la desanulaci�n de una p�liza.
      param out mensajes : mensajes de error
      param in seguro, fecha anulaci�n, motivo
      return             : 0.- proceso correcto
                           1.- error
   ***********************************************************************/
   FUNCTION f_desanula_poliza_vto(
      psseguro IN NUMBER,
      pfanulac IN DATE,
      pnsuplem IN NUMBER DEFAULT NULL,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

--fin BUG10772-22/07/2009-JMF: CRE - Desanul�lar programacions al venciment/propera cartera

   --Ini Bug.: 16775 - ICV - 30/11/2010
   /***********************************************************************
      Funci�n que realiza una solicitud de Anulaci�n.
      param in psseguro  : c�digo de seguro
      param in pctipanul  : tipo anulaci�n
      param in pnriesgo  : n�mero de riesgo
      param in pfanulac  : fecha anulaci�n
      param in ptobserv  : Observaciones.
      param in pTVALORD  : Descripci�n del motivio.
      param in pcmotmov  : Causa anulacion.
      param out mensajes : mensajes de error
      return             : 0.- proceso correcto
                           1.- error
   ***********************************************************************/
   FUNCTION f_set_solanulac(
      psseguro IN NUMBER,
      pctipanul IN NUMBER,
      pnriesgo IN NUMBER,
      pfanulac IN DATE,
      ptobserv IN VARCHAR2,
      ptvalord IN VARCHAR2,
      pcmotmov IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /***********************************************************************
     Funcion para determinar si se debe mostrar o no el check Anulacion a corto plazo
    1.   psproduc: Identificador del producto (IN)
    2.   pcmotmov: Motivo de movimiento (IN)
    3.   psseguro: Identificador de la poliza (IN)
    4.   pcvisible: Devuelve 0 si no es visible, 1 si si es visible (OUT)
      return             : NUMBER (0 --> OK)
   ***********************************************************************/
   -- Bug 22826 - APD - 12/07/2012- se crea la funcion
   -- Bug 23817 - APD - 04/10/2012 - se a�ade el parametro psseguro
   FUNCTION f_aplica_penali_visible(
      psproduc IN NUMBER,
      pcmotmov IN NUMBER,
      psseguro IN NUMBER,
      pcvisible OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_md_anulaciones;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_ANULACIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_ANULACIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_ANULACIONES" TO "PROGRAMADORESCSI";
