--------------------------------------------------------
--  DDL for Package PAC_IAX_WS_SINIESTROS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_WS_SINIESTROS" AS
/******************************************************************************
   NOMBRE:       pac_iax_ws_siniestros
   PROP�SITO:  Interficie para llamadas de Traspasos de creacion de Siniestros

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        21/12/2009   JGM                1. Creaci�n del package. Bug 10124
******************************************************************************/

   /*************************************************************************
      Funci�n que sirve para aperturar un siniestro con su tramitaci�n y reserva inicial pendiente.
        1.    PSPRODUC: Tipo num�rico. Par�metro de entrada. Identificador del producto
        2.    PSSEGURO: Tipo num�rico. Par�metro de entrada. C�digo de p�liza.
        3.    PNRIESGO: Tipo num�rico. Par�metro de entrada. N�mero de riesgo.
        4.    PCACTIVI: Tipo num�rico. Par�metro de entrada. Identificador de activivad.
        5.    PFSINIES: Tipo Fecha. Par�metro de etnrada. Fecha de siniestro. Desde traspasos se llamar� con la fecha de efecto del traspaso
        6.  PFNOTIFI: Tipo Fecha. Par�metro de entrada. Fecha de notificaci�n del siniestro. Desde traspasos se llamar� con la fecha de aceptaci�n del traspaso.
        7.  PCCAUSIN:Tipo num�rico. Par�metro de entrada. C�digo de causa del siniestro
        8.  PCMOTSIN:  Tipo num�rico. Par�metro de entrada. C�digo de motivo del siniestro
        9.  PTSINIES: Tipo car�cter. Par�metro de entrada.
        10. PTZONAOCU: Tipo car�cter. Par�metro de entrada.
        11. PCGARANT: Tipo num�rico. Par�metro de entrada. Garant�a asignada al traspaso
        12. PITRASPASO: Tipo num�rico. Par�metro de entrada. Importe del traspaso.
        13. MENSAJE: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.
   *************************************************************************/
   FUNCTION f_apertura_siniestro(
      psproduc IN NUMBER,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pcactivi IN NUMBER,
      pfsinies IN DATE,
      pfnotifi IN DATE,
      pccausin IN NUMBER,
      pcmotsin IN NUMBER,
      ptsinies IN VARCHAR2,
      ptzonaocu IN VARCHAR2,
      pcgarant IN NUMBER,
      pitraspaso IN NUMBER,
      pnsinies OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   FUNCTION f_pago_i_cierre_sin(
      pnsinies IN NUMBER,
      xproduc IN NUMBER,
      xcactivi IN NUMBER,
      psidepag IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_iax_ws_siniestros;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_WS_SINIESTROS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_WS_SINIESTROS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_WS_SINIESTROS" TO "PROGRAMADORESCSI";
