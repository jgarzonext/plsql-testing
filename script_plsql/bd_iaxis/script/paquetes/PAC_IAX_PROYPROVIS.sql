--------------------------------------------------------
--  DDL for Package PAC_IAX_PROYPROVIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_PROYPROVIS" AS
   /*************************************************************************
          Function f_calculo_proyprovis
          funcion que calcula la proyecci�n de la reserva para una p�liza/certificado y garant�a a una fecha
          ptablas in number: C�digo idioma
          psseguro: sseguro
          RETURN varchar2 lista de sperson que desempe�a el Rol Persona indicado
     *************************************************************************/
   FUNCTION f_calculo_proyprovis(
      psproces IN NUMBER,
      pperiodicidad IN NUMBER,
      pnmes IN NUMBER,
      pnayo IN NUMBER,
      psproduc IN NUMBER DEFAULT NULL,
      pnpoliza IN NUMBER DEFAULT NULL,
      pncertif IN NUMBER DEFAULT NULL,
      pmodo IN VARCHAR2 DEFAULT 'R',
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   FUNCTION f_inicializa_proceso(
      pmes IN NUMBER,
      panyo IN NUMBER,
      pcempres IN NUMBER,
      pfinicio IN DATE,
      pnproceso OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   ---- Juan Carlos Pacheco

   /*******************************************************************************
                                                                                                                                                                                                                                                   FUNCION F_INICIALIZA_CARTERA
    Esta funci�n devuelve la consulta d ela tabla  PROY_PARAMETROS_MTO_POS
   Par�metros
    Entrada :
       psproduc  DATE     : Fecha

    Salida :
       pslstpry  SYSREFCURSOR  : Cursor consulta.

   *********************************************************************************/
   FUNCTION f_consul_param_mto_pos(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;
END pac_iax_proyprovis;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_PROYPROVIS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_PROYPROVIS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_PROYPROVIS" TO "PROGRAMADORESCSI";
